#!/bin/bash
WorkspaceDir=$(cd `dirname $0`; pwd)/..
BaseHost="https://github.com/caifujiasu"
BaseDirArray=(testShell
D)

cd $WorkspaceDir

for item in ${BaseDirArray[*]}
do
    if [[ $(ls | grep -c $item) > 0 ]]; then
        echo "======================$item 仓库存在======================"
    else
            echo "======================$item 不存在，执行git clone命令======================"
        completedUrl=$BaseHost/$item.git
        echo "start clone framework : $completedUrl"
        git clone $completedUrl
        echo "end clone framework : $completedUrl"
    fi
    echo "进入 $item 文件夹"
    cd $item
    echo "start checkout master : $item"
    git checkout master
    git pull  >> $logPath 2>&1
    echo "======================$item 处理结束======================"
    cd $WorkspaceDir
done

