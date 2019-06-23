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

## when working with large fasta files as database
* use the decoy.py script to add the decoy to the fasta
```
python decoy.py database.fasta

```

* change the max ram setting in the java settings for the SearchGUI otherwise the default is 4gb of ram and this leads to an extreme time increase during the database import

# Author
Stephan drukewitz --> stephan.drukewitz@ime.fraunofer.de
