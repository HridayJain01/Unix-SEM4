#!/bin/bash

echo "Welcome to Simple and Compound Interest Calculator"
echo "Enter Principal amount: "
read principal

echo "Enter rate of interest (in percentage): "
read rate

echo "Enter time (in years): "
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
echo "Simple Interest: $simple_interest"

# Calculate compound interest
amount=$(($principal * (1 + $rate/100) ^ $time" ))
compound_interest=$(($amount - $principal"))
echo "Compound Interest: $compound_interest"
