#!/bin/bash
./fetchLogs.sh
cd logs
pwd
for fileName in * ; do
    while read line;do
        if [[ $line = "Author: "* ]];then
            if [[ $(grep "${line}" "../developersInfo.txt") ]]; then
                echo "repeated info"
            else
                echo "added ${line}"
                echo $line >> ../developersInfo.txt
            fi
        fi
    done < ${fileName}
done
cd ..
rm -rf logs
echo "==============================================="
echo "========== Emails parsed succesfully =========="
echo "================= (I hope) ===================="
echo "==============================================="
echo "=you can find the emails in developersInfo.txt="
echo "==============================================="
