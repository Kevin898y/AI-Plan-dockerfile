#python3.6 base

FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
MAINTAINER LAI
RUN apt-get update && apt-get install -y \
	python3-pip \
    vim \
	git\
	&& apt-get autoclean\
    && pip3 --no-cache-dir install torch==1.5.1+cu101 torchvision==0.6.1+cu101 -f https://download.pytorch.org/whl/torch_stable.html \
    tqdm \
    pandas \
	nltk\
	sklearn\
	jupyter \
	seqeval\
	jupyter_contrib_nbextensions\
	&& jupyter contrib nbextension install --user\
	&& python3 -W ignore -m nltk.downloader wordnet\
	&& python3 -W ignore -m nltk.downloader averaged_perceptron_tagger\
	&& python3 -W ignore -m nltk.downloader punkt\
	&& git clone https://github.com/NVIDIA/apex && cd apex \
	&& pip3 install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
