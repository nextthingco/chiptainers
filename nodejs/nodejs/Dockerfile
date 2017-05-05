FROM ntc-registry.githost.io/nextthingco/chiptainer_alpine

LABEL architecture="ARMv7"

RUN echo http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
	apk update && \
	apk add --no-cache git nodejs yarn && \
	npm config set registry http://registry.npmjs.org/
