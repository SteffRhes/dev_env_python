#!/bin/bash

if [ ! -e "./.dev_history" ]; then
  mkdir .dev_history
  touch ./.dev_history/bash_history
  touch ./.dev_history/history.sqlite
fi

podman run \
  -v ./.dev_history/bash_history:/root/.bash_history:z \
  -v ./.dev_history/history.sqlite:/root/.ipython/profile_default/history.sqlite:z \
  -v "$(pwd)":/mount \
  -w /mount \
  -it --rm dev_env_python bash

