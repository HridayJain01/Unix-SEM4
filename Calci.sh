#!/bin/bash

while true; do
    echo "Welcome to Basic Calculator"
    echo "Enter first number: "
    read num1

    echo "Enter second number: "
    read num2

    echo "Select operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read choice

    case $choice in
        1)
            result=$((num1 + num2))
            echo "Result: $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Result: $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Result: $result"
            ;;
        4)
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $result"
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac

    echo "Do you want to perform another calculation? (yes/no)"
    read answer
    if [ "$answer" != "yes" ]; then
        break
    fi
done
