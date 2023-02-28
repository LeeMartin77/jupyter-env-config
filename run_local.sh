podman run -it --rm -p 8888:9213 \
    -e JUPYTER_PASSWD=h3llo_fr1end \
    -e JUPYTER_PORT=9213 \
    --name jupyter \
    localhost/test_jupyter:latest