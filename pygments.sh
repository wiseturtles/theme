#!/bin/bash
# 这个脚本用于生成自己感觉不错的一些主题的css文件

themes="default emacs friendly colorful autumn murphy manni monokai perldoc pastie borland trac native fruity bw vs tango"
OUT_DIR="static/pygments"
if [ ! -d $OUT_DIR ]; then
    mkdir -p $OUT_DIR
fi

for theme in $themes
do
    pygmentize -S $theme -f html -a .highlight > $OUT_DIR/$theme.css
done
