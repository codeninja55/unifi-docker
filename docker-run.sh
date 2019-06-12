#!/bin/bash
docker run -d \
	--restart=unless-stopped \
	--net=host \
	--name=unifi \
	-e TZ='Australia/Sydney' \
	-e RUNAS_UID0=false \
	-e UNIFI_UID=1001 \
	-e UNIFI_GID=1001 \
	-v /mnt/raid/unifi:/unifi \
	codeninja/unifi:5.10.23U
