#!/bin/bash
# A script to check that all examples compile and run.
# Run this script from the root directory of the workshop repository.
# Note that this script is expected to run successfully.

# Function to execute example
execute_example() {
    local example_name=$1
    local example_dir="$example_name"
    
    echo "[CHECK] CHECKING THE $example_name EXAMPLE"
    
    # Navigate to the example directory
    cd "$example_dir" || exit 1
    
    # Ensure the run.sh script is executable and execute it
    chmod +x ./run.sh
    ./run.sh
    
    # Return to the root directory
    cd ..
}

# List of examples to check
examples=("auction" "basic_bank" "battleship" "tictactoe" "token" "vote")

# Loop through each example and execute it
for example in "${examples[@]}"; do
    execute_example "$example"
done
