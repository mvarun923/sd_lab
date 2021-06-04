echo "Fibonacci Series"
read -p "Enter the limit : " l
a=0
b=1
echo "The Fibonacci Series is : "
for (( i=0; i<l; i++ ))
do
    echo -n "$a "
    r=$((a + b))
    a=$b
    b=$r
done    