#!/bin/sh
set -e
SCRIPTFILE=`readlink -f $0`
SRCDIR=`dirname "$SCRIPTFILE"`
if ! command -v kpsewhich 1>/dev/null 2>&1; then
    echo Could not find kpsewhich. Is TeXLive installed?
    exit 1
fi
TEXMFHOME=`kpsewhich -var-value TEXMFHOME`
DESTDIR="$TEXMFHOME/tex/latex/agdsn"
mkdir -p "$DESTDIR"
for logo in "$SRCDIR"/*.pdf; do
    install -v -t "$DESTDIR" "$logo"
done
install -v -t "$DESTDIR" "$SRCDIR/agdsn-brief.cls"

