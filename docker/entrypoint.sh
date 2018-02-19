#!/bin/sh

HUGO_OUTPUT="${OUTPUT:=/output}"
HUGO=/usr/local/sbin/hugo

THEME=hugo-room308-bootstrap-theme
THEME_REPO=https://github.com/yamaoka-kitaguchi-lab/hugo-room308-bootstrap-theme

if [ ! -e themes ]; then
    mkdir -p themes
    git clone $THEME_REPO themes/$THEME
fi

$HUGO --destination=${HUGO_OUTPUT}
