# Alpine Docker Image for SciPy (Python 3.6.8)

This image provides a lightweight (note this is used loosely when compared to the based image) runtime environment for SciPy codebases. This is an interim measure while the `py-numpy`, `py-matplotlib` and `py-scipy` available via the `@community` and `@testing` repositories are unstable. Alternatively, this allows for the latest version of these packages to be used before they are available in the main repository.

This image is constructed using python:3.6-alpine as base image. Latest python3-dev is still on 3.6.8.

Base image of docker, python and virtualenv. Installing numpy, scipy and matplotlib works.

## Create virtualenv with numpy and scipy (tested)
```
mkdir app && cd app
virtualenv --no-site-packages -p python3 venv
. venv/bin/activate
ls venv/include/python3.6m/
pip install numpy
pip install scipy
pip install matplotlib
```

