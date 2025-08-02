.PHONY: run stop clean

run:
	docker run -itd --rm -p 10000:8888 -v "${PWD}":/home/jovyan/work  --name notebook_${USER} quay.io/jupyter/datascience-notebook:2025-03-14

stop:
	docker stop notebook_${USER} || true
