FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3 \
    jupyter-notebook \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "jupyter", "notebook", "--allow-root", "--no-browser", "--ip=0.0.0.0", "--port=8080"]