# lldpd-docker
docker container with LLDP server and utils

## Documentation
This container needs full access to the network interfaces (--net=host) and must run in privileged mode (--privileged) to be able to send and receive LLDP packets from neighbors. It also needs --uts=host 
option to properly access host information data.

> Instead of using --privileged, you can specify --cap-add=NET_ADMIN --cap-add=NET_RAW options.

**By default LLDP packets are sent every 30 seconds, so you might not see neighbors immediately.**

### Usage: ###

	docker run -d --restart always --net=host --uts=host --privileged --name lldpd jdenoy/docker-lldp
