FROM hub.baidubce.com/paddlepaddle/deep_speech_fluid:latest-gpu

# git
RUN apt install git-all -y

RUN git clone https://github.com/PaddlePaddle/DeepSpeech.git

WORKDIR /app
ADD . /app