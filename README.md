# dl4mir
`dl4mir` is a docker image for the deep learning for music information retrieval research.

## Contents

- For music analysis: `essentia`, `librosa`, `madmom`

- For deep learning: `pytorch`, `keras`, `tensorflow`, `sklearn`, `cuda`

- and some useful python libraries including: `numpy`, `scipy`, `pandas`, `matplotlib`, `seaborn`, `jupyter` and more!


## Versions
`dl4mir:gpu-py2` python2 environment

`dl4mir:gpu-py3` python3 environment 

## Guideline

### Pull docker image
Just type:

	docker pull minzwon/dl4mir:gpu-py2

or

	docker pull minzwon/dl4mir:gpu-py3

### Run docker container
You should run the image with `nvidia-docker` to use your GPUs.

Example:

	nvidia-docker run -d -it -p 8888:8888 -v HOST_DIRECTORY:CONTAINER_DIRECTORY --name ANYNAME minzwon/dl4mir:gpu-py3 /bin/bash
	
`-d` is a detached mode. This makes your container to run on the background. You can continue the container with:

	nvidia-docker exec -it ANYNAME /bin/bash

### Build docker image
When you want to build your image:

`make gpu-py2` or `make gpu-py3`

and

`make push gpu-py2` or `make push gpu-py3`