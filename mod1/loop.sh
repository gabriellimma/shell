#!/usr/bin/env bash

echo "first for type"
for (( i = 0; i < 10; i++ )); do
  echo $i
done

#seq is a native bash command that creates a sequence.
#its syntax is seq (start number to optionalnumber)
#or seq (number) that by default starts at number 1.
echo "second for type"
for i  in $(seq 0 10); do
  echo $i
done
echo
echo "third for type (array)"

#array syntax
Nomes=(
'Gabriel'
'Solly'
'Rebeca'
'Amy'
'Jake'
)

#how to show an specific item into array index?
#echo ${array[index]} in this case: ${Nomes[0]}
#expected output is: 'Gabriel'
#goes to all array indexes and store the data into i
for i in "${Nomes[@]}"; do
  echo $i
done

echo "using while"
#to use while we need an external counter to initialize the function
count=0

#in this case, to go through all array items, we need to set de counter
#to point x to limit, 0 - arr.lenght.
#in bash, to show an array lenght we declare the array variable like:
#              ${arr[@]}
# where the @ stands for 'all' and the #  before the arr name stands for
# outputing this array legth.
echo "array lenght is: ${#Nomes[@]}" #returns array lenght

#get all the array data and shows to us.
while [[ $count -lt "${#Nomes[@]}" ]]; do
  echo ${Nomes[$count]}
  count=$(($count+1))
done
