# Jupyter into Cloud Containers?

## What is this?

Think of this as a bit of a middle ground to spinning up a full [JupyterHub](https://jupyter.org/hub), while supporting a more "hands off" spinup of a standalone Jupyter Notebook using a docker container.

## What's different?

This is a really slim change from the raw container. We simply define the two following environment variables:

| Variable      | Description |
| ----------- | ----------- |
| JUPYTER_PASSWD | This should be a string which will be used as the password for the notebook |
| JUPYTER_PORT   | This should be a number which will be set as the port the internal server will be listening to - by default, jupyter listens on 8888 |

## Why have you done this?

I have a need to spin up a disposable container on the web running Jupyter, but was getting frustrated that the single container expects to be run locally. Is this secure? not really. Is this productionisable? You should probably be looking at a PaaS offering or JupyterHub. Is it useful to me today? Absolutely.