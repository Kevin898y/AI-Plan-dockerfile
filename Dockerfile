#python3.6 least

FROM kevin898y/pytorch_py3_apex:base
MAINTAINER LAI

RUN pip3 --no-cache-dir install django \
	beautifulsoup4 \
	requests
RUN pip3 --no-cache-dir install nltk \
	tensorflow-gpu==1.14.0\
	gensim \
	transformers==2.5.0\
	git+https://github.com/boudinfl/pke.git\
	&& python3 -m nltk.downloader stopwords\
	&& python3 -m nltk.downloader universal_tagset\
	&& python3 -m nltk.downloader en

	
	