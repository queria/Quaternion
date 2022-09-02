#!/bin/bash

date

set -ex

# instead of extremely slow podman use direct checks?
# cat ~/.local/share/containers/storage/overlay-containers/containers.json | jq '.[] | select(.names == ["qtdevel"])'
if ! podman inspect qtdevel &> /dev/null; then
  toolbox create qtdevel
fi

toolbox run -c qtdevel sudo dnf install cmake qt5-qtdeclarative-devel qt5-qtquickcontrols qt5-qtquickcontrols2 qt5-qtmultimedia-devel qt5-linguist qt5-qtquickcontrols2-devel
toolbox run -c qtdevel ./build.sh
