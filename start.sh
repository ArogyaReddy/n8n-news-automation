#!/bin/sh

# Railway startup script for n8n
echo "🚀 Starting n8n on Railway..."

# Use Railway's PORT or default to 5678
export N8N_PORT=${PORT:-5678}
export N8N_HOST=0.0.0.0
export N8N_PROTOCOL=http

echo "📡 Starting n8n on port $N8N_PORT..."

# Start n8n
exec n8n start