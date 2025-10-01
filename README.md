# ansible-exe

[![Docker](https://github.com/nfaction/ansible-exe/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/nfaction/ansible-exe/actions/workflows/docker-publish.yml)

Ansible container with basic tools preinstalled

## Using this image

https://hub.docker.com/r/spikebyte/ansible-exe

```shell
docker pull spikebyte/ansible-exe:main

docker run -it --rm -v ${PWD}:/ansible -v ~/.ssh/:/root/.ssh/ spikebyte/ansible-exe:main bash
```

## Build this image

```shell
docker login

docker build -t ansible-exe .

docker tag ansible-exe spikebyte/ansible-exe:latest

docker push spikebyte/ansible-exe:latest
```

## References

* https://github.com/docker/setup-buildx-action
* https://github.com/docker/login-action/blob/5139682d94efc37792e6b54386b5b470a68a4737/README.md#docker-hub

```
Go to your GitHub repository's Settings tab.
Click on Secrets in the sidebar, then click on New repository secret.
Add two secrets:
DOCKER_USERNAME: Your Docker Hub username.
DOCKER_TOKEN: Your Docker Hub password or a personal access token (recommended for security reasons).
```
