FROM n8nio/n8n:latest

# Switch to root to install dependencies
USER root

# Install wget for health checks
RUN apk add --no-cache wget

# Switch back to node user
USER node

# Set working directory
WORKDIR /home/node

# Set environment variables
ENV NODE_ENV=production
ENV N8N_LOG_LEVEL=info
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV GENERIC_TIMEZONE=UTC
ENV DB_TYPE=sqlite
ENV N8N_ENCRYPTION_KEY=n8n-encryption-key-for-railway

# Create n8n directory with proper permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Expose port (Railway will override with PORT env var)
EXPOSE $PORT

# Copy startup script
COPY start.sh /home/node/start.sh
RUN chmod +x /home/node/start.sh

# Start script that uses Railway's PORT variable
CMD ["/home/node/start.sh"]