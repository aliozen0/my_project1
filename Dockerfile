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
