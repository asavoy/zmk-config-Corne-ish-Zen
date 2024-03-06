#!/usr/bin/env bash
set -xe

target="${1}"

if [[ "${target}" == "corneish_zen_left" ]]; then
    west build -s zmk/app -b corne-ish_zen_left -- -DZMK_CONFIG="${pwd}/config"
    cat -n build/zephyr/corne-ish_zen_left.dts.pre.tmp
    cat build/zephyr/.config | grep -v "^#" | grep -v "^$"
    cp build/zephyr/zmk.uf2 corneish_zen_left.uf2
elif [[ "${target}" == "corneish_zen_right" ]]; then
	west build -s zmk/app -b corne-ish_zen_right -- -DZMK_CONFIG="${pwd}/config"
    cat -n build/zephyr/corne-ish_zen_right.dts.pre.tmp
    cat build/zephyr/.config | grep -v "^#" | grep -v "^$"
    cp build/zephyr/zmk.uf2 corneish_zen_right.uf2
else
    echo "west-build.sh: Unknown target: ${target}"
    exit 1
fi
