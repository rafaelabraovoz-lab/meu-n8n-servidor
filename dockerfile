FROM n8nio/n8n:latest

USER root

# Garante as permissões da pasta
RUN mkdir -p /home/node/.n8n && chown -R 1000:1000 /home/node/.n8n

USER 1000

# Porta padrão do Render
ENV PORT=10000
ENV N8N_PORT=10000

# Comando direto pelo caminho do executável
CMD ["n8n", "start"]
