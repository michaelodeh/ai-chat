FROM ollama/ollama:latest

# pull model at build time
RUN ollama run gemma3

EXPOSE 11434

CMD ["ollama", "serve"]