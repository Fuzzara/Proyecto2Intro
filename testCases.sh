#!/bin/bash
PYTHON_SCRIPT="camposwesleygonzalfelipe.py"
INPUT_DIR="inputs"
OUTPUT_DIR="outputs"
mkdir -p "$OUTPUT_DIR"
INPUT_FILES=("$INPUT_DIR"/*.txt)
for INPUT_FILE in "${INPUT_FILES[@]}"; do
    BASE_NAME=$(basename "$INPUT_FILE")
    OUTPUT_FILE="$OUTPUT_DIR/${BASE_NAME/input/output}"
    START_TIME=$(date +%s%3N)
    python3 "$PYTHON_SCRIPT" < "$INPUT_FILE" > "$OUTPUT_FILE"
    END_TIME=$(date +%s%3N)
    DURATION=$((END_TIME - START_TIME))
    echo "Procesado $INPUT_FILE -> $OUTPUT_FILE en $DURATION milisegundos!!!"
done

