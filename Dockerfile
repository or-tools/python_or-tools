# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/ubuntu
FROM ubuntu:24.04 AS env

# Install system build dependencies
RUN apt-get update -qq \
&& DEBIAN_FRONTEND=noninteractive apt-get install -yq \
python3-dev python3-pip \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy project
FROM env AS devel
USER ubuntu
WORKDIR /home/ubuntu
COPY --chown=ubuntu:ubuntu . .

# Build
FROM devel AS install
ENV PATH=/home/ubuntu/.local/bin:$PATH
RUN python3 -m pip install --user --break-system-packages -r requirements.txt

# Run test
FROM install AS run
RUN python3 basic_example.py
