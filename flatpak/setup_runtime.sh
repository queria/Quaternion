#!/usr/bin/env bash

flatpak --user remote-add flathub --if-not-exists --from https://flathub.org/repo/flathub.flatpakrepo
flatpak --user install flathub org.kde.Platform//6.2
flatpak --user install flathub org.kde.Sdk//6.2
