#!/bin/bash

docker build -t codecentric-cv-latex .
docker run --rm -v $(pwd):/opt codecentric-cv-latex make pdf
