build: gpu-py2 gpu-py3

gpu-py%:
	docker build -f Dockerfile.$@ . -t minzwon/dl4mir:$@


push:
	docker push minzwon/dl4mir:gpu-py2
	docker push minzwon/dl4mir:gpu-py3

