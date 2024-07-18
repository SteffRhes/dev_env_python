#!/bin/bash

if [[ $1 == "bash" ]]; then
  podman run -v "$(pwd)":/mount -it --rm dev_env_python bash
else
  podman run -v "$(pwd)":/mount -it --rm dev_env_python ipython
fi

