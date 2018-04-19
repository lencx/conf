#!/bin/bash

sh_path=~/pkg.sh
app_name="app"
proj_path="~"
pkg_path="~"
bugly_dir="bugly"

if [ -z $1 ]
then
    echo "  $ pkg path <APP Name> <Project Path> <Package Path> <Bugly Dir>         (Absolute path)"
    echo "  $ pkg <Version Number>"
elif [ $1 == "path" ]
then
    sed -i ".bak" '4c\'$'\napp_name='$2$'\n' $sh_path
    sed -i ".bak" '5c\'$'\nproj_path='$3$'\n' $sh_path
    sed -i ".bak" '6c\'$'\npkg_path='$4$'\n' $sh_path
    sed -i ".bak" '7c\'$'\nbugly_dir='$5$'\n' $sh_path
else
    cd ${proj_path}/${bugly_dir} && sh -x buglySymboliOS.sh ${proj_path}/${app_name}.app.dSYM -o ${pkg_path}/bugly."$1".zip
fi
