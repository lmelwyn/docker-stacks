FROM jupyter/datascience-notebook:71dbce1d7bb0

LABEL maintainer="Lars Melwyn <melwyn (at) scico.io>"

USER root

RUN apt-get update && apt-get install -y  texlive-luatex pdf2svg poppler-utils pdf2svg gnuplot &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    fix-permissions /home/$NB_USER

USER $NB_UID


RUN julia -e 'using Conda; Conda.add("matplotlib"); ENV["PYTHON"]="" ; Pkg.add("PyCall"); Pkg.build("PyCall"); Pkg.add("PyPlot")' && \
    julia -e 'Pkg.add("Winston"); Pkg.add("Gnuplot.jl"); Pkg.add("Gaston"); Pkg.add("Plotly"); Pkg.add("PGFPlots")' && \
    julia -e 'Pkg.add("GR"); Pkg.add("PGFPlotsX"); Pkg.add("Plots")' 
