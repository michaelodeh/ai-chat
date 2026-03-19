#!/bin/bash

set -e

echo "Starting Ollama..."
ollama serve &


echo "Waiting for Ollama API..."
until ollama list > /dev/null 2>&1; do
  sleep 2
done

echo "Pulling model..."
ollama pull gemma3

echo "Ollama ready."
wait