#!/bin/bash
#
# Builds the keymap
# 
set -e

docker_image="zmkfirmware/zmk-build-arm:2.5"
base_path="$(pwd)"
config_path="$(pwd)/config"

target="corne-ish_zen"

mkdir .cache || true

docker run \
    -it \
    --rm \
    --name zmk \
    --platform linux/amd64 \
	-v "${base_path}/.cache:/.cache" \
	-v "${base_path}/zmk-scripts:/.cache/zmk-scripts" \
	-v "${config_path}:/.cache/config:ro" \
	-e HOST_UID="$(id -u)" \
	-e HOST_GID="$(id -g)" \
    "${docker_image}" \
    sh -c "cd /.cache; bash /.cache/zmk-scripts/west-setup.sh && bash /.cache/zmk-scripts/west-build.sh corneish_zen_left && bash /.cache/zmk-scripts/west-build.sh corneish_zen_right"


mv .cache/corneish_zen_left.uf2 corneish_zen_left.uf2
mv .cache/corneish_zen_right.uf2 corneish_zen_right.uf2

echo ""
echo ""
echo ""
echo "Build complete:"
echo "- corneish_zen_left.uf2"
echo "- corneish_zen_right.uf2"
echo ""
echo "To flash, run ./flash.sh"
echo ""
