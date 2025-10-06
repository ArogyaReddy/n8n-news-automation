# Use official n8n image
FROM n8nio/n8n:latest

# Set minimal environment variables  
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Expose port
EXPOSE 5678

# Use default n8n entrypoint
CMD ["n8n"]