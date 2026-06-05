# do-hf
Run the HuggingFace CLI [hf](https://huggingface.co/docs/huggingface_hub/en/guides/cli) in a container using the [do-framework](https://bit.ly/do-framework)


# Container project description


This is a Depend on Docker project which comes operational out of the box 
and is configured with reasonable defaults, which can be customized as needed.

# Usage

## Locally

```bash
docker run -it --rm iankoulski/do-hf bash
```

## On Kubernetes

```bash
kubectl run -ti --rm do-hf --image iankoulski/do-hf -- bash
```

## In project

```bash
git clone https://github.com/iankoulski/do-hf
```

The project contains the following scripts:
* `config.sh` - open the configuration file .env in an editor so the project can be customized. Set TO to docker or kubernetes.
* `build.sh` - build the container image
* `test.sh` - run container unit tests
* `push.sh` - push the container image to a registry
* `pull.sh` - pull the container image from a registry
* `run.sh [cmd]` - run the container, passing an argument overrides the default command
* `status.sh` - show container status - running, exited, etc.
* `logs.sh` - tail container logs
* `exec.sh [cmd]` - open a shell or execute a specified command in the running container

Execute `./config.sh`, then `./build.sh`, then `./run.sh`, then `./exec.sh` to open your first `do-hf` shell.

Once inside the `do-hf` shell, you can execute run any desired `hf` command, or run `./config.sh` to set a model name and a destination path, then run `./model-download.sh` to download the model weights from HuggingFace.

