## dev_env_python

A containerized python environment, with ipython and ipdb for quick experimentation.

History of bash and python is preserved in a folder `.dev_history`.

The build and run bash scripts assume podman, but docker works equally fine.

### how to use

tested only on linux.

first run the build script in this folder:
```
./dev_env_python_build.sh
```

After that, a local image `dev_env_python` was created, run this interactively with the script
```
./dev_env_python_run.sh
```

Then the local folder is mounted into the working directory and a bash shell is opened, from which `ipython` can be started.

The run script could be made runnable anywhere with an alias added to .bashrc like so:
```
alias dev_env_python=/path/to/dev_env_python_run.sh
```

Or wrap the podman call into a function in .bashrc:
```
dev_env_python() {
  if [ ! -e "./.dev_history" ]; then
    mkdir .dev_history
    touch .dev_history/bash_history
    touch .dev_history/history.sqlite
  fi

  podman run \
    -v ./.dev_history/bash_history:/root/.bash_history:z \
    -v ./.dev_history/history.sqlite:/root/.ipython/profile_default/history.sqlite:z \
    -v "$(pwd)":/mount \
    -it --rm dev_env_python bash
}
```
