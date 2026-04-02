FROM n8nio/n8n:latest
USER root
RUN mkdir -p /home/node/.n8n && chown -R 1000:1000 /home/node/.n8n
USER 1000
ENV N8N_PORT=10000
EXPOSE 10000
CMD ["n8n", "start"]
