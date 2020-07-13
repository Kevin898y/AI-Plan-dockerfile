#least

FROM kevin898y/pytorch_py3_apex:base
MAINTAINER LAI

RUN pip3 --no-cache-dir install django \
	beautifulsoup4 \
	requests\
	selenium\
	&& apt-get install -y wget\
	&& wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb\
	&& apt-get install -y ./google-chrome-stable_current_amd64.deb\
	&& rm google-chrome-stable_current_amd64.deb
	
RUN pip3 --no-cache-dir install gensim \
	tensorflow-gpu==1.14.0\
	transformers==2.5.0\
	git+https://github.com/boudinfl/pke.git\
	&& python3 -W ignore -m nltk.downloader stopwords\
	&& python3 -W ignore -m nltk.downloader universal_tagset\
	&& python3 -W ignore -m spacy download en

	
	