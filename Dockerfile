FROM jupyter/scipy-notebook:latest

COPY . /home/jovyan/work

USER root
RUN apt-get update && apt-get install -qq -y \
  libxrender1 # need 64-bit version

WORKDIR /home/jovyan/work/

