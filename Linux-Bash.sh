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


#!/bin/bash

# Read the mathematical expression from the user
read -p "Enter a mathematical expression: " expression

# Replace ^ with **
expression=$(echo "$expression" | sed 's/\^/**/g')

# Remove spaces around operators
expression=$(echo "$expression" | sed 's/ \([-+*/]\) /\1/g')

# Calculate the result with higher precision
result=$(echo "scale=10; $expression" | bc)

# Round the result to 3 decimal places
rounded_result=$(printf "%.3f\n" $result)

# Display the result
echo $rounded_result


#!/bin/bash

# Read the number of integers (N)
read N

# Initialize a variable to hold the sum
sum=0

# Loop to read the integers and calculate the sum
for ((i=0; i<N; i++))
do
    read num
    sum=$((sum + num))
done

# Calculate the average
average=$(echo "scale=3; $sum / $N" | bc)

# Print the average
printf "%.3f\n" $average

