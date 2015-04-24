#!/bin/bash

sudo docker build -t codecentric-cv-latex .
sudo docker run --rm -v $(pwd):/opt codecentric-cv-latex
