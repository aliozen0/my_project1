# Docker Image Oluşturma ve Çalıştırma

Bu belge, yeni kodlar ve bağımlılıklarla güncellenmiş bir Docker image oluşturma ve bu image'ı otonom araçta çalıştırma adımlarını detaylandırmaktadır. Bu adımlar, kişisel bilgisayarınızda ve otonom aracın bilgisayarında yapılacak işlemleri içermektedir.

## Gereksinimler

- Kişisel Bilgisayar
- Otonom Aracın Bilgisayarı
- Docker yüklü olmalı
- FileZilla veya SCP gibi bir dosya transfer aracı

## Proje Dizin Yapısı

Proje dosyalarınızı aşağıdaki gibi organize edin:

```plaintext
my_project/
│
├── Dockerfile
├── requirements.txt
└── src/
    ├── my_ros_package/
    │   ├── CMakeLists.txt
    │   ├── package.xml
    │   └── src/
    │       └── my_ros_node.py
    └── another_ros_package/
        ├── CMakeLists.txt
        ├── package.xml
        └── src/
            └── another_node.py
```

## Adımlar

### 1. Docker Image Oluşturma (Kişisel Bilgisayar)

1. **Dockerfile ve Proje Dosyalarınızı Hazırlayın:**
    - Dockerfile ve proje dosyalarınızın güncel olduğundan emin olun.
  
2. **Güncellenmiş Dockerfile:**

    ```Dockerfile
    # Base image olarak Ubuntu'yu kullanıyoruz
    FROM ubuntu:20.04

    # Çevresel değişkenleri ayarlıyoruz
    ENV DEBIAN_FRONTEND=noninteractive

    # Paket güncellemeleri ve gerekli araçları yüklüyoruz
    RUN apt-get update && apt-get install -y \
        tzdata \
        curl \
        gnupg2 \
        lsb-release \
        nano \
        dos2unix \
        libmuparser-dev \
        && ln -fs /usr/share/zoneinfo/Europe/Istanbul /etc/localtime \
        && dpkg-reconfigure --frontend noninteractive tzdata

    # ROS Noetic kaynaklarını ekliyoruz
    RUN curl -sSL http://packages.ros.org/ros.key | apt-key add -
    RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list

    # Paket güncellemeleri ve gerekli araçları yüklüyoruz
    RUN apt-get update && apt-get install -y \
        ros-noetic-desktop-full \
        python3-pip \
        && rm -rf /var/lib/apt/lists/*

    # ROS çevresel değişkenlerini ayarlıyoruz
    RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

    # Çalışma dizinini oluşturuyoruz
    WORKDIR /root/catkin_ws

    # Proje dosyalarını kopyalıyoruz
    COPY ./src /root/catkin_ws/src

    # Gereksinim dosyasını kopyalıyoruz ve bağımlılıkları yüklüyoruz
    COPY requirements.txt requirements.txt

    # Yalnızca pip ile yüklenebilir bağımlılıkları yüklüyoruz
    RUN pip3 install numpy opencv-python

    # ROS workspace oluşturma ve bağımlılıkları yükleme
    RUN /bin/bash -c "source /opt/ros/noetic/setup.bash && \
        cd /root/catkin_ws && \
        catkin_make"

    # Başlangıç komutu
    CMD ["bash"]
    ```

3. **Terminalde Dockerfile'ın Bulunduğu Dizine Gidin ve Yeni Docker Image'ınızı Oluşturun:**

    ```bash
    sudo docker build -t huma .
    ```

4. **Docker Image'ınızı Bir Tar Dosyasına Kaydedin:**

    ```bash
    sudo docker save -o huma.tar huma
    ```

### 2. Docker Image'ı Otonom Aracın Bilgisayarına Aktarma

1. **FileZilla veya SCP Kullanarak `huma.tar` Dosyasını Otonom Aracın Bilgisayarına Aktarın:**

Herhangi bir konuma dosyayı aktarın. Dosay buyuk boyutlu olacagından yavas aktarım olabılır aktarım bıtene kadar bekleyın
### 3. Yeni Docker Container Oluşturma ve Çalıştırma (Otonom Aracın Bilgisayarı)

1. **Otonom Aracın Bilgisayarında Terminalde Docker Image'ınızı Yükleyin:**

    ```bash
    sudo docker load -i /path/to/huma.tar
    ```


3. **Yeni Docker Container'ı Çalıştırın:**
1. **ROS Master'ı Başlatın:**

    Otonom arç bilgisayarında roscore baslatın. Roscore nın URI sını kopyalayın
    ```bash
    roscore
    ```


    **ROS1 İçin:** ROS URI sını gerekli yere yapıstırın
    ```bash
    sudo docker container run -it --network host --env ROS_MASTER_URI=http://192.168.10.100:11311 --name ros_robotaxi huma
    ```
    ros_robotaxi docker conterının ismi olacaktır. huma ise tar dosaysının ismi oldugu ıcındır
  --------------- 
  dockerın içinde yeni terminal acmak için asagıdakı komutu kullanbılırısnız 

  ros_robotaxi contarian adıdır 
  ```bash
    sudo docker exec -it ros_robotaxi bash
  ```
    
### 4. Düğümleri Çalıştırma


2. **Başka Bir Terminalde ROS Düğümlerinizi Çalıştırın:**
Otonom aracın kendı bilgisayrında komutları calıstırın bu sayaede arac topic vermis olacaktır.

    ```bash
    roslaunch smart_can_stuff start_can....launch
    rosrun smart_can_stuff beemobs.py
    ```

Bu adımları takip ederek, yeni kodlarınızı ve bağımlılıkları içeren Docker image'ınızı oluşturabilir ve otonom araçta çalıştırabilirsiniz.


### 4. EK BİLGİLER

Çalışan Docker konteynerlerini görmek için aşağıdaki komutu terminalde çalıştırabilirsiniz:

```bash
docker ps
```
Bu komut, çalışan tüm Docker konteynerlerinin bir listesini görüntüler. Eğer tüm konteynerleri (çalışmayanlar dahil) görmek isterseniz, şu komutu kullanabilirsiniz:

```bash
docker ps -a
```

Eski Docker container'ı durdurun ve kaldırın:
ros_robotaci container adıdır. Adını unuttuysanız id ile de işlem olmaktadır. id yi bulmak içinde docker ps -a ile tüm bilgiler erişenilrisniz.
```bash
sudo docker stop ros_robotaxi
sudo docker rm ros_robotaxi
```

