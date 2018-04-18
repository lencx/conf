#!/bin/bash

ios_path="~"

if [ -z $1 ]
then
    echo "$ pkg path <项目路径(绝对路径)>"
    echo "$ pkg <IOS打包版本>"
elif [ $1 == "path" ]
then
    # sed -i '2c cREPLACE LINE' pkg
    # sed -i ".bak" '2c\'$'\nios_path=\n' pkg.sh
    sed -i ".bak" '2c\'$'\nios_path='${2}$'\n' ~/pkg.sh
else
    cd ${ios_path}/buglySymboliOS2.4.3 && sh -x buglySymboliOS.sh ${ios_path}/BonDay.app.dSYM -o ${ios_path}/bugly."$1".zip
fi
