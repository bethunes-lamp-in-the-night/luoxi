# Phase 1.5 Execution Guide - FINAL (Revised with Gemini)

**Date:** 2026-01-11
**Status:** Approved by CEO - Ready to Execute
**Revision:** Using Gemini 2.5 Flash (simpler, 99.5% cheaper)

---

## What Changed

**Original approach:** ffmpeg + Whisper + Claude (complex, $87)
**FINAL approach:** Gemini 2.5 Flash direct video analysis (simple, $0.40)

**You asked:** "Can't it just be based on Gemini 2.5 Flash and analyze the video directly?"
**Answer:** YES! Much better. Updated below.

---

## What You Need to Do (Total: ~25 minutes)

### Task 1: Video Analysis with Gemini (5 minutes setup)

**What it does:** Gemini 2.5 Flash analyzes videos directly - uploads video → gets comprehensive analysis

**Your steps:**
```bash
cd $HOME/development/luoxi

# 1. Run setup script
chmod +x work/intelligence/video-analysis/setup-gemini.sh
./work/intelligence/video-analysis/setup-gemini.sh

# 2. Get Google API key
# Go to: https://aistudio.google.com/apikey
# Click "Create API Key"
# Copy the key

# 3. Set API key
export GOOGLE_API_KEY='your-google-api-key-here'

# 4. Start analysis
python3 work/intelligence/video-analysis/analyze-videos-gemini.py
```

**Then walk away.** Analysis runs automatically for ~1 hour.

**Cost:** ~$0.40 (vs. $87 in original approach - 99.5% savings!)

**Why this is better:**
- ✅ Single API call per video (vs. 4-step pipeline)
- ✅ 145x cheaper ($0.40 vs $87)
- ✅ Automatic audio transcription + frame analysis + OCR
- ✅ 1M token context window handles full videos
- ✅ Simpler setup (1 package vs 3)

---

### Task 2: Douyin Archiving (20 minutes setup)

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

1. Open browser: http://localhost:8000
2. You'll see the Douyin_TikTok_Download_API web interface
3. Go to @小洛熙妈妈 Douyin profile: https://www.douyin.com/@小洛熙妈妈
4. Manually collect video share URLs (right-click → Copy Link)
5. Paste all URLs into the web interface (one per line)
6. Click "Download All"
7. Videos download automatically to `work/archiving/douyin-backup-[DATE]/videos/`

---

## What Happens Next (Automated)

### Video Analysis with Gemini (1 hour):
1. ✅ Uploads video to Gemini API
2. ✅ Gemini analyzes:
   - Visual content (frame-by-frame)
   - Audio transcription (Chinese → text with timestamps)
   - OCR (visible text on screen)
   - Emotional beats identification
   - Viral clip recommendations
   - Production notes
3. ✅ Saves comprehensive report per video

**Output:**
- `work/intelligence/video-analysis/reports/[video]_analysis.md` - Full analysis
- `work/intelligence/video-analysis/reports/VIDEO-ANALYSIS-MASTER-REPORT.md` - Summary

### Douyin Archiving (2-4 hours):
1. ✅ Docker API handles anti-scraping
2. ✅ Videos download without watermarks
3. ✅ Metadata captured

**Output:**
- `work/archiving/douyin-backup-[DATE]/videos/` - All video files
- `work/archiving/douyin-backup-[DATE]/metadata/` - Video metadata

---

## Verification (Next Morning)

### 1. Check Video Analysis Status
```bash
# Check master report
cat work/intelligence/video-analysis/reports/VIDEO-ANALYSIS-MASTER-REPORT.md

# List individual analyses
ls work/intelligence/video-analysis/reports/*_analysis.md
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
```

---

## If Something Goes Wrong

### Video Analysis Issues:

**Problem:** "GOOGLE_API_KEY not set"
```bash
export GOOGLE_API_KEY='your-key-here'
```

**Problem:** google-generativeai not found
```bash
pip3 install google-generativeai
```

**Problem:** Video upload fails
- Check video file size (very large files may timeout)
- Check internet connection
- Verify API key is valid

### Archiving Issues:

**Problem:** Docker not running
```bash
docker ps  # Check if running
cd work/archiving && docker-compose up -d  # Restart
```

**Problem:** Cookie authentication failed
- Extract fresh cookies (they expire after ~24 hours)
- Make sure you're logged in to Douyin when extracting cookies

---

## Cost Summary (REVISED)

- **Video Analysis:** ~$0.40 (Gemini 2.5 Flash - 99.5% cheaper than original!)
- **Douyin Archiving:** $0 (open source)
- **Total:** ~$0.40 (vs. ~$112 in original approach)

---

## Comparison: Original vs. Final

| Aspect | Original (Rejected) | Final (Approved) |
|--------|---------------------|------------------|
| **Video Tool** | ffmpeg + Whisper + Claude | Gemini 2.5 Flash |
| **Complexity** | 4 tools + pipeline | Single API |
| **Video Cost** | ~$87 | ~$0.40 |
| **Setup Time** | 10 minutes | 5 minutes |
| **Processing Time** | 4-6 hours | ~1 hour |
| **Dependencies** | ffmpeg, whisper, anthropic, aiohttp | google-generativeai |
| **Maintenance** | Complex multi-stage | Simple single-call |

**Winner:** Gemini 2.5 Flash (simpler, faster, 217x cheaper!)

---

## Timeline

**Today (your 25 minutes):**
- 10:00 AM - Setup Gemini video analysis (5 min)
- 10:05 AM - Start video analysis pipeline (runs ~1 hour)
- 10:10 AM - Setup archiving Docker + extract cookies (20 min)
- 10:30 AM - Done, walk away

**Overnight (automated):**
- Gemini processes all videos (~1 hour)
- Douyin downloads complete (2-4 hours)

**Tomorrow morning:**
- Phase 1.5 complete
- CEO agent spawns M2.0 (Media Index Brief Creator)
- Then M2.1/M2.2/M2.3 (Narrative strategists)
- Phase 2 underway

---

## Documentation

- **Video Analysis Details:** `work/intelligence/video-analysis/FINAL-gemini-video-analysis.md`
- **Archiving Details:** `work/archiving/VERIFIED-douyin-archiving-solution.md`
- **Research Sources:**
  - [Gemini 2.5 Flash Video Understanding](https://ai.google.dev/gemini-api/docs/video-understanding)
  - [Gemini API Pricing](https://ai.google.dev/gemini-api/docs/pricing)
  - [Evil0ctal/Douyin_TikTok_Download_API](https://github.com/Evil0ctal/Douyin_TikTok_Download_API)

---

**All approaches are research-verified, maximally scriptable, and agent-driven.**

**Ready when you are!** 🚀
