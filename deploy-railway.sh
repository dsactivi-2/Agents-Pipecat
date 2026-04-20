#!/bin/bash
# Railway deployment requires:
# 1. GitHub account connected to Railway
# 2. Environment variables set in Railway dashboard

echo "Railway Deployment Steps:"
echo "1. Go to railway.app"
echo "2. Create new project → Deploy from GitHub"
echo "3. Select: dsactivi-2/Agents"
echo "4. Add environment variables:"
echo "   - OPENAI_API_KEY"
echo "   - DEEPGRAM_API_KEY"
echo "   - ELEVENLABS_API_KEY"
echo "   - ELEVENLABS_VOICE_ID=c9tXABmaj4sESRRQ4Uqo"
echo "   - OPENAI_MODEL=gpt-4.1-2025-04-14"
echo "   - DAILY_API_KEY"
echo "5. Railway auto-deploys from git push"
