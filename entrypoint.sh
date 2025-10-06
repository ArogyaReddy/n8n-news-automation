#!/bin/bash
# Render entrypoint script

# Set n8n port to Render's PORT or default to 5678
export N8N_PORT=${PORT:-5678}

echo "Starting n8n on port $N8N_PORT"

# Start n8n
exec n8n start