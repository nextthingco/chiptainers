# Base off the Docker container that includes Alpine and QEMU support.
FROM ntc-registry.githost.io/nextthingco/chiptainer_alpine:latest

LABEL architecture="ARMv7"

COPY *.json /opt/
WORKDIR /opt

RUN apk update && \

	apk add build-base \
		python-dev \
		py2-pip \
		portaudio-dev \
		libffi-dev \
		musl-dev \
		py-pbr \
		libtool && \

	apk add libressl-dev --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && \

	pip install --upgrade pip && \
	pip install PySocks && \
	pip install pip setuptools --upgrade && \

	pip install grpcio -v && \

	python -m pip install google-assistant-sdk[samples] -v && \

	rm -rf /var/cache/apk/* && \

	apk del build-base py2-pip py-pbr

ENTRYPOINT python -m googlesamples.assistant.auth_helpers --client-secrets /tmp/client_secret.json && \
		python -m googlesamples.assistant
