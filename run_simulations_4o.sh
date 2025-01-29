SOURCE="env"
TARGET="profit"
NUM_STEPS=10

# Array of number of steps to run sequentially
STEPS_ARRAY=(64)

# Run simulations with increasing steps
for steps in "${STEPS_ARRAY[@]}"; do
    # echo "Running simulation with ${steps} steps..."
    # python run_simulation.py \
    #     --source "${SOURCE}" \
    #     --target "${TARGET}" \
    #     --num_steps "${NUM_STEPS}" \
    #     --parallel \
    #     --num_instrumental_steps "${steps}" \
    #     --model "gpt-4o-2024-11-20" \
    #     --run_range "11" "13" \
    #     --branch_from "1" "$((steps + 1))" \
    #     --checkpoint_dir "checkpoints_4o"
    
    # # Check if the previous command was successful
    # if [ $? -ne 0 ]; then
    #     echo "Error occurred during simulation with ${steps} steps"
    #     exit 1
    # fi

    # echo "Running simulation with ${steps} steps..."
    # python run_simulation.py \
    #     --source "${SOURCE}" \
    #     --target "${TARGET}" \
    #     --num_steps "${NUM_STEPS}" \
    #     --parallel \
    #     --num_instrumental_steps "${steps}" \
    #     --model "gpt-4o-2024-11-20" \
    #     --run_range "14" "16" \
    #     --branch_from "1" "$((steps + 1))" \
    #     --checkpoint_dir "checkpoints_4o"
    
    # # Check if the previous command was successful
    # if [ $? -ne 0 ]; then
    #     echo "Error occurred during simulation with ${steps} steps"
    #     exit 1
    # fi

    echo "Running simulation with ${steps} steps..."
    python run_simulation.py \
        --source "${SOURCE}" \
        --target "${TARGET}" \
        --num_steps "${NUM_STEPS}" \
        --parallel \
        --num_instrumental_steps "${steps}" \
        --model "gpt-4o-2024-11-20" \
        --run_range "17" "20" \
        --branch_from "1" "$((steps + 1))" \
        --checkpoint_dir "checkpoints_4o"
    
    # Check if the previous command was successful
    if [ $? -ne 0 ]; then
        echo "Error occurred during simulation with ${steps} steps"
        exit 1
    fi
done

echo "Done"