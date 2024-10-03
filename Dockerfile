FROM python:latest
RUN pip install ipython
RUN pip install ipdb
RUN pip install build
RUN pip install twine
RUN mkdir /mount
WORKDIR /mount
COPY ./build_and_upload.sh /home/build_and_upload.sh
COPY ./pypirc /root/.pypirc
CMD ["/home/build_and_upload.sh"]

