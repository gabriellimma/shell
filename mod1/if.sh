#!/usr/bin/env bash

##comparing two variables values##

VAR="a"
VAR2=""

#if syntax in ss
if [[ "$VAR" = "$VAR2" ]]; then
  echo "equals"
fi

##redux form when we have just one action inside the if##
# && operator tests if the condition is true.
[ "$VAR" = "$VAR2" ] && echo "Equals"

#|| operator tests if the condition is false.
[ "$VAR" = "$VAR2" ] || echo "Non Equals"
