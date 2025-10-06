FROM n8nio/n8n:latest

# Switch to root for setup
USER root

# Install wget for health checks
RUN apk add --no-cache wget

# Create n8n directory with proper permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch back to node user
USER node

# Set working directory
WORKDIR /home/node

# Set environment variables for Railway
ENV NODE_ENV=production
ENV N8N_LOG_LEVEL=info
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV GENERIC_TIMEZONE=UTC
ENV DB_TYPE=sqlite
ENV N8N_ENCRYPTION_KEY=n8n-encryption-key-for-railway

# Expose port
EXPOSE 5678

# Simple direct start command
CMD ["sh", "-c", "N8N_PORT=${PORT:-5678} n8n start"]