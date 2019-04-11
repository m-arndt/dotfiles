#!/bin/bash

extensions=(
    austin.code-gnu-global
    bmewburn.vscode-intelephense-client
    bungcip.better-toml
    dbaeumer.jshint
    dbaeumer.vscode-eslint
    dunstontc.dark-plus-syntax
    eamodio.gitlens
    Gruntfuggly.todo-tree
    HookyQR.beautify
    mitaki28.vscode-clang
    ms-python.python
    ms-vscode.cpptools
    ms-vscode.csharp
    rust-lang.rust
    serayuzgur.crates
    teabyii.ayu
    vadimcn.vscode-lldb
    aaron-bond.better-comments
    shakram02.bash-beautify
    smeagolem.ayu-one-dark-pro
)

for i in "${extensions[@]}"
do
    code --install-extension --force $i
done
