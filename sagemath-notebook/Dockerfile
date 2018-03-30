FROM jupyter/scipy-notebook:c88678a1c7c9

LABEL maintainer="Lars Melwyn <melwyn (at) scico.io>"

USER root

RUN apt-get update && apt-get install -y software-properties-common &&  \
    apt-add-repository -y ppa:aims/sagemath && apt-get update && \
    apt-get install -y sagemath-upstream-binary &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install sagemath && \
    ln -s /usr/lib/sagemath/local/share/jupyter/kernels/sagemath/ /opt/conda/share/jupyter/kernels/ && \
    sed -i -e 's/\]\}/\],\"env\":\{\"SAGE_ROOT\":\"\/usr\/lib\/sagemath\"\}\}/g' /usr/lib/sagemath/local/share/jupyter/kernels/sagemath/kernel.json && \
    fix-permissions /home/$NB_USER

USER $NB_UID
