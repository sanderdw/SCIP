## Compile SCIP (scip.zib.de) in Docker with threading functionality
SCIP in Docker

### Build instructions
docker build --no-cache -t myscip .

### SCIP Only
#### Start a docker container with an interactive shell
docker run -it --name=myscip --entrypoint /bin/sh myscip

### SCIP + Python
#### Start a docker container with an Jupyter python 3.7 notebook
docker run -it --name=myscip-python -p 8888:8888 myscip-python
