FROM paddlepaddle/paddle:latest-gpu-cuda10.0-cudnn7
ARG MXM_HYPERPARAMETERS
ARG MXM_INPUT
ARG MXM_OUTPUT
ENV MXM_HYPERPARAMETERS $MXM_HYPERPARAMETERS
ENV MXM_INPUT $MXM_INPUT
ENV MXM_OUTPUT $MXM_OUTPUT
ENV CUDA_VISIBLE_DEVICES $CUDA_VISIBLE_DEVICES
ENV MXM_ROOT /root
RUN apt-get update && apt-get install -y \
    git
#COPY ./DeepSpeech/requirements.txt /tmp/requirements.txt
#RUN pip install numpy==1.16.4
#RUN pip install -r /tmp/requirements.txt
RUN apt-get install -y pkg-config libflac-dev libogg-dev libvorbis-dev libboost-dev swig python-dev
RUN apt-get install -y libsndfile1-dev
RUN python -m pip install paddlepaddle-gpu==1.6.2.post107 -i https://pypi.tuna.tsinghua.edu.cn/simple
WORKDIR /root
RUN mkdir DeepSpeech
COPY DeepSpeech DeepSpeech
WORKDIR /root/DeepSpeech
RUN sh /root/DeepSpeech/setup.sh
ENTRYPOINT ["python","run.py"]