#!/bin/bash

# === Mise à jour du système ===
sudo apt update && sudo apt upgrade -y

# === Dépendances ===
sudo apt install -y wget gpg apt-transport-https software-properties-common

# === Installer Visual Studio Code ===
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install -y code

# === Installer .NET SDK 8 ===
wget https://packages.microsoft.com/config/debian/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt install -y dotnet-sdk-8.0

# === Vérification de .NET ===
dotnet --version

# === Extensions VS Code (C#, SQL, API, Git, etc.) ===
code --install-extension ms-dotnettools.csdevkit
code --install-extension ms-dotnettools.vscode-dotnet-runtime
code --install-extension jorgeserrano.vscode-csharp-formatter
code --install-extension formulahendry.dotnet-test-explorer
code --install-extension k--kato.docomment
code --install-extension nugetgallery.nuget-gallery

# SQL
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-pg   # PostgreSQL
code --install-extension mtxr.sqltools-driver-mssql   # SQL Server

# API & JSON
code --install-extension humao.rest-client
code --install-extension zainchen.json

# WinForms (expérimental)
code --install-extension sharpninja.winforms-designer

# Productivité
code --install-extension eamodio.gitlens
code --install-extension Gruntfuggly.todo-tree
code --install-extension usernamehw.errorlens

echo "✅ Installation terminée ! Lance VS Code avec : code"
