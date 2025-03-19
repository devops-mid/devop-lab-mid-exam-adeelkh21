#!/bin/bash
echo "Running tests..."

# Activate virtual environment
echo "Activating the virtual environment..."
source venv/bin/activate

# Run unit tests
echo "Running unit tests..."
pytest tests/unit --disable-warnings

# Run integration tests
echo "Running integration tests..."
pytest tests/integration --disable-warnings

echo "All tests completed successfully."

