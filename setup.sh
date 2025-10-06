#!/bin/bash

echo "🚀 Starting n8n Daily News Automation Setup..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker first."
    exit 1
fi

# Create environment file if it doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating environment file..."
    cp .env.example .env
    echo "✅ Please edit .env file with your settings"
fi

# Start n8n with Docker Compose
echo "🐳 Starting n8n container..."
docker-compose up -d

# Wait for n8n to start
echo "⏳ Waiting for n8n to start..."
sleep 10

# Check if n8n is running
if curl -f http://localhost:5678/healthz > /dev/null 2>&1; then
    echo "✅ n8n is running successfully!"
    echo "🌐 Access n8n at: http://localhost:5678"
    echo "👤 Username: admin"
    echo "🔑 Password: password123"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to http://localhost:5678"
    echo "2. Login with admin/password123"
    echo "3. Import the workflow from daily-news-workflow.json"
    echo "4. Get free NewsAPI key from https://newsapi.org"
    echo "5. Configure your delivery methods (Email/Telegram/Webhook)"
    echo ""
    echo "🚀 For cloud deployment:"
    echo "- Railway: https://railway.app (recommended)"
    echo "- Render: https://render.com"
    echo "- Fly.io: https://fly.io"
else
    echo "❌ n8n failed to start. Check logs with: docker-compose logs"
fi