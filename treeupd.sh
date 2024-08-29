cat $1 | sed -e 's/(/((/' -e 's/)/))/' -e 's/,/),/' -e 's/, */,(/'| sed -e 's/^(//' -e 's/)$//' > o;cat o|cut -d, -f1|sort|uniq>t;paste t t -d\;|sed -n "s/^/echo -n '(/p"|sed -n "s/;/,(';grep -o '/p"|sed  "s/$/,.*' o|sed 's\/^.*,\/\/'|paste -s -d,/e" | sed 's/$/))/'>t2;

cat o|cut -d, -f1|sort|uniq>k;paste k k -d\!|grep -n ''|sed  "s/^/var=\$\(sed -n '/"| sed -e "s/:/p' t2\);sed -E \"\/^\\\/" -e "s/\\\(/\\\(*/" -e 's/)!/\/!/'| sed -e "s/!/!s\/\\\/" -e "s/)$/\\\)/"| sed -n "s/$/\/\$var\/\" t2>t;cp t t2/e"

cat t2|wc -L|sed "s/^/grep '.\\\{/" |sed "s/$/\\\}' t2/e"
rm t2 t o k

