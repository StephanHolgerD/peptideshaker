FROM ubuntu:16.04
WORKDIR /opt/peptideshaker
RUN apt-get update && apt-get -y install \
    build-essential \
    ssh \
    wget \
    zip \
    default-jre default-jdk ;\
    wget http://genesis.ugent.be/maven2/eu/isas/peptideshaker/PeptideShaker/1.16.40/PeptideShaker-1.16.40.zip ;\
    unzip PeptideShaker-1.16.40.zip ;\
    bash -c 'echo -e "#!/bin/bash\njava -jar /opt/peptideshaker/PeptideShaker-1.16.40/PeptideShaker-1.16.40.jar $@"' > PeptideShaker-1.16.40/PeptideShaker ;\
    chmod +x PeptideShaker-1.16.40/PeptideShaker


ENV PATH=${PATH}:/opt/peptideshaker/PeptideShaker-1.16.40
WORKDIR /data/
