FROM jupyter/scipy-notebook:92fe05d1e7e5

LABEL maintainer="Lars Melwyn <melwyn (at) scico.io>"

USER $NB_UID

RUN conda install --quiet --yes  'fenics' && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

