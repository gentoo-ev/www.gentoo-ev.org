#! /bin/bash
dir=${1:-.}
find "${dir}" -name \*.png | sort | while read i ; do
    zopflipng -y "${i}" "${i}" || exit 1
done | grep 'Optimizing\|Percentage of original'
