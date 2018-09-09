FROM jupyter/datascience-notebook:137a295ff71b

LABEL maintainer="Lars Melwyn <melwyn (at) scico.io>"

USER root

RUN apt-get update && apt-get install -y texlive-luatex pdf2svg poppler-utils pdf2svg gnuplot \
    apt-utils pkg-config libffi6 libffi-dev gettext-base hdf5-tools libhdf5-100 zlib1g-dev \
    libpng16-16 libpng-dev libpixman-1-dev && conda update cairo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    fix-permissions /home/$NB_USER

USER $NB_UID


RUN julia -e 'ENV["PYTHON"]="" ; import Pkg; Pkg.add("PyCall"); Pkg.build("PyCall"); Pkg.add("PyPlot"); \
           Pkg.add("Winston"); Pkg.add("Gnuplot"); Pkg.add("Gaston"); Pkg.add("Plotly"); Pkg.add("PGFPlots"); \
           Pkg.add("GR"); Pkg.add("PGFPlotsX"); Pkg.add("Plots")' 
