FROM python:latest
RUN pip install ipython
RUN pip install ipdb
RUN mkdir /mount
RUN mkdir -p /root/.ipython/profile_default 
RUN touch /root/.ipython/profile_default/history.sqlite
RUN touch /root/.bash_history
ENV HISTFILE=/root/.bash_history
WORKDIR /mount

