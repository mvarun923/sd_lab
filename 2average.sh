read -p "Enter the limit: " l
i=1
s=0
echo "Enter the numbers: "
while [ $i -le $l ]
do
    read x
    s=$((s + x))
    i=$((i + 1))
done
echo "Sum is: " $s
echo "Average is: " $((s / l))