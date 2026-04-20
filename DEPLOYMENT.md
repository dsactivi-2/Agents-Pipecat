# Deployment Guide

## ✅ Pipecat Cloud Deployment (Ready)

### GitHub Auto-Deploy Setup

1. **GitHub Secrets** (dsactivi-2/Agents-Pipecat → Settings → Secrets):
   ```
   DOCKER_HUB_USERNAME = your_docker_username
   DOCKER_HUB_PASSWORD = your_docker_token
   ```

2. **Pipecat Cloud Environment Variables:**
   Copy from `.env.example` and add real API keys:
   ```
   OPENAI_API_KEY=sk-proj-YOUR_KEY_HERE
   DEEPGRAM_API_KEY=YOUR_DEEPGRAM_KEY
   ELEVENLABS_API_KEY=sk_YOUR_ELEVENLABS_KEY
   ELEVENLABS_VOICE_ID=c9tXABmaj4sESRRQ4Uqo
   OPENAI_MODEL=gpt-4.1-2025-04-14
   DAILY_API_KEY=pk_YOUR_DAILY_KEY
   ```
   **⚠️ Never commit real API keys to GitHub!**

3. **Deploy:** `git push origin main-deploy`
   - GitHub Actions triggers automatically
   - Docker image builds
   - Pushes to Docker Hub
   - Pipecat Cloud deploys

### Pipecat Cloud Account Info

- **Name:** pipecat-quickstart
- **API Key:** pk_edd86159-c646-437e-919a-8c7e1a7edcf5
- **Agent Profile:** agent-1x
- **Minimum Agents:** 1

---

## Local Testing (Docker Compose)

```bash
docker-compose up -d
docker-compose logs -f
```

Zugriff: http://localhost:7860

---

## Status

✅ Code gepusht zu GitHub (main-deploy branch)
✅ Docker Image gebaut & getestet
✅ GitHub Actions Workflow vorbereitet
✅ docker-compose.yml erstellt
⏳ Waiting: Docker Hub credentials in GitHub Secrets
⏳ Waiting: Pipecat Cloud Agent creation
