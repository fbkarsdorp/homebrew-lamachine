#!/bin/bash
#Github => Homebrew Release Update script
# Assumes releases are named like v0.1.2 (the v is mandatory)

for recipe in Formula/*.rb; do
    OLDVERSION=$(grep -oe "v[0-9\.].*\/" $recipe)
    OLDVERSION=${OLDVERSION%?} #strip trailing /
    OLDVERSION=${OLDVERSION:1} #strip leading v
    echo "Current Version: ${OLDVERSION}"
    _gituser=LanguageMachines
    _gitname=$(basename $recipe)
    _gitname=${_gitname%.*}
    NEWVERSION=$(curl https://api.github.com/repos/${_gituser}/${_gitname}/releases 2> /dev/null | jq -r '.[0].tag_name | match("\\d(\\.\\d+)+").string')
    echo "Latest Version: ${NEWVERSION}"
    if [ "$OLDVERSION" = "$NEWVERSION" ]; then
        echo "Already up to date...">&2
        continue
    fi
    SOURCE="https://github.com/${_gituser}/${_gitname}/releases/download/v${NEWVERSION}/${_gitname}-${NEWVERSION}.tar.gz"
    if [ ! -f "v${NEWVERSION}.tar.gz" ]; then
        wget $SOURCE
        if [ $? -ne 0 ]; then
            echo "Unable to download release from $SOURCE" >&2
            exit 2
        fi
    fi
    sed -i "s|$OLDVERSION|$NEWVERSION|g" $recipe
    SHA256SUM=$(sha256sum ${_gitname}-${NEWVERSION}.tar.gz | cut -d " " -f1)
    sed -i "s/sha256\s.*/sha256 \\\"${SHA256SUM}\\\"/g" $recipe
done



