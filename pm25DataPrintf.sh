str=`awk '/数据更新时间/' *.html | head -1 | awk '{print $2,$3}' | sed -e 's/数据更新时间：//g' -e $'s/\'//g' -e 's/,/ /g'`
awk '/td|tr/{print $1}' *.html | awk 'BEGIN{FS="\n";RS="tr>";}{print $2,$6}' | awk 'gsub("<td>|</td>","")'| awk '{$1="'"$str"'" $1;print}'
