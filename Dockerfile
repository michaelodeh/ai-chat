# FROM ollama/ollama:latest

# # pull model at build time
# RUN ollama run gemma3

# EXPOSE 11434

# CMD ["ollama", "serve"]

FROM  ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN ollama run gemma3

EXPOSE 11434

CMD ["ollama", "serve"]