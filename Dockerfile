FROM ollama/ollama:latest

# pull model at build time
RUN ollama pull llama3

EXPOSE 11434

CMD ["ollama", "serve"]