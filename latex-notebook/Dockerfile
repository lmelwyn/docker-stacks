FROM jupyter/scipy-notebook:92fe05d1e7e5

LABEL maintainer="Lars Melwyn <melwyn (at) scico.io>"

USER root

RUN apt-get update && apt-get install -y vim-latexsuite &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    vim-addons install latex-suite && \
    fix-permissions /home/$NB_USER

USER $NB_UID

RUN pip install jupyterlab_latex && \
    jupyter labextension install @jupyterlab/latex && \
    jupyter labextension install jupyterlab-drawio && \
    jupyter serverextension enable --sys-prefix jupyterlab_latex && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER $NB_UID

RUN  echo -e 'filetype plugin on\nset grepprg=grep\ -nH\ $*\nfiletype indent on\nlet g:tex_flavor="latex"'> ~/.vimrc
