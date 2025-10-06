## 🎯 **5-MINUTE DEPLOYMENT GUIDE**

### **Step 1: Deploy to Cloud (Pick ONE - All FREE!)**

#### 🚂 **Option A: Railway (Fastest!)**
1. Go to **[railway.app](https://railway.app)**
2. Sign up with GitHub (**FREE** - no credit card needed)
3. Click **"Deploy from GitHub repo"**
4. Connect this repository
5. **DONE!** Railway auto-deploys with Docker

#### 🎨 **Option B: Render**
1. Go to **[render.com](https://render.com)**
2. Sign up (**FREE** - no credit card needed)
3. Click **"New Web Service"**
4. Connect GitHub repo
5. Select **"Docker"** runtime
6. **DONE!**

### **Step 2: Get FREE NewsAPI Key**
1. Go to **[newsapi.org](https://newsapi.org)**
2. Sign up (**FREE** - 1000 requests/day)
3. Copy your API key

### **Step 3: Setup Workflow (2 minutes)**
1. Access your n8n instance (Railway/Render gives you URL)
2. Login: `admin` / `secure-news-bot-2024`
3. Click **"Import from File"**
4. Upload `daily-news-workflow.json`
5. Add your NewsAPI key to credentials
6. **Choose delivery method**:
   - 📧 **Email**: Add your email
   - 📱 **Telegram**: Create bot + get chat ID
   - 🔗 **Webhook**: Add your webhook URL

### **Step 4: Test & Enjoy!**
- **Manual test**: Click "Execute Workflow"
- **Automatic**: Runs daily at 7 AM & 5 PM
- **Monitor**: Check execution logs in n8n

---

## 🎯 **WHAT YOU GET**
✅ **FREE n8n** running 24/7  
✅ **Daily news** at 7 AM & 5 PM  
✅ **Top 10 trending stories**  
✅ **Multiple delivery options**  
✅ **Zero monthly cost**  

## 🔧 **Quick Local Test**
```bash
# Test locally first
./setup.sh

# Access at http://localhost:5678
# Username: admin
# Password: password123
```

## 🆘 **Need Help?**
- **Can't access n8n**: Check if your cloud service deployed successfully
- **No news received**: Verify NewsAPI key and delivery settings
- **Wrong timezone**: Update `GENERIC_TIMEZONE` in environment

**Total Time**: ⏱️ **5 minutes**  
**Total Cost**: 💰 **$0.00**