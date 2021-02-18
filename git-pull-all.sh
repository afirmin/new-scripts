#!/bin/bash
#
#####################################################################################
#
# pulls down all the latest updates to the various
# git repositories
# I added it to cron as:
#
# 30 9 * * * /usr/local/bin/git-pull-all.sh >> /usr/local/logs/git-pull-all.logs 2>&1
#
# needs a bit of work
# needs a better idea of where the base
# directory needs to be - itms

echo "######################"
echo "starting git pull runs"
echo "######################"

cd /Users/anthony/my-dev-direcotry

for i in $(ls -d1 * | grep -v "git-pull-all")
do 
    echo "cd'ing into $i"
    cd $i
    git pull origin master
    cd .. 
done

echo "#######################"
echo "finishing git pull runs"
echo "#######################"

