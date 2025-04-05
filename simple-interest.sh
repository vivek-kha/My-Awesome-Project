#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 principal rate time"
    exit 1
fi

# Get the input values
principal=$1
rate=$2
time=$3

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
