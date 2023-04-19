FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

# Build parameters
ARG PROJECT_NAME=brain-decoding-cookbook
ARG USER_NAME=user
ARG GROUP_NAME=user
ARG UID=1000
ARG GID=1000
ARG APPLICATION_DIRECTORY=/home/${USER_NAME}/${PROJECT_NAME}

# Add user
RUN groupadd -g ${GID} ${GROUP_NAME} \
    && useradd -ms /bin/sh -u ${UID} -g ${GID} ${USER_NAME}

# Basic packages
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        git \
        wget \
        zip \
        unzip \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

# Pip packages
RUN pip install bdpy

USER ${USER_NAME}
WORKDIR ${APPLICATION_DIRECTORY}