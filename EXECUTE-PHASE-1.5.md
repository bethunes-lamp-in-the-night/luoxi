# Phase 1.5 Execution Guide - Human Instructions

**Date:** 2026-01-11
**Status:** Approved by CEO - Ready to Execute

---

## What You Need to Do (Total: ~30 minutes)

Phase 1.5 has been approved with maximally scriptable, AI-driven approaches. Here's your role:

### Task 1: Video Analysis Setup (10 minutes)

**What it does:** AI pipeline analyzes all 20+ videos automatically using ffmpeg + Whisper + Claude

**Your steps:**
```bash
cd $HOME/development/luoxi

# 1. Run setup script
chmod +x work/intelligence/video-analysis/setup-video-pipeline.sh
./work/intelligence/video-analysis/setup-video-pipeline.sh

# 2. Set Claude API key (if not already set)
export ANTHROPIC_API_KEY='your-anthropic-api-key-here'

# 3. Start the automated pipeline
python3 work/intelligence/video-analysis/analyze-videos.py
```

**Then walk away.** Pipeline runs automatically for 4-6 hours.

**Cost:** ~$25 (Whisper + Claude APIs)

---

### Task 2: Douyin Archiving Setup (20 minutes)

**What it does:** Automated download of all videos from @小洛熙妈妈 Douyin account

**Your steps:**

#### Step 1: Run setup script (5 min)
```bash
cd $HOME/development/luoxi

# Run setup
chmod +x work/archiving/setup-douyin-archiving.sh
./work/archiving/setup-douyin-archiving.sh
```

#### Step 2: Extract Douyin cookies (15 min)

1. Open browser (Chrome/Firefox/Safari)
2. Go to: https://www.douyin.com
3. **Log in to your Douyin account** (or create one if needed)
4. Open Developer Tools:
   - Chrome: `Cmd+Option+I` (Mac) or `F12` (Windows)
   - Firefox: `Cmd+Option+I` (Mac) or `F12` (Windows)
   - Safari: `Cmd+Option+I` (Mac)
5. Go to: **Application** tab → **Cookies** → `https://www.douyin.com`
6. Find and copy these cookie values (double-click value, copy):
   - `ttwid`
   - `__ac_signature`
   - `sessionid`
   - `sid_guard`

7. Create cookie config file:
```bash
cat > work/archiving/cookies/config.yaml << 'EOF'
headers:
  Cookie: |
    ttwid=YOUR_TTWID_VALUE_HERE;
    __ac_signature=YOUR_AC_SIGNATURE_VALUE_HERE;
    sessionid=YOUR_SESSIONID_VALUE_HERE;
    sid_guard=YOUR_SID_GUARD_VALUE_HERE;
EOF
```

(Replace `YOUR_*_VALUE_HERE` with actual cookie values)

#### Step 3: Start Docker API (1 min)
```bash
cd work/archiving
docker-compose up -d
```

#### Step 4: Use Web Interface for Batch Download

**IMPORTANT:** The Python script requires manual video URL collection. Instead:

1. Open browser: http://localhost:8000
2. You'll see the Douyin_TikTok_Download_API web interface
3. Go to @小洛熙妈妈 Douyin profile: https://www.douyin.com/@小洛熙妈妈
4. Manually collect video share URLs (right-click → Copy Link)
5. Paste all URLs into the web interface (one per line)
6. Click "Download All"
7. Videos download automatically to `work/archiving/douyin-backup-[DATE]/videos/`

**Alternative - More Automated:**
If you can find a tool/script that extracts all video URLs from a Douyin profile automatically, paste that list into the web UI for batch download.

---

## What Happens Next (Automated)

### Video Analysis (4-6 hours):
1. ✅ ffmpeg extracts frames from every video (1 frame/second)
2. ✅ ffmpeg extracts audio from every video
3. ✅ Whisper transcribes Chinese audio → text with timestamps
4. ✅ Claude analyzes frames → emotional moments, viral clips, visible text
5. ✅ Pipeline generates master report with all findings

**Output:**
- `work/intelligence/video-analysis/transcripts/` - Chinese transcripts
- `work/intelligence/video-analysis/frame-analysis/` - Claude's analysis
- `work/intelligence/video-analysis/reports/VIDEO-ANALYSIS-MASTER-REPORT.md`

### Douyin Archiving (2-4 hours):
1. ✅ Docker API handles anti-scraping automatically
2. ✅ Videos download without watermarks
3. ✅ Metadata captured (titles, dates, views, likes)
4. ✅ Local backup created

**Output:**
- `work/archiving/douyin-backup-[DATE]/videos/` - All video files
- `work/archiving/douyin-backup-[DATE]/metadata/` - Video metadata

---

## Verification (Next Morning)

When you return tomorrow morning:

### 1. Check Video Analysis Status
```bash
# Check if pipeline completed
cat work/intelligence/video-analysis/reports/VIDEO-ANALYSIS-MASTER-REPORT.md

# Check individual video analyses
ls work/intelligence/video-analysis/frame-analysis/
```

### 2. Check Douyin Archiving Status
```bash
# Count downloaded videos
ls work/archiving/douyin-backup-*/videos/ | wc -l

# Check total size
du -sh work/archiving/douyin-backup-*/
```

### 3. Backup to Cloud
```bash
# Upload to Google Drive / Dropbox / your cloud provider
# (Use your preferred method)
```

---

## If Something Goes Wrong

### Video Analysis Issues:

**Problem:** "ANTHROPIC_API_KEY not set"
```bash
export ANTHROPIC_API_KEY='your-key-here'
```

**Problem:** ffmpeg not found
```bash
brew install ffmpeg  # macOS
# or
sudo apt install ffmpeg  # Linux
```

**Problem:** Python packages missing
```bash
pip3 install openai-whisper anthropic aiohttp
```

### Archiving Issues:

**Problem:** Docker not running
```bash
docker ps  # Check if running
cd work/archiving && docker-compose up -d  # Restart
```

**Problem:** Cookie authentication failed
- Extract fresh cookies from browser (they expire after ~24 hours)
- Make sure you're logged in to Douyin when extracting cookies

**Problem:** Web UI not loading
```bash
# Check if Docker container is running
docker ps

# Check logs
docker logs douyin_archiving_api
```

---

## Cost Summary

- **Video Analysis:** ~$25 (Whisper API ~$1, Claude API ~$24)
- **Douyin Archiving:** $0 (open source)
- **Total:** ~$25

---

## Timeline

**Today (your 30 minutes):**
- 10:00 AM - Start video analysis pipeline
- 10:10 AM - Start archiving Docker + extract cookies
- 10:30 AM - Done, walk away

**Overnight (automated):**
- Video pipeline processes all videos (4-6 hours)
- Douyin downloads complete (2-4 hours)

**Tomorrow morning:**
- Phase 1.5 complete
- CEO agent spawns M2.0 (Media Index Brief Creator)
- Then M2.1/M2.2/M2.3 (Narrative strategists)

---

## Questions?

If you encounter issues, check:
1. `work/intelligence/video-analysis/setup-video-pipeline.sh` - Has troubleshooting
2. `work/archiving/VERIFIED-douyin-archiving-solution.md` - Full technical docs
3. Docker logs: `docker logs douyin_archiving_api`

All approaches are research-verified and maximally scriptable. The automation handles everything after your initial 30-minute setup.
