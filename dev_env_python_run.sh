#!/bin/bash

if [ ! -e "./.dev_history" ]; then
  mkdir .dev_history
  touch ./.dev_history/bash_history
  touch ./.dev_history/history.sqlite
fi


podman run \
  -v ./.dev_history/bash_history:/home/docker_user/.bash_history \
  -v ./.dev_history/history.sqlite:/home/docker_user/.ipython/profile_default/history.sqlite \
  -v "$(pwd)":/app \
  -w /app \
  -it --rm dev_env_python bash

