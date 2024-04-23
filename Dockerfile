# * to use with tag 'dev_env_python'
FROM python:3.10.13
RUN pip install ipython
RUN pip install ipdb
RUN apt update
RUN apt install -y less
RUN useradd -u 1000 docker_user
RUN mkdir /home/docker_user /app
RUN mkdir -p /home/docker_user/.local/bin
RUN mkdir -p /home/docker_user/.ipython/profile_default 
RUN touch /home/docker_user/.bash_history
RUN touch /home/docker_user/.ipython/profile_default/history.sqlite
RUN chown -R docker_user:docker_user /home/docker_user /app
USER docker_user
ENV HISTFILE=/home/docker_user/.bash_history
ENV PATH="/home/docker_user/.local/bin:${PATH}"
WORKDIR /app
