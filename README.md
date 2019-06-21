## Dockerfile to Build Maker2 image

* [peptideshaker git](https://github.com/compomics/peptide-shaker)
* [search gui git](https://github.com/compomics/searchgui)

* combination of peptideshaker and search gui for shotgun proteomics matching and analysis of results


* use the image like this:

```
 sudo docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/data stephanholgerdrukewitz/peptideshaker PeptideShaker
```


* GUI of PeptideShaker opens up and the rest is clicky clicky
* searchgui jar file is located in the /home/biodocker/bin/SearchGUI-3.3.15 Folder



# Author
Stephan drukewitz --> stephan.drukewitz@ime.fraunofer.de
