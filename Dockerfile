ARG IMAGE_TYPE=scipy-notebook
ARG IMAGE_TAG=lab-3.6.1
FROM "docker.io/jupyter/${IMAGE_TYPE}:${IMAGE_TAG}"
COPY ./jupyter_server_config.py /home/jovyan/.jupyter/jupyter_server_config.py