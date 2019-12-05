#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

"${PYTHON}" -m pip install . --no-deps --ignore-installed -vvv

# Shared file not to be included.
rm -f "${PREFIX}/share/jupyter/lab/settings/build_config.json"
