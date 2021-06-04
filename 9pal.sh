read -p "Enter the string : " s
l=${#s}
i=0
flag=0
while [ $i -lt $((l/2)) ]
do
    if [ ${s:i:1} != ${s:l-i-1:1} ]
    then
        flag=1
        echo "Given string is not Palindrome"
        break
    fi
i=$((i+1))       
done

if [ $flag -eq 0 ]
then   
    echo "Given String is Palindrome"
fi    