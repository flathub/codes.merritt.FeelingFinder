#!/bin/bash

# When run from the vscode dev container this will build a .flatpak of the app.

set -e
set -x

projectId=codes.merritt.FeelingFinder

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --system -y --noninteractive org.gnome.Sdk/x86_64/47
flatpak install --system -y --noninteractive org.gnome.Platform/x86_64/47

flatpak-builder --force-clean --disable-cache --disable-rofiles-fuse build-dir $projectId.yml --repo=repo
flatpak build-bundle repo $projectId.flatpak $projectId
