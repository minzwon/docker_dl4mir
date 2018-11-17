build: latest-gpu-py3 latest-cpu-py3

latest%:
	docker build -f Dockerfile.$@ . -t minzwon/dl4mir:$@

push:
	docker push minzwon/dl4mir:latest-gpu-py3
	docker push minzwon/dl4mir:latest-cpu-py3

