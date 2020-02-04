# VGTK3

![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/vgtk/vgtk3/CI/master?style=flat-square)

![GitHub release (latest by date)](https://img.shields.io/github/v/release/vgtk/vgtk3?style=flat-square)

## What is this

This is a manual wrapper for `gtk3` for V.
The advantage compared to using `C.<function>` directly is that `vgtk3` uses V structs and does it best to have a good V style when "translating" `gtk3` to V.
This is mostly why the functions aren't auto-generated, as this doesn't create any helpful structures nor does it splits the files, because it doesn't know what a container is, this wrapper knows it and offers a `Container` interface ready for use.

> Note: We are still combining everything together here, will be separated after everything is finished

## Progress

- GTK
  - [ ] AccelMap
  - [ ] ActionBar
  - [ ] Application
  - [ ] Box
  - [x] Button
  - [x] ComboBox
  - [ ] Container
  - [ ] Dialog
  - [ ] Entry
  - [x] Grid
  - [ ] Image
  - [x] Label
  - [ ] Menu
  - [ ] MenuItem
  - [ ] WidgetPath
  - [ ] Widget
  - [ ] Window
- GDK
  - [ ] Device
  - [ ] Window
- GIO
  - [ ] File
- GLIB
  - [ ] Array
  - [ ] List
  - [ ] Node
  - [ ] SList
  - [ ] String

## Minimum supported versions

- Gdk 3.16
- GLib 2.44
- Gtk 3.16

## License

Gtk is available under the MIT License, please refer to it.
