from mambaorg/micromamba

WORKDIR /app
COPY . .
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        python3
RUN micromamba env create -y -f env.yml
RUN micromamba run -n testenv make
