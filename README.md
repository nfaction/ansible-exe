# ansible-exe
Ansible container with basic tools preinstalled

## Using this image

```shell
docker pull spikebyte/ansible-exe:latest

docker run -it --rm -v ${PWD}:/ansible -v ~/.ssh/:/root/.ssh/ spikebyte/ansible-exe:latest bash
```

## Build this image

```shell
docker login

docker build -t ansible-exe .

docker tag ansible-exe spikebyte/ansible-exe:latest

docker push spikebyte/ansible-exe:latest
```