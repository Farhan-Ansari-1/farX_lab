#!/bin/bash
REPO=~/farx_lab
MSG="${1:-auto: update $(date +"%Y-%m-%d %H:%M:%S")}"
git -C "$REPO" add .
git -C "$REPO" commit -m "$MSG" || echo "Nothing to commit"
git -C "$REPO" push origin main
