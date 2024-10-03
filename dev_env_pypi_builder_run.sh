#!/bin/bash

podman run -v "$(pwd)":/mount dev_env_pypi_builder

