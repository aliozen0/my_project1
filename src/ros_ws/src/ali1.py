import cv2
import numpy as np
from sklearn.linear_model import LinearRegression
import math

vidcap = cv2.VideoCapture("kapalihava2.mp4")
success, image = vidcap.read()

def nothing(x):
    pass

# Gamma düzeltme
def adjust_gamma(image, gamma=1.0):
    invGamma = 1.0 / gamma
    table = np.array([((i / 255.0) ** invGamma) * 255 for i in np.arange(0, 256)]).astype("uint8")
    return cv2.LUT(image, table)

while success:
    success, image = vidcap.read()
    if not success:
        break

    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    mean_val = np.mean(hsv[:,:,2])
    print(mean_val)
    if 120 > mean_val > 100:
        gamma = ((60 / mean_val) * 1.2)
    elif mean_val > 120:
        gamma = ((50 / mean_val) * 1.2)
    else:
        gamma = ((110 / mean_val) * 1.2)
    image = adjust_gamma(image, gamma=gamma)
    
    # CLAHE (Contrast Limited Adaptive Histogram Equalization) uygulama
    clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
    lab = cv2.cvtColor(image, cv2.COLOR_BGR2LAB)
    l, a, b = cv2.split(lab)
    cl = clahe.apply(l)
    limg = cv2.merge((cl, a, b))
    image = cv2.cvtColor(limg, cv2.COLOR_LAB2BGR)

    frame = cv2.GaussianBlur(image, (5, 5), 0)
    
    ## Choosing points for perspective transformation
    tl = (505, 433)
    bl = (265, 580)
    tr = (820, 433)
    br = (1140, 580)
    
    cv2.circle(frame, tl, 5, (0, 0, 255), -1)
    cv2.circle(frame, bl, 5, (0, 0, 255), -1)
    cv2.circle(frame, tr, 5, (0, 0, 255), -1)
    cv2.circle(frame, br, 5, (0, 0, 255), -1)

    ## Applying perspective transformation
    pts1 = np.float32([tl, bl, tr, br]) 
    pts2 = np.float32([[0, 0], [0, 480], [640, 0], [640, 480]]) 
    
    # Matrix to warp the image for birdseye view
    matrix = cv2.getPerspectiveTransform(pts1, pts2) 
    transformed_frame = cv2.warpPerspective(frame, matrix, (640, 480))

    ### Object Detection
    # Image Thresholding
    hsv_transformed_frame = cv2.cvtColor(transformed_frame, cv2.COLOR_BGR2HSV)
    
    l_h = 0
    l_s = 0
    l_v = 100
    u_h = 150
    u_s = 255
    u_v = 255
    
    lower = np.array([l_h, l_s, l_v])
    upper = np.array([u_h, u_s, u_v])
    mask = cv2.inRange(hsv_transformed_frame, lower, upper)

    # Histogram
    histogram = np.sum(mask[mask.shape[0]//2:, :], axis=0)
    midpoint = int(histogram.shape[0]/2)
    right_base = np.argmax(histogram[midpoint:]) + midpoint

    # Sliding Window
    y = 472
    rx = []
    msk = mask.copy()
    detected_points = []
    while y > 0:
        ## Right threshold
        img = mask[y-40:y, right_base-50:right_base+50]
        contours, _ = cv2.findContours(img, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
        for contour in contours:
            if cv2.contourArea(contour) < 50:
                continue
            M = cv2.moments(contour)
            if M["m00"] != 0:
                cx = int(M["m10"]/M["m00"])
                rx.append(right_base-50 + cx)
                right_base = right_base-50 + cx

        
        cv2.rectangle(msk, (right_base-50, y), (right_base+50, y-40), (255, 255, 255), 2)
        
        if len(rx) >= 1:
            pixel_value = rx[-1] - 250
            if pixel_value > 0:
                # print("Pixel value 100 pixels from the right edge on the right side:", pixel_value)
                
                # Convert back to original perspective
                points = np.array([[[pixel_value, y]]], dtype="float32")
                original_points = cv2.perspectiveTransform(points, np.linalg.inv(matrix))
                original_point = tuple(map(int, original_points[0][0]))
                
                # Annotate on the original frame
                transfom_point = tuple(map(int, points[0][0]))
                cv2.circle(transformed_frame, transfom_point, 5,(0,255,255), -1)
                cv2.circle(frame, original_point, 5, (0, 255, 255), -1)

                
                detected_points.append(transfom_point)
        
        y -= 40

    # Convert the points to a numpy array
    detected_points = np.array(detected_points)

    # Fit a line through the points if there are any detected points
    if detected_points.shape[0] > 1:
        X = detected_points[:, 0].reshape(-1, 1)  # X coordinates
        y = detected_points[:, 1]  # Y coordinates

        model = LinearRegression().fit(X, y)

        # Calculate the start and end points of the line
        start_x = min(X)[0]
        end_x = max(X)[0]
        start_y = model.predict([[start_x]])[0]
        end_y = model.predict([[end_x]])[0]

        start_point = (int(start_x), int(start_y))
        end_point = (int(end_x), int(end_y))

        # Draw the line on the frame
        cv2.line(transformed_frame, start_point, end_point, (255, 0, 0), 2)

        center_x = transformed_frame.shape[1] // 2
        path_center_x = (start_x + end_x) // 2

        deviation = center_x - path_center_x
        direction = "Right" if deviation < 0 else "Left"
        deviation = abs(deviation)

        print(f"Deviation: {deviation:.2f} pixels, Direction: {direction}")

        # Draw center line on transformed_frame
        cv2.line(transformed_frame, (center_x, 0), (center_x, transformed_frame.shape[0]), (0, 255, 0), 2)
        
        # Calculate the angle in degrees relative to the vertical axis
        angle = math.degrees(math.atan(model.coef_[0]))

        # Adjust angle calculation based on the new criteria
        if 90 - abs(angle) < 10:  # 10 degrees tolerance
            direction = "Straight"
            angle = 0
        elif 90 - angle > 100:
            direction = "Right"
            angle = 90 - abs(angle)
        else:
            direction = "Left"
            angle = 90 - abs(angle)

        print(f"Angle: {angle:.2f} degrees, Direction: {direction}")

    cv2.imshow("Original", frame)
    cv2.imshow("Bird's Eye", transformed_frame)
    cv2.imshow("Lane Detection - Sliding Windows", msk)

    if cv2.waitKey(10) == 27:
        break

cv2.destroyAllWindows()
vidcap.release()


# import cv2
# import numpy as np

# vidcap = cv2.VideoCapture("veri.mp4")
# success, image = vidcap.read()

# def nothing(x):
#     pass

# # Başlangıçta kullanılacak l_v değeri
# l_v = 100

# # Hedef parlaklık seviyesi (örneğin, ortalama parlaklık seviyesi)
# target_brightness = 80

# # Başlangıç adım büyüklüğü
# initial_step_size = 20

# while success:
#     success, image = vidcap.read()
#     if not success:
#         break

#     frame = cv2.GaussianBlur(image, (5, 5), 0)
    
#     ## Choosing points for perspective transformation
#     tl = (505, 433)
#     bl = (265, 580)
#     tr = (820, 433)
#     br = (1140, 580)
    
#     cv2.circle(frame, tl, 5, (0, 0, 255), -1)
#     cv2.circle(frame, bl, 5, (0, 0, 255), -1)
#     cv2.circle(frame, tr, 5, (0, 0, 255), -1)
#     cv2.circle(frame, br, 5, (0, 0, 255), -1)

#     ## Applying perspective transformation
#     pts1 = np.float32([tl, bl, tr, br]) 
#     pts2 = np.float32([[0, 0], [0, 480], [640, 0], [640, 480]]) 
    
#     # Matrix to warp the image for birdseye view
#     matrix = cv2.getPerspectiveTransform(pts1, pts2) 
#     transformed_frame = cv2.warpPerspective(frame, matrix, (640, 480))

#     ### Object Detection
#     # Image Thresholding
#     hsv_transformed_frame = cv2.cvtColor(transformed_frame, cv2.COLOR_BGR2HSV)
    
#     # Calculate brightness using numpy
#     brightness = np.mean(hsv_transformed_frame[:, :, 2])  # Using mean of the V channel
#     print(brightness)
#     # Calculate brightness difference
#     brightness_diff = brightness - target_brightness
    
#     # Determine step size based on brightness difference
#     if abs(brightness_diff) > initial_step_size:
#         step_size = initial_step_size if brightness_diff > 0 else -initial_step_size
#     else:
#         step_size = brightness_diff
    
#     # Update l_v value
#     l_v += step_size
    
#     # Sınır değerlerini ayarla (0 ile 255 arasında)
#     l_v = np.clip(l_v, 0, 255)
    
#     l_h = 0
#     l_s = 0
#     u_h = 180
#     u_s = 255
#     u_v = 255
    
#     lower = np.array([l_h, l_s, l_v])
#     upper = np.array([u_h, u_s, u_v])
#     mask = cv2.inRange(hsv_transformed_frame, lower, upper)

#     # Histogram
#     histogram = np.sum(mask[mask.shape[0]//2:, :], axis=0)
#     midpoint = int(histogram.shape[0]/2)
#     right_base = np.argmax(histogram[midpoint:]) + midpoint

#     # Sliding Window
#     y = 472
#     rx = []
#     msk = mask.copy()

#     while y > 0:
#         ## Right threshold
#         img = mask[y-40:y, right_base-50:right_base+50]
#         contours, _ = cv2.findContours(img, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
#         for contour in contours:
#             M = cv2.moments(contour)
#             if M["m00"] != 0:
#                 cx = int(M["m10"]/M["m00"])
#                 rx.append(right_base-50 + cx)
#                 right_base = right_base-50 + cx

        
#         cv2.rectangle(msk, (right_base-50, y), (right_base+50, y-40), (255, 255, 255), 2)
        
#         if len(rx) >= 1:
#             pixel_value = rx[-1] - 250
#             if pixel_value > 0:
#                 print("Pixel value 100 pixels from the right edge on the right side:", pixel_value)
                
#                 # Convert back to original perspective
#                 points = np.array([[[pixel_value, y]]], dtype="float32")
#                 original_points = cv2.perspectiveTransform(points, np.linalg.inv(matrix))
#                 original_point = tuple(map(int, original_points[0][0]))
                
#                 # Annotate on the original frame
#                 transfom_point = tuple(map(int, points[0][0]))
#                 cv2.circle(transformed_frame, transfom_point, 5,(0,255,255), -1)
#                 cv2.circle(frame, original_point, 5, (0, 255, 255), -1)
        
#         y -= 40

#     cv2.imshow("Original", frame)
#     cv2.imshow("Bird's Eye", transformed_frame)
#     cv2.imshow("Lane Detection - Sliding Windows", msk)

#     if cv2.waitKey(10) == 27:
#         break

# cv2.destroyAllWindows()
# vidcap.release()
