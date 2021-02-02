FROM hub.baidubce.com/paddlepaddle/deep_speech_fluid:latest-gpu


# RUN apt-get update && apt-get install -y --no-install-recommends \
#     software-properties-common \
#     build-essential \
#     curl \
#     wget \
#     gpg 

# RUN apt-get install -y pkg-config libflac-dev libogg-dev libvorbis-dev libboost-dev swig python-dev

# # git
# RUN apt install git-all -y

# RUN git clone https://github.com/PaddlePaddle/DeepSpeech.git

# RUN pip install numpy
# #RUN apt-get install python3-dev -y
# RUN pip install --upgrade pip
# #RUN cd DeepSpeech && \
#  #   sh setup.sh


WORKDIR /app
ADD . /app