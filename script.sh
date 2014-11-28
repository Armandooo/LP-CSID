for i in $(find . -type f )
	do 
		#echo $i
		count=$(cat $i | wc -l)
		#echo $count
		if [ $count -gt 10 ]
			then echo "$i;$count"
			n=$( echo $i | sed 's/f/g/g')
			mv $i $n
		fi
done
