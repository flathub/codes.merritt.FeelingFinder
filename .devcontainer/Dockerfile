FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# ---------------------------------------------------------------------------- #
#                  ⚠️  NOTHING HERE SEEMS TO WORK ANYMORE  ⚠️                  #
# ---------------------------------------------------------------------------- #

# ------------------------ Prepare docker environment ------------------------ #

RUN apt-get update
RUN apt-get -y upgrade
# Install Flatpak utilities
RUN apt-get -y install flatpak flatpak-builder
# Install app-specific dependencies
RUN apt-get -y install keybinder-3.0 libappindicator3-1 libappindicator3-dev libnotify-dev
# RUN apt-get -y install keybinder-3.0 appindicator3-0.1 libayatana-ido3-0.4-0 libayatana-ido3-dev libnotify-dev

# # Prepare environment for building Flatpak
RUN flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
RUN flatpak install -y org.freedesktop.Sdk/x86_64/24.08
RUN flatpak install -y org.flatpak.Builder
