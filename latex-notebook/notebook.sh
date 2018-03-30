sudo docker run --user root -it --rm -e GRANT_SUDO=yes -v /home/shared/jupyter:/home/jovyan/work  -p 8888:8888 docker.io/melwyn/latex-notebook:c88678a1c7c9 start.sh jupyter lab 
