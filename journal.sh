#!/usr/bin/env bash

input="$@"
file_name=$(gdate -d "$input" "+${JOURNAL_PATH:-$HOME/.journal}/%Y/%B/%d.md") && \
        mkdir -p $(dirname "$file_name") && \
        ${EDITOR:-vim} "$file_name"
