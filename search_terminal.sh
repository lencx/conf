#!/bin/bash

# Usage:
# echo alias s=\". ~/search_terminal.sh\" >> ~/.zshrc

searchWord=""
s1=\#en/zh-CN/

if [ "$1" == "-h" ];then
    echo "usage:"
    echo "   \033[32m-b    \033[31mBaidu"
    echo "   \033[32m-B    \033[31mBing"
    echo "   \033[32m-g    \033[31mGoogle"
    echo "   \033[32m-gm   \033[31mGmail"
    echo "   \033[32m-git  \033[31mGithub"
    echo "   \033[32m-n    \033[31mnpm"
    echo "   \033[32m-o    \033[31mOther"
    echo "   \033[32m-t    \033[31mCN => EN\033[0m"
else
    case $1 in
        -b) web=https://www.baidu.com/s?wd=;;
        -B) web=https://www.bing.com/search?q=;;
        -g) web=https://www.google.com/search?q=;;
        -gm) web=https://mail.google.com/mail/u/0/'#'inbox;;
        -git) web=https://github.com/search?q=;;
        -n) web=https://www.npmjs.com/search?q=;;
        -o) web=http://;;
        -t) web=https://translate.google.cn/$s1;;
        *) web=https://www.google.com/search?q=;;
    esac

    for item in $@
    do
        if [[ "$item" != "-b" && "$item" != "-B" && "$item" != "-g" && "$item" != "-gm" && "$item" != "-git" && "$item" != "-n" && "$item" != "-o" && "$item" != "-t" ]];then
            if [ "$searchWord" == "" ];then
                searchWord="$item"
            else
                searchWord="$searchWord $item"
            fi
        fi
    done;

    echo "Loading ..."
    open ${web}${searchWord}
fi
