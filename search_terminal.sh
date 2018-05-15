#!/bin/bash

if [ "$1" == "-h" ];then
    echo "usage:"
    echo "  \e[1;32m-b    \e[1;31mBaidu"
    echo "  \e[1;32m-B    \e[1;31mBing"
    echo "  \e[1;32m-g    \e[1;31mGoogle"
    echo "  \e[1;32m-gm   \e[1;31mGmail"
    echo "  \e[1;32m-git  \e[1;31mGithub"
    echo "  \e[1;32m-n    \e[1;31mnpm"
    echo "  \e[1;32m-o    \e[1;31mOther"
    echo "  \e[1;32m-tc   \e[1;31mCN => EN"
    echo "  \e[1;32m-te   \e[1;31mEN => CN\e[0m"
else
    case $1 in
        -b) web='https://www.baidu.com/s?wd=';;
        -B) web='https://www.bing.com/search?q=';;
        -g) web='https://www.google.com/search?q=';;
        -gm) web='https://mail.google.com/mail/u/0/#inbox';;
        -git) web='https://github.com/search?q=';;
        -n) web='https://www.npmjs.com/search?q=';;
        -o) web='http://';;
        -tc) web='https://translate.google.cn/#zh-CN/en/';;
        -te) web='https://translate.google.cn/#en/zh-CN/';;
        *) web='https://www.google.com/search?q=';;
    esac

    for item in $@
    do
        if [[ "$item" != "-b" && "$item" != "-B" && "$item" != "-g" && "$item" != "-gm" && "$item" != "-git" && "$item" != "-n" && "$item" != "-o" && "$item" != "-tc" && "$item" != "-te" ]];then
            if [ "$searchWord" == "" ];then
                searchWord="$item"
            else
                searchWord="$searchWord $item"
            fi
        fi
    done;
    
    echo "Loading ..."
    open "${web}${searchWord}"
fi
