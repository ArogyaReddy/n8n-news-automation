FROM node:18-alpine

# Install dependencies for n8n
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    giflib-dev

# Install n8n globally
RUN npm install -g n8n

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV GENERIC_TIMEZONE=UTC
ENV N8N_LOG_LEVEL=info

# Create data directory
RUN mkdir -p /.n8n && chmod 777 /.n8n

EXPOSE 5678

CMD ["n8n", "start"]