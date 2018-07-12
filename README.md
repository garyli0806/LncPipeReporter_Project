# LncPipeReporter_Project
This is a containerized version of [@bioinformatist's](https://github.com/bioinformatist)
[LncPipeReporter](https://github.com/bioinformatist/LncPipeReporter): An R package for automatically aggregating and summarizing lncRNA analysis results.

## Overview
This version of [LncPipeReporter](https://github.com/bioinformatist/LncPipeReporter) was containerized via Docker so that it could be used on any platform.
At the time of this writing, the original app only supports Unix-like operating systems, and on these systems it may require certain dependencies. 

This repository contains example data, the DockerFile for creating an image with [LncPipeReporter](https://github.com/bioinformatist/LncPipeReporter), and a wrapper file needed to run the DockerFile.
The Docker Hub repository for this project is [here](https://hub.docker.com/r/garyli0806/lncpipereporter/).

## Use
**Docker is required** for this program.

Begin by pulling the image from Docker Hub via command line:
``` bash
docker pull garyli0806/lncpipereporter 
```
To launch, an input and output folder must be specified according to the wrapper file. For example:
``` bash
docker run --rm -v ${PWD}:/data -w /data garyli0806/lncpipereporter --input demo_results --output
Out2
```
> Here, the current working directory is my Desktop, which contains the folder "demo_results" that has all of the input files. The container returns an output directory called "Out2" with all of the results that came from the input files.

![](Users/garyli/Desktop/Out2.png)
