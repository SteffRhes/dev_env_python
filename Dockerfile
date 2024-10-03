FROM python:latest
RUN pip install ipython
RUN pip install ipdb
RUN mkdir /mount
WORKDIR /mount

