read -p "Enter the limit: " l
c=0
echo "Enter the numbers: "
for((i=0; i<l; ++i))
do
  
   read x 
   a[i]=$x
done
echo 
echo "****MENU****"
echo "1: INSERTION"
echo "2: DELETION"
read -p "Enter your choice (1/2): " op 
case $op in
    1)
        read -p "Enter the number to INSERT: " num
        read -p "Enter the position: " p
        if [[ p -gt l+1 ]]; 
            then
            echo "Postion is greater than limit"
            else
            while [ $i -ge  $p ]
            do
                a[$(($i + 1))]=${a[$i]}
                i=$(($i - 1))
            done
            a[$p]=$num
            echo "New Array :"
            for((i=0; i<l+1; ++i))
            do
                echo ${a[i]}
            done
        fi
        ;;
    2)
            read -p "Enter the number to DELETE: " num2
            for(( i=0; i<l; ++i))
            do
                if [[ ${a[i]} -eq num2 ]];
                then
                    unset a[i]
                    c=1
                fi
            done
            if [[ c -eq 0 ]]
            then
                echo $num2 " Number not Present"
            else 
            echo "New Array :"
            for i in ${a[@]}
                do
                    echo $i
                done
            fi
        ;; 
    *)
    echo " Wrong choice"
    ;;
    esac