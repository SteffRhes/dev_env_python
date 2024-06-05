#!/bin/bash

podman run -v "$(pwd)":/mount -it --rm dev_env_python bash

