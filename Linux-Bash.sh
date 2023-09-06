#!/bin/bash

# Read user input for X and Y
echo "Enter the value for X: "
read X
echo "Enter the value for Y: "
read Y

# Compare X and Y and print the result
if [ "$X" -lt "$Y" ]; then
  echo "X is less than Y"
elif [ "$X" -gt "$Y" ]; then
  echo "X is greater than Y"
else
  echo "X is equal to Y"
fi



#!/bin/bash

# Read two integers from the user
echo "Enter the first integer (X): "
read X
echo "Enter the second integer (Y): "
read Y

# Compare X and Y and print the result
if [ "$X" -lt "$Y" ]; then
  echo "X is less than Y"
elif [ "$X" -gt "$Y" ]; then
  echo "X is greater than Y"
else
  echo "X is equal to Y"
fi


#!/bin/bash

# Read the mathematical expression from the user
echo "Enter a mathematical expression:"
read expression

# Use bc to evaluate the expression with a specified scale (decimal places)
result=$(echo "scale=3; $expression" | bc)

# Display the result rounded to 3 decimal places
echo "Result: $result"
