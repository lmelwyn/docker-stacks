FROM jupyter/scipy-notebook:c88678a1c7c9

LABEL maintainer="Lars Melwyn <melwyn (at) scico.io>"

USER root

RUN apt-get update && apt-get install -y vim-latexsuite gnuplot &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    vim-addons install latex-suite && \
    fix-permissions /home/$NB_USER


RUN pip install jupyterlab_latex gnuplot_kernel --upgrade && \
    jupyter labextension install @jupyterlab/latex && \
    jupyter labextension install jupyterlab-drawio && \
    jupyter serverextension enable --sys-prefix jupyterlab_latex && \
    echo -e 'filetype plugin on\nset grepprg=grep\ -nH\ $*\nfiletype indent on\nlet g:tex_flavor="latex"'> ~/.vimrc && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER  

USER $NB_UID
