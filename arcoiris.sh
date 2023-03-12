LANG=en_US
p=3.14
i=0
while true; do
i=$(bc -l <<< "$i+0.04")
r=$(bc -l <<< "128+127*s($i)")
g=$(bc -l <<< "128+127*s($i+$p*(1/3))")
b=$(bc -l <<< "128+127*s($i+$p*(2/3))")
printf "\033[48;2;${r%%.*};${g%%.*};${b%%.*}m\n"
sleep .01
done;
