#/bin/sh
sudo apt install \
libssl1.1 \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-libav \
libgstreamer-plugins-base1.0-dev \
libgstrtspserver-1.0-0 \
libjansson4 \
libyaml-cpp-dev

wget https://github.com/edenhill/librdkafka/archive/refs/tags/v1.9.2.tar.gz

tar xzvf v1.9.2.tar.gz
cd librdkafka
source ./configure
make
sudo make install

sudo mkdir -p /opt/nvidia/deepstream/deepstream-6.1/lib
sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-6.1/lib


