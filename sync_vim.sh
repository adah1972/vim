#! /bin/sh
git fetch upstream
git merge -m 'Sync with upstream master.' upstream/master
