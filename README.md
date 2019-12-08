# GTK3 V
Last stable version: **0.1.0**

This is a wrapper for gtk3 in V.  
The advantage compared to using `C.<function>` is that gtk3-v uses V structs and does its best to have a good V style when "translating" GTK3-V.
This is mostly why the functions aren't auto-generated, as this doesn't creates any helpful structures nor does it splits the files, because it doesn't know what a container is, this wrapper knows it and offers a `Container` interface ready for use.
