#!/bin/bash

set -e

echo "Starting Ollama..."
ollama serve &

echo "Waiting for Ollama API..."
until curl -s http://127.0.0.1:11434/api/tags > /dev/null; do
  sleep 2
done

echo "Pulling model..."
ollama run gemma3

echo "Ollama ready."
wait