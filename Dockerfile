FROM buildpack-deps:xenial

RUN apt-get update && apt-get install -y --no-install-recommends \
    python-dev \
    vim

RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN pip install --no-cache-dir \
    google-api-python-client \
    Cython \
    py-stackexchange \
    lxml

WORKDIR /workspace

CMD ["/bin/bash"]