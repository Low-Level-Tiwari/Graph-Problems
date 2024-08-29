cat $1 |cut -d, -f1|sort|uniq>t;paste t t -d\;|sed -n "s/^/echo -n /p"|sed -n "s/;/:;grep -o '/p"|sed  "s/$/,.*' $1|sed 's\/^.*,\/\/'|paste -s -d,/e";rm t;
