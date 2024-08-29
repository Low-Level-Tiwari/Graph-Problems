
cat $1 |sed 's/, */, /'|sed -e 's/(//' -e 's/)//'>o;cat o|cut -d, -f1|sort|uniq>t;paste t t -d\;|sed -n "s/^/echo -n '(/p"|sed -n "s/;/,(';grep -o '/p"|sed  "s/$/,.*' o|sed 's\/^.*,\/\/'|paste -s -d,/e" | sed 's/$/))/'>t2;

cat o|cut -d, -f1|sort|uniq| grep -n '' |sed  "s/^/var=\$\(sed -n '/"| sed  "s/:/p' t2\);sed \"s\/ /"| sed -n "s/$/\/\$var\/\" t2>t;cp t t2/e"

cat t2|wc -L|sed "s/^/grep '.\\\{/" |sed "s/$/\\\}' t2/e"
rm t2 t o

