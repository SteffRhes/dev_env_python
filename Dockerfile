FROM python:latest
RUN pip install ipython
RUN pip install ipdb
RUN pip install build
RUN pip install twine
RUN mkdir /mount
COPY ./build_and_upload.sh /home/build_and_upload.sh
COPY ./pypirc /root/.pypirc
RUN mkdir -p /root/.ipython/profile_default 
RUN touch /root/.ipython/profile_default/history.sqlite
RUN touch /root/.bash_history
ENV HISTFILE=/root/.bash_history
WORKDIR /mount
CMD ["/home/build_and_upload.sh"]

