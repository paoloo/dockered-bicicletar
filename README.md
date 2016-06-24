# DOCKERed-bicicletar
My first steps into pratice of DevOps - A dockered version of [bicicletar data API](https://github.com/paoloo/DadosBicicletar).

I'm using the official *python 2.7* image, **python:2-onbuild**, available on **docker hub**, as the base image of this project. More about this image available on [https://hub.docker.com/_/python/](https://hub.docker.com/_/python/) but it is a very large(about 900MB) image and there are smaller alternatives, based on *alpine* or *busybox*. I decided to use this one, only, because it was previously validated.

I, also, decided to use a packed python project(inside a zip) instead of simple loose sources only by esthetics, to make the concept of the immutability clearer.

I have created a Makefile to provide a simpler behaviour on usage. **The `make` command associated to this Makefile should be run as root**, as docker, usually, requires root.

[![BSD License](https://img.shields.io/badge/license-BSD-blue.svg)](LICENSE)

## Requirements
- **docker** (only! Not even python is required as the app will run inside docker image containing python and the associated libraries).

## Instructions
- Remember to clone this repository with bicicletar submodule, using --recursive:
```bash
git clone --recursive https://github.com/paoloo/dockered-bicicletar.git
```
- Build python package and docker image"
```bash
sudo make build
```
- Run application
```bash
sudo make run
```
- Test it, by going in browser: **http://localhost:8080/estacoes/**

## License
[BSD License](LICENSE) © 2016 Paolo Oliveira.