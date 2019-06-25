FROM ubuntu:16.04
WORKDIR /opt/searchgui
RUN apt-get update && apt-get -y install \
    build-essential \
    ssh \
    wget \
    default-jre default-jdk ;\
    wget http://genesis.ugent.be/maven2/eu/isas/searchgui/SearchGUI/3.3.15/SearchGUI-3.3.15-mac_and_linux.tar.gz ;\
    tar -xzvf SearchGUI-3.3.15-mac_and_linux.tar.gz ;\
    rm SearchGUI-3.3.15-mac_and_linux.tar.gz ;\
    bash -c 'echo -e "#!/bin/bash\njava -jar /opt/searchgui/SearchGUI-3.3.15/SearchGUI-3.3.15.jar $@"' > SearchGUI-3.3.15/SearchGUI ;\
    chmod +x SearchGUI-3.3.15/SearchGUI


ENV PATH=${PATH}:/opt/searchgui/SearchGUI-3.3.15
WORKDIR /data/
