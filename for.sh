#!/bin/bash

echo "Welcome to Fibonacci Number Generator and Prime Number Checker"

# Prompt the user for the number of Fibonacci terms
echo "Enter the number of Fibonacci terms: "
read num_terms

echo "Fibonacci Series up to $num_terms terms:"
a=0
b=1
for ((i=0; i<num_terms; i++)); do
    echo -n "$a "
    temp=$a
    a=$b
    b=$((temp + b))
done
echo

# Prompt the user to check if a number is prime
echo "Enter a number to check if it's prime: "
read number

# Check if the number is prime and display the result
if [ $number -le 1 ]; then
    echo "$number is not prime"
else
    is_prime=true
    for ((i=2; i*i<=number; i++)); do
        if [ $((number % i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done
    if [ "$is_prime" = true ]; then
        echo "$number is prime"
    else
        echo "$number is not prime"
    fi
fi
