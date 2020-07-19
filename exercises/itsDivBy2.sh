#!/usr/bin/env bash
# a lace that counts 0 to 10 and identifies if the number
# is divisible by two.
# if true, write a message.

#using seq if redux
for i in $(seq 0 10); do
  [ $((i%2)) -eq 0 ] && echo "${i} its divisible by two" || echo "${i} isn't divisible by two"
done
echo ""

#using for if
for (( i = 0; i <= 10; i++)); do
  if [[ $((i%2)) -eq 0 ]]; then
    echo "${i} it's divisible by two"
  else
    echo "${i} isn't divisible by two"
  fi
done
echo ""

#using while if
count=0
while [[ $count -le 10 ]]; do
  if [[ $((count%2)) -eq 0 ]]; then
    echo "${count} it's divisible by two"
  else
    echo "${count} isn't divisible by two"
  fi
  count=$(($count+1))
done
