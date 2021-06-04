read -p "Enter the limit : " l 
flag=0
echo "Enter the numbers : "
for (( i=0; i<l; i++ ))
do
    read a[i]
done    
read -p "Enter the number to Search : " n 
for (( i=0; i<l; i++ ))
do
    if [ ${a[i]} -eq $n ]
    then
        flag=$(( flag + 1 ))
    fi    
done
if  [ $flag -eq 0 ]
then
    echo "$n not found"
else
    echo "$n occured $flag times" 
fi           