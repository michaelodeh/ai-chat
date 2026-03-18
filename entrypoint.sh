#!/bin/bash

# Start Ollama server in background
ollama serve & 

# Wait for Ollama server to be ready
while ! curl -s http://localhost:11434/ >/dev/null; do
  echo "Waiting for Ollama server to start..."
  sleep 1
done

# Pull the model
echo "Pulling gemma3 model..."
ollama pull gemma3

# Keep the container running
echo "Ollama server is running with gemma3 model. Press Ctrl+C to stop."
wait