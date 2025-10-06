FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_LOG_LEVEL=info

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=60s \
  CMD curl -f http://localhost:5678/healthz || exit 1

# Default command
CMD ["n8n", "start"]