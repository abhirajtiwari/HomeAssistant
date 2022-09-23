#!/usr/bin/env bash
docker run -d \
	--name homeassistant \
	--privileged \
	--restart=unless-stopped \
	-e TZ=Asia/Calcutta \
	-v /home/pi/HA_Config:/config \
	--network=host \
	ghcr.io/home-assistant/home-assistant:stable
