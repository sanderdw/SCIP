### Compile SCIP (scip.zib.de) in Docker with threading functionality
- Copy 1 of the folders with the dockerfile on your machine.
- Download the SCIP Optimization Suite Source code from https://scip.zib.de/index.php#download and put it in the same folder.
- Then use below instructions to build and run the Docker container.

#### Build instructions
```
docker build --no-cache -t myscip .
```

#### SCIP Only
##### Start a docker container with an interactive shell
```
docker run -it --name=myscip --entrypoint /bin/sh myscip
```

#### SCIP + Python
##### Start a docker container with an Jupyter python 3.7 notebook
```
docker run -it --name=myscip-python -p 8888:8888 myscip-python
```