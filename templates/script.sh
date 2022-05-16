#!/bin/bash

set -eo pipefail

head -1 "${input_csv}" > "${input_csv}.appended.csv"
tail -n +1 "${input_csv}" \
    | sed 's/^/${params.string_to_append}/' \
    | sed 's/,/,${params.string_to_append}/' \
    >> "${input_csv}.appended.csv"