FROM continuumio/miniconda3:4.9.2

LABEL "repository"="https://github.com/angus-g/conda-package-publish-action"
LABEL "maintainer"="Angus Gibson <angus@agibson.me>"

RUN conda install -y anaconda-client conda-build

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
