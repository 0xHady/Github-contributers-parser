#!/bin/bash
clear
path=`pwd`
mkdir logs
while read gitLink; do
    cd $path
    sleep 0.5
    echo "reading link...."
    sleep 0.5
    echo "link found: $gitLink"
    sleep 0.5
    arr=(` echo $gitLink | tr '/' ' ' `)
    projectName=${arr[3]}
    projectPath="${path}/${projectName}"
    echo "Cloning project: ${projectName}"
    sleep 0.5
    git clone $gitLink 
    echo "project cloned into: ${projectPath}"
    echo
    cd $projectPath
    git log > ${path}/logs/${projectName}_logs.txt
    rm -rf ${projectPath}
done < github_links_here.txt
