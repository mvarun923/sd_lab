read -p "Enter number 1: " a
read -p "Enter number 2: " b
read -p "Enter number 3: " c

if [ $a -gt $b ] && [ $a -gt $c ]
then
    echo "Largest is :" $a
elif [ $b -gt $c ]
then
    echo "Largest is :" $b 
else
    echo "Largest is :" $c 
fi