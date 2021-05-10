ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

LABEL author="Manoj Reddy Pannala"

USER root

RUN conda install pandas numpy matplotlib plotly
RUN conda install -c conda-forge prophet

# ROOT to USER
USER $NB_UID
COPY . /work
