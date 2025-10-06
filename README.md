# Free n8n Cloud Setup with Daily News Automation

## 🚀 Quick Deploy (Choose ONE free option)

### Option 1: Railway (Recommended - Easiest)
[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app)

1. Go to [railway.app](https://railway.app)
2. Sign up with GitHub (free)
3. Click "Deploy from GitHub repo"
4. Connect this repository
5. Railway auto-detects Docker and deploys!

### Option 2: Render (Also Free)
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com)

1. Go to [render.com](https://render.com)
2. Sign up (free)
3. Connect GitHub repo
4. Choose "Web Service" 
5. Runtime: Docker

### Option 3: Fly.io (Free Tier)
```bash
# Install flyctl
curl -L https://fly.io/install.sh | sh

# Deploy
fly launch
fly deploy
```

## 🔧 Local Setup (for testing)
```bash
# Start n8n locally
docker-compose up -d

# Access at: http://localhost:5678
# Username: admin
# Password: password123
```

## 📰 Daily News Workflow Setup

After deployment:

1. **Access n8n**: Use your cloud URL (Railway/Render provides this)
2. **Login**: admin / password123
3. **Import workflow**: Copy the JSON from `daily-news-workflow.json`
4. **Add NewsAPI key**: 
   - Sign up at [newsapi.org](https://newsapi.org) (FREE)
   - Get API key (1000 requests/day free)
   - Add to workflow credentials

## 🎯 What You'll Get

✅ **Free n8n instance** running 24/7  
✅ **Automated news** at 7 AM & 5 PM daily  
✅ **Top trending news** from multiple sources  
✅ **Email/Webhook delivery** options  
✅ **Zero monthly costs**

## 🔐 Environment Variables (for cloud deploy)

```env
N8N_HOST=your-app-url.railway.app
N8N_PROTOCOL=https
N8N_USER=admin
N8N_PASSWORD=your-secure-password
GENERIC_TIMEZONE=America/New_York
```

## 🛠 Troubleshooting

- **Can't access n8n**: Check if port 5678 is exposed
- **Workflow not running**: Verify timezone settings
- **No news data**: Check NewsAPI key and credits

---

**Total Setup Time**: ~5 minutes  
**Monthly Cost**: $0.00 💰