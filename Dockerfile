FROM paddlepaddle/paddle:latest-gpu-cuda10.0-cudnn7

RUN apt-get install -y pkg-config libflac-dev libogg-dev libvorbis-dev libboost-dev swig python-dev

RUN git clone https://github.com/PaddlePaddle/DeepSpeech.git
RUN cd DeepSpeech && \
    sh setup.sh

WORKDIR /app
ADD . /app