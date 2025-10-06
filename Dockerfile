FROM node:18-alpine

# Install dependencies
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    giflib-dev

# Create app directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV GENERIC_TIMEZONE=UTC
ENV N8N_LOG_LEVEL=info

# Create n8n user
RUN addgroup -g 1000 n8n && \
    adduser -u 1000 -G n8n -s /bin/sh -D n8n

# Create n8n directory
RUN mkdir -p /home/n8n/.n8n && \
    chown -R n8n:n8n /home/n8n

USER n8n

EXPOSE 5678

CMD ["n8n", "start"]