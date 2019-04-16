FROM bitnami/minideb

RUN apt-get update \
	&& apt-get -y install gnupg2 software-properties-common ssh borgbackup \
	&& rm -Rf /var/lib/apt/lists/*

USER backup:backup
