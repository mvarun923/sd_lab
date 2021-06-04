read -p "Enter the number : " n
r=0
rev=""
x=$n
while [ $n -gt 0 ]
do
    r=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$rev$r
done
echo "$rev is a reverse order of $x"