# docker-python-virtualenv
[![](https://images.microbadger.com/badges/image/vladshub/python-virtualenv.svg)](http://microbadger.com/images/vladshub/python-virtualenv "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/vladshub/python-virtualenv.svg)](http://microbadger.com/images/vladshub/python-virtualenv "Get your own version badge on microbadger.com")

Base image of docker, python and virtualenv.

## Create virtualenv with numpy and scipy (tested)
```
mkdir app && cd app
virtualenv --no-site-packages -p python3 venv
. venv/bin/activate
ls venv/include/python3.6m/
pip install numpy
pip install scipy
```

