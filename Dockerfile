################## BASE IMAGE ######################
FROM biocontainers/biocontainers:latest

################## METADATA ######################
LABEL base.image="biocontainers:latest"
LABEL version="1"
LABEL software="PeptideShaker"
LABEL software.version="1.16.40"
LABEL description="interpretation of proteomics identification results"
LABEL website="http://compomics.github.io/projects/peptide-shaker.html"
LABEL documentation="http://compomics.github.io/projects/peptide-shaker.html"
LABEL license="http://compomics.github.io/projects/peptide-shaker.html"
LABEL tags="Proteomics"

################## MAINTAINER ######################
MAINTAINER Felipe da Veiga Leprevost <felipe@leprevost.com.br>

RUN ZIP=PeptideShaker-1.16.40.zip && \
    wget http://genesis.ugent.be/maven2/eu/isas/peptideshaker/PeptideShaker/1.16.40/PeptideShaker-1.16.40.zip -O /tmp/$ZIP && \
    unzip /tmp/$ZIP -d /home/biodocker/bin/ && \
    rm /tmp/$ZIP && \
    bash -c 'echo -e "#!/bin/bash\njava -jar /home/biodocker/bin/PeptideShaker-1.16.40/PeptideShaker-1.16.40.jar $@"' > /home/biodocker/bin/PeptideShaker && \
    chmod +x /home/biodocker/bin/PeptideShaker ;\
    \
    ZIP=SearchGUI-3.3.15-mac_and_linux.tar.gz && \
    wget http://genesis.ugent.be/maven2/eu/isas/searchgui/SearchGUI/3.3.15/SearchGUI-3.3.15-mac_and_linux.tar.gz -O /tmp/$ZIP && \
    tar -xzvf /tmp/$ZIP -C /home/biodocker/bin/ && \
    rm /tmp/$ZIP && \
    bash -c 'echo -e "#!/bin/bash\njava -jar /home/biodocker/bin/SearchGUI-3.3.15/SearchGUI-3.3.15.jar $@"' > /home/biodocker/bin/SearchGUI && \
    chmod +x /home/biodocker/bin/SearchGUI


ENV PATH /home/biodocker/bin/PeptideShaker:/home/biodocker/bin/SearchGUI-3.3.15:$PATH
ADD ./msconvert /home/biodocker/bin
WORKDIR /data/
