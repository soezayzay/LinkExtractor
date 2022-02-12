#!/bin/bash
#banner
#coder : $0ul
#date  : 12/2/2022
printf $'\t\e[1;34m      ,,                ,,   \e[0m\n'
printf $'\t\e[1;34m    (((((              ))))) \e[0m\n'
printf $'\t\e[1;34m   ((((((              )))))) \e[0m\n'
printf $'\t\e[1;34m   ((((((              )))))) \e[0m\n'
printf $'\t\e[1;34m    (((((,r@@@@@@@@@@e,))))) \e[0m\n'
printf $'\t\e[1;34m     (((@@@@@@@@@@@@@@@@))) \e[0m\n'
printf $'\t\e[1;34m      \@@\e[1;31m/,:::,\/,:::,\\\e[0m\e[1;34m@@/ \e[0m\n'
printf $'\t\e[1;34m     /@@@\e[1;31m|:::::||:::::|\e[1;34m@@@\ \e[0m\n'
printf $'\t\e[1;34m    / \@@@\e[1;31m\':::\'/\':::\'/\e[1;34m@@@ \ \e[0m\n'
printf $'\t\e[1;34m   /  /@@@@@@@//\\@@@@@@@\  \ \e[0m\n'
printf $'\t\e[1;34m  (  /  \'@@@@@====@@@@@\'  \  ) \e[0m\n'
printf $'\t\e[1;34m   \(     /          \     )/\e[0m\n'
printf $'\t\e[1;34m     \   (            )   /\e[0m\n'
printf $'\t\e[1;34m          \          / \e[0m\n'
printf $'\t\t\e[41m\e[1;37m Author : $0ul\e[0m\n\n'
#url
url=$1
curl -A "Mozilla/5.0" -skLm 10 $url | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" > url_links.txt
#count
count=0
while IFS= read -r links;do 
count=$((count+1))
echo -e "\e[1;33m[\e[1;31m$count\e[1;33m] \e[1;37m $links \e[0m"
done < url_links.txt