#!/bin/bash
cat ~/.ssh/id_*.pub | ssh "$@" '
    mkdir -pm 0700 ~/.ssh &&
    while read -r ktype key comment; do
        if [[ ! -e  ~/.ssh/authorized_keys ]] || ! (grep -Fw "$ktype $key" ~/.ssh/authorized_keys | grep -qsvF "^#"); then
            echo "$ktype $key $comment" >> ~/.ssh/authorized_keys
        fi
    done
'