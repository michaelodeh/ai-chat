# FROM ollama/ollama:latest

# # pull model at build time

# COPY ./entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# EXPOSE 11434

# CMD ["./entrypoint.sh"]

FROM  ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN apt-get install zstd

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN ollama run gemma3

EXPOSE 11434

CMD ["ollama", "serve"]