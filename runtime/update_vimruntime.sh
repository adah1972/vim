#! /bin/bash
VIMRUNTIME_RT="/cygdrive/c/Program Files (x86)/Vim/vim74"
cd "`dirname \"$0\"`"
rsync -avu --delete "autoload/" "$VIMRUNTIME_RT/autoload/"
rsync -avu --delete "colors/"   "$VIMRUNTIME_RT/colors/"
rsync -avu --delete "compiler/" "$VIMRUNTIME_RT/compiler/"
rsync -avu --delete --exclude='*.1' --exclude='*.awk' --exclude='*.c' --exclude='*.info' --exclude='*.man' --exclude='*.pl' --exclude='Makefile' "doc/" "$VIMRUNTIME_RT/doc/"
rsync -avu --delete "ftplugin/" "$VIMRUNTIME_RT/ftplugin/"
rsync -avu --delete "indent/"   "$VIMRUNTIME_RT/indent/"
rsync -avu --delete "keymap/"   "$VIMRUNTIME_RT/keymap/"
rsync -avu          "lang/"     "$VIMRUNTIME_RT/lang/"
rsync -avu --delete "macros/"   "$VIMRUNTIME_RT/macros/"
rsync -avu --delete "plugin/"   "$VIMRUNTIME_RT/plugin/"
#rsync -avu --delete "print/"    "$VIMRUNTIME_RT/print/"
rsync -avu --delete "syntax/"   "$VIMRUNTIME_RT/syntax/"
rsync -avu --delete "tools/"    "$VIMRUNTIME_RT/tools/"
rsync -avu --delete "tutor/"    "$VIMRUNTIME_RT/tutor/"
rsync -avu *.vim "$VIMRUNTIME_RT/"
