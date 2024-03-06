#!/bin/bash
#
# Flashes the keymap
# 
set -e

main() {
	local label='CORNEISHZEN' file=''

	while true; do
		case "${1:-}" in
		--label)
			label="$2"
			shift 2
			;;
		*) break ;;
		esac
	done

	file="${1:-corneish_zen_left.uf2}"

	if [[ -z "${file}" ]]; then
		echo 'Usage: flash.sh [--label LABEL] path/to/file.uf2'
		exit 1
	fi

    flash-by-cp "/Volumes/$label" "$file"

	echo '━━› Done!'
}

# flash-by-cp "/Volumes/NICENANO" "file.uf2"
flash-by-cp() {
	local dest="$1"
	local file="$2"
    echo -n "━━› Attach left-hand Corne-ish Zen and double-click reset button"
	echo -n "━━› Waiting for $dest"
	while true; do
		if [[ -e "$dest/CURRENT.UF2" ]]; then break; fi
		sleep 0.2
		echo -n '.'
	done
	echo ' ✓'

	echo -n "━━› Sending $file..."

    # Most of the time, the copy will lead to an error message because 
    # the firmware resets the device too quickly, so ignore failures.
    # See: https://zmk.dev/docs/troubleshooting#file-transfer-error
	cp "$file" "$dest/" 2> /dev/null || true
	echo ' ✓'
}

main "$@"
