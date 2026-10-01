#!/usr/bin/env bash
# rebel-rebel — run fastfetch with a random config from the rebel-rebel set.
#
# Picks one of the .jsonc/.json configs in
#   ${XDG_CONFIG_HOME:-$HOME/.config}/fastfetch/rebel-rebel/
# and runs `fastfetch -c rebel-rebel/<name>`. Any extra arguments are passed
# straight through to fastfetch, e.g. `rebel-rebel --logo none`.
set -euo pipefail

dir="${XDG_CONFIG_HOME:-$HOME/.config}/fastfetch/rebel-rebel"

if [[ ! -d $dir ]]; then
  echo "rebel-rebel: config directory not found: $dir" >&2
  exit 1
fi

shopt -s nullglob
configs=("$dir"/*.jsonc "$dir"/*.json)

if (( ${#configs[@]} == 0 )); then
  echo "rebel-rebel: no .jsonc/.json configs in $dir" >&2
  exit 1
fi

file="${configs[RANDOM % ${#configs[@]}]}"
name="$(basename "$file")"
name="${name%.jsonc}"
name="${name%.json}"

[[ ${REBEL_REBEL_DEBUG:-0} == 1 ]] && echo "rebel-rebel: using $name" >&2

clear 2>/dev/null || true
exec fastfetch -c "rebel-rebel/$name" "$@"
