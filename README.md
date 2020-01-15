# VGTK3

Last stable version: **0.2.0**

This is a wrapper for `gtk3` in V.
The advantage compared to using `C.<function>` directly is that vgtk3 uses V structs and does it best to have a good V style when "translating" `gtk3` to V.
This is mostly why the functions aren't auto-generated, as this doesn't create any helpful structures nor does it splits the files, because it doesn't know what a container is, this wrapper knows it and offers a `Container` interface ready for use.

## Progress

- GTK
  - [ ] Accel Map
  - [x] Button
  - [ ] Entry
  - [ ] Label
  - [ ] Menu
  - [ ] Window
- GDK
  - [ ] Window 
