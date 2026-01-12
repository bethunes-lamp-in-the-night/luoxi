# Douyin Content Archiving Instructions

**URGENCY: Execute within 24-48 hours**
**CRITICAL: Family Douyin account at risk of censorship/deletion**

---

## Overview

- **Primary target:** @小洛熙妈妈 (Luoxi's mother, 292K followers on Douyin)
- **Secondary targets:** @小洛熙爸爸 (Father, 141K followers), grandmother's account
- **Content type:** Videos, live stream recordings, comments, profile data
- **Reason:** Censorship risk (Xiaohongshu already suppressing, Douyin permissive but could change ANY TIME)
- **Human time required:** 3-4 hours active work + overnight batch downloads
- **Storage needed:** Approximately 5-10GB

---

## Prerequisites

### Tools Needed

#### 1. Douyin Video Downloader (Choose ONE)

**OPTION A: Douyin Downloader (DouYin_Downloader) - RECOMMENDED**
- **Download:** https://github.com/Johnserf-Seed/TikTokDownload
- **Platform:** Windows/Mac/Linux (Python-based)
- **Why:** Batch download capability, preserves metadata, actively maintained
- **Installation:**
  1. Install Python 3.8+ from https://www.python.org/downloads/
  2. Open Terminal (Mac) or Command Prompt (Windows)
  3. Run: `pip install douyin-downloader`
  4. Test: `douyin-downloader --version`

**OPTION B: 4K Video Downloader (Non-Technical Users)**
- **Download:** https://www.4kdownload.com/
- **Platform:** Windows/Mac
- **Why:** User-friendly GUI, no coding needed
- **Limitation:** Manual one-by-one downloads (slower)
- **Installation:** Download installer, run, follow prompts

**OPTION C: Web-based Tools (BACKUP ONLY)**
- **Sites:** ssstik.io, snaptik.app, douyin.wtf
- **Why:** No installation needed
- **Limitation:** Single video downloads only, no batch, may have quality limits
- **Use when:** Other tools fail, for quick spot downloads

#### 2. Screenshot Tools

**macOS Users:**
- **Built-in:** Command+Shift+4 (select area), Command+Shift+3 (full screen)
- **For scrolling screenshots:** Use "Screenshot" app (Command+Shift+5) or install "Shottr" (free)

**Windows Users:**
- **Built-in:** Windows+Shift+S (Snipping Tool)
- **For scrolling screenshots:** Install "PicPick" (free) or "ShareX" (free)

#### 3. Storage Setup

**Create this folder structure BEFORE starting:**
```
${PROJECT_ROOT}/work/archiving/douyin-backup-2026-01-11/
├── profile/
│   ├── mother/
│   ├── father/
│   └── grandmother/
├── videos/
│   ├── mother/
│   ├── father/
│   └── grandmother/
├── comments/
│   ├── mother/
│   └── father/
├── livestreams/
└── metadata/
```

**Command to create (copy-paste into Terminal/Command Prompt):**
```bash
cd ${PROJECT_ROOT}/work/archiving
mkdir -p douyin-backup-2026-01-11/{profile/{mother,father,grandmother},videos/{mother,father,grandmother},comments/{mother,father},livestreams,metadata}
```

### Access Requirements

1. **Douyin Access:**
   - **Inside China:** Direct access via Douyin app or https://www.douyin.com
   - **Outside China:** Requires VPN to China location (recommended: ExpressVPN, Astrill)

2. **Douyin Account (RECOMMENDED):**
   - Create free account to:
     - View full comments
     - See full video descriptions
     - Download higher quality videos
   - **How:** Download Douyin app, register with phone number (can use temp number services)

3. **Stable Internet:**
   - Estimated bandwidth: 2-5 Mbps minimum
   - Wired connection preferred over WiFi
   - Expect 4-6 hours of download time for all videos

---

## Step-by-Step Archiving Workflow

### STEP 1: Profile Archiving (15 minutes per account)

#### 1A. Mother's Account (@小洛熙妈妈)

1. **Navigate to:** https://www.douyin.com/@xiaoluoximama OR search "小洛熙妈妈"
2. **Take full-page screenshot** of profile page (use scrolling screenshot tool)
3. **Record in spreadsheet** (see Step 4 for template):
   - Account name: 小洛熙妈妈
   - Account ID: [Copy from URL or profile]
   - Follower count: 292,769 (verify current number)
   - Following count: [Check profile]
   - Total videos: [Count from profile]
   - Total likes: [Check profile]
   - Profile bio: "小洛熙的电子爸爸妈妈 我们不接受任何经济援助不要被假号骗" (or current text)
   - Account creation date: [If visible]
   - Date archived: 2026-01-11
4. **Save screenshot as:** `profile/mother/profile-xiaoluoximama-2026-01-11.png`
5. **Screenshot profile picture** separately: `profile/mother/avatar-2026-01-11.png`

#### 1B. Father's Account (@小洛熙爸爸)

1. **Navigate to:** Search "小洛熙爸爸" or account ID: 339737824
2. **Repeat steps 2-5** from 1A
3. **Note:** Father has 141,000 followers, 13 works pinned (as of inventory)
4. **Save as:** `profile/father/profile-xiaoluoxibaba-2026-01-11.png`

#### 1C. Grandmother's Account (if found)

1. **Search:** "洛熙奶奶" or look for linked accounts from mother/father profiles
2. **If found:** Repeat archiving steps
3. **If NOT found:** Document in metadata spreadsheet as "Not located"

---

### STEP 2: Video Download (2-3 hours active + overnight batch)

#### 2A. Build Video URL List (30 minutes)

1. **Open mother's profile** (@小洛熙妈妈)
2. **Scroll through ALL videos** on profile
3. **For each video:**
   - Click to open video page
   - Copy full URL (e.g., https://www.douyin.com/video/1234567890)
   - Paste into text file: `metadata/mother-video-urls.txt`
   - Note: One URL per line
4. **Repeat for father's account:** Save to `metadata/father-video-urls.txt`

**Expected count:** 50-200 videos total (varies by account activity)

#### 2B. Batch Download Videos (RECOMMENDED)

**Using Douyin Downloader (Python tool):**

1. **Open Terminal/Command Prompt**
2. **Navigate to project folder:**
   ```bash
   cd ${PROJECT_ROOT}/work/archiving/douyin-backup-2026-01-11/videos/mother
   ```
3. **Run batch download:**
   ```bash
   douyin-downloader -i ../../metadata/mother-video-urls.txt -o ./ --quality highest --metadata
   ```
4. **Let run overnight** (will auto-download all videos from URL list)
5. **Repeat for father's videos:**
   ```bash
   cd ../father
   douyin-downloader -i ../../metadata/father-video-urls.txt -o ./ --quality highest --metadata
   ```

**What this does:**
- Downloads all videos from URL list
- Saves highest quality available
- Creates metadata JSON file for each video (includes post date, views, likes, description)
- Auto-names files with video ID

#### 2C. Manual Download (If batch tool fails)

**Using 4K Video Downloader:**

1. **Open 4K Video Downloader app**
2. **Click "Paste Link"** button
3. **Paste video URL** from your URL list
4. **Select quality:** "Original" or "1080p" (highest available)
5. **Choose save location:** `videos/mother/` folder
6. **Click "Download"**
7. **Repeat for each video** (tedious but reliable)

**Filename format:** Use auto-generated name OR rename as:
`YYYYMMDD_[video-description-snippet]_[video-ID].mp4`

Example: `20251121_grandmother-feeding-empty-clothes_7305891234567890.mp4`

---

### STEP 3: Metadata & Comments Logging (1-2 hours)

#### 3A. Create Metadata Spreadsheet

**Open Excel/Google Sheets and create:** `metadata/douyin-archive-metadata.xlsx`

**Columns:**
| Video Filename | Original URL | Account | Post Date | Archive Date | Duration | View Count | Like Count | Comment Count | Share Count | Description (Chinese) | Description (English translation) | Priority Level | Status | Notes |

**Fill in for each downloaded video:**

1. **Video Filename:** Exact filename in videos/ folder
2. **Original URL:** Full Douyin URL
3. **Account:** Mother/Father/Grandmother
4. **Post Date:** YYYY-MM-DD format
5. **Archive Date:** 2026-01-11
6. **Duration:** MM:SS format
7. **View Count:** Number from video page
8. **Like Count:** Number from video page
9. **Comment Count:** Number from video page
10. **Share Count:** Number from video page
11. **Description (Chinese):** Copy full Chinese caption
12. **Description (English):** Leave blank for now (will translate later)
13. **Priority Level:** High/Medium/Low (see priority-list.md)
14. **Status:** Downloaded / Failed / Unavailable
15. **Notes:** Any issues, special observations

**Time-saving tip:** If using Douyin Downloader with --metadata flag, it creates JSON files with this info. You can copy data from JSON to spreadsheet.

#### 3B. Comments Archiving (HIGH PRIORITY VIDEOS ONLY)

For videos marked "High Priority" in priority-list.md:

1. **Open video on Douyin**
2. **Scroll to comments section**
3. **Sort by:** "Most Liked" (热门)
4. **Take screenshots of:**
   - Top 20 comments (first 2-3 screens)
   - Total comment count at top
   - Any comments mentioning: medical details, hospital, authorities, corruption, censorship
   - Date of screenshot (for timeline)

5. **Screenshot filename format:**
   `comments/mother/YYYYMMDD_[video-ID]_comments-page-[N].png`

   Example: `comments/mother/20251121_7305891234567890_comments-page-1.png`

6. **Create comments summary text file:**
   - File: `comments/mother/YYYYMMDD_[video-ID]_top-comments.txt`
   - Copy-paste top 10-20 comment texts
   - Include commenter usernames
   - Include like counts for each comment
   - Note overall sentiment (supportive/critical/questioning)

**Why comments matter:**
- Show public sentiment (evidence of widespread support)
- May contain additional information/corroboration
- Demonstrate case reach and impact
- Will be deleted if account taken down

---

### STEP 4: Live Stream Archiving (IF AVAILABLE)

Douyin live streams are NOT automatically saved. If family is currently live or announces upcoming stream:

#### 4A. Real-Time Recording

**Tools:**
- **OBS Studio** (free, professional): https://obsproject.com/
- **Screen recorder** (Mac: QuickTime, Windows: Xbox Game Bar)

**Steps:**
1. **Open live stream on computer** (full screen browser or app)
2. **Start screen recording** capturing full stream
3. **Record ENTIRE duration** (do not stop)
4. **Save as:** `livestreams/YYYYMMDD_HHMM_[account]_[topic].mp4`
5. **Note in metadata:** Stream date, duration, topic, key moments

#### 4B. Post-Stream

1. **Check if Douyin saved replay** (some creators enable this)
2. **If replay available:** Download using video downloader tools
3. **If NO replay:** Your screen recording is the only archive

**CRITICAL:** Live streams are often most candid, unfiltered content. Capture if possible.

---

### STEP 5: Verification & Quality Check (15 minutes)

#### 5A. File Integrity Check

1. **Navigate to videos folder:**
   ```bash
   cd ${PROJECT_ROOT}/work/archiving/douyin-backup-2026-01-11/videos/mother
   ```

2. **Count files:**
   ```bash
   ls -1 | wc -l
   ```
   Should match number of URLs in your list.

3. **Check total size:**
   ```bash
   du -sh .
   ```
   Expected: 3-8GB depending on video count and quality.

4. **Test random videos:**
   - Open 5-10 videos
   - Verify they play correctly
   - Check audio is present
   - Ensure video is not corrupted

#### 5B. Folder Structure Verification

**Your folder should look like:**
```
douyin-backup-2026-01-11/
├── profile/
│   ├── mother/
│   │   ├── profile-xiaoluoximama-2026-01-11.png
│   │   └── avatar-2026-01-11.png
│   └── father/
│       ├── profile-xiaoluoxibaba-2026-01-11.png
│       └── avatar-2026-01-11.png
├── videos/
│   ├── mother/
│   │   ├── video1.mp4
│   │   ├── video1.json (if using metadata tool)
│   │   ├── video2.mp4
│   │   └── [50-150 more videos]
│   └── father/
│       ├── video1.mp4
│       └── [10-30 more videos]
├── comments/
│   └── mother/
│       ├── 20251121_7305891234567890_comments-page-1.png
│       ├── 20251121_7305891234567890_top-comments.txt
│       └── [10-20 more comment sets]
├── livestreams/
│   └── [any recorded streams]
└── metadata/
    ├── mother-video-urls.txt
    ├── father-video-urls.txt
    └── douyin-archive-metadata.xlsx
```

#### 5C. Completion Checklist

- [ ] Mother's profile archived (screenshot + data logged)
- [ ] Father's profile archived
- [ ] All mother's videos downloaded (check count vs. URL list)
- [ ] All father's videos downloaded
- [ ] Metadata spreadsheet completed for all videos
- [ ] Comments archived for high-priority videos (top 10-20)
- [ ] Live streams recorded (if any occurred)
- [ ] All files play/open correctly
- [ ] Total archive size: _____ GB
- [ ] Archive date: 2026-01-11

---

## Troubleshooting

### Issue: "Douyin Downloader not installing"
**Error:** `pip: command not found` OR `python not recognized`

**Solution:**
1. Python not installed correctly
2. Download from https://www.python.org/downloads/
3. IMPORTANT: During installation, check "Add Python to PATH"
4. Restart Terminal/Command Prompt
5. Try again: `pip install douyin-downloader`

---

### Issue: "Videos won't download - region blocked"
**Error:** `Video unavailable in your region` OR `403 Forbidden`

**Solution:**
1. You need VPN connected to China
2. Recommended VPNs:
   - ExpressVPN (select Hong Kong or Shanghai server)
   - Astrill VPN (China-optimized)
   - Shadowsocks (advanced users)
3. Connect VPN BEFORE running downloader
4. Verify VPN: Visit https://www.douyin.com - should load normally
5. Retry download

---

### Issue: "Download too slow"
**Error:** 1-2 videos per hour, will take days

**Solution:**
1. Switch to faster internet connection (wired vs. WiFi)
2. Close other bandwidth-heavy apps
3. Download in smaller batches (10-20 videos at a time)
4. Try different time of day (China night = less traffic)
5. Consider using batch downloader overnight for large sets

---

### Issue: "Some videos show 'This video has been removed'"
**Error:** Video page loads but says "Content unavailable"

**Solution:**
1. **DOCUMENT THIS IMMEDIATELY** - proves censorship
2. In metadata spreadsheet, mark as "Status: Unavailable - Censored"
3. Take screenshot of "removed" message
4. Save screenshot: `videos/mother/CENSORED_[video-ID]_removed-notice.png`
5. Note date video was removed
6. Check if video was re-posted on other platforms (Weibo, Xiaohongshu)
7. Search for re-uploads by other users (search video description text)

**This is CRITICAL evidence of censorship in action.**

---

### Issue: "Can't access comments without account"
**Error:** "Login to view comments" OR comments section blocked

**Solution:**
1. Create free Douyin account:
   - Download Douyin app
   - Register with phone number (can use temporary number services)
   - Verify via SMS
   - Login on web version
2. Alternative: Use account-required web browser plugin
3. If still blocked: Document limitation, archive what's visible to logged-in users

---

### Issue: "4K Video Downloader says 'unsupported link'"
**Error:** Tool doesn't recognize Douyin URL

**Solution:**
1. Douyin not natively supported by all downloaders
2. Switch to web-based tool:
   - Go to https://ssstik.io or https://douyin.wtf
   - Paste video URL
   - Click download
   - Save file manually
3. Or switch to Douyin Downloader (Python tool) - better Douyin support

---

### Issue: "Running out of storage space"
**Error:** Download stops, "Disk full" message

**Solution:**
1. Check available space: At least 10GB needed
2. Delete temporary files, empty trash
3. Move existing large files to external drive
4. Use external hard drive for archive:
   - Connect drive
   - Create folder structure on external drive
   - Point downloader to external drive path
5. Cloud storage NOT recommended for initial download (too slow)

---

### Issue: "Videos downloading but no sound"
**Error:** Video plays but audio missing

**Solution:**
1. Check original video on Douyin - some videos have no audio (intentional)
2. If original HAS sound but download doesn't:
   - Re-download with different quality setting
   - Try different downloader tool
   - Check if audio codec not supported (install VLC Media Player to play)
3. Document in metadata: "Audio missing from download"

---

### Issue: "Can't find father's or grandmother's account"
**Error:** Search returns no results OR wrong account

**Solution:**
1. **Father's account ID confirmed:** 339737824
   - Search by ID: https://www.douyin.com/user/339737824
2. **Alternative search terms:**
   - 小洛熙爸爸唯一号
   - 小洛熙papa
   - Search for videos tagged #小洛熙, check poster accounts
3. **Grandmother's account:**
   - Not confirmed in inventory
   - Search: 洛熙奶奶, 小洛熙奶奶
   - Check mother's "Following" list
   - Check father's "Following" list
   - May not exist as separate account
4. **If truly not found:** Document as "Account not located" in notes

---

### Issue: "Metadata spreadsheet too tedious - hundreds of videos"
**Error:** Taking too long to manually log each video

**Solution:**
1. **Priority approach:**
   - Fully log HIGH priority videos (see priority-list.md)
   - For others: Log only filename, URL, basic stats
   - Leave detailed description blank for now
2. **Use JSON metadata** (if Douyin Downloader generated .json files):
   - Open .json file in text editor
   - Copy-paste relevant fields into spreadsheet
   - Can automate with script later if needed
3. **Minimum viable metadata:**
   - Filename
   - URL
   - Post date
   - Status (Downloaded/Failed)
   - Everything else can be filled later from the video files themselves

**Priority: Download everything FIRST, detailed logging can happen after.**

---

## After Archiving Complete

### 1. Cloud Backup (CRITICAL)

**Upload to MULTIPLE cloud services** (redundancy crucial):

**Primary backup:**
- Google Drive: 15GB free (may need to upgrade for full archive)
- Upload folder: `douyin-backup-2026-01-11/`

**Secondary backup:**
- Dropbox: 2GB free (use for highest priority videos only)
- iCloud: 5GB free
- OneDrive: 5GB free

**Tertiary backup (RECOMMENDED):**
- External hard drive (kept in different physical location)
- Internet Archive (archive.org) - for public preservation

**Why multiple backups:**
- Cloud services can delete content under legal pressure
- Redundancy protects against account suspension
- Different jurisdictions (US vs. China pressure)

### 2. Notify CEO

Send message with:
```
Subject: URGENT - Douyin Archiving Complete

Douyin archiving completed: 2026-01-11

SUMMARY:
- Mother's account (@小洛熙妈妈): [X] videos, [X] GB
- Father's account (@小洛熙爸爸): [X] videos, [X] GB
- Comments archived: [X] high-priority videos
- Livestreams captured: [X] (if any)

TOTAL: [X] videos, [X] GB

CENSORED CONTENT FOUND:
- [X] videos already removed/unavailable
- [List any specific censored videos]

ISSUES ENCOUNTERED:
- [List any problems, account access issues, etc.]

BACKUP STATUS:
- Local: Complete
- Google Drive: [Uploading/Complete]
- External drive: [Pending/Complete]

NEXT STEPS NEEDED:
- [Any follow-up required]

Archive location: ${PROJECT_ROOT}/work/archiving/douyin-backup-2026-01-11/
```

### 3. Update Media Inventory

Add to `${PROJECT_ROOT}/work/intelligence/media-inventory.md`:

```markdown
## DOUYIN ARCHIVE (Added 2026-01-11)

**Source:** Direct download from family Douyin accounts
**Archive Date:** 2026-01-11
**Archiver:** [Your name]

### Mother's Account (@小洛熙妈妈)
- **Follower count at archive:** [X]
- **Total videos archived:** [X]
- **Date range:** [Earliest post] to [Latest post]
- **Storage:** [X] GB
- **Location:** work/archiving/douyin-backup-2026-01-11/videos/mother/

### Father's Account (@小洛熙爸爸)
- **Follower count at archive:** [X]
- **Total videos archived:** [X]
- **Date range:** [Earliest post] to [Latest post]
- **Storage:** [X] GB
- **Location:** work/archiving/douyin-backup-2026-01-11/videos/father/

### Content Highlights:
[List 5-10 most important videos found, with brief descriptions]

### Censorship Evidence:
[List any already-removed videos, deletion notices captured]
```

### 4. Flag Urgent Issues

**IMMEDIATELY notify CEO if:**
- Mother's or father's account is already suspended/deleted
- Large number of videos already censored (>20% unavailable)
- Account shows signs of restriction (followers dropping, videos hidden)
- New content suggests imminent danger to family
- Evidence of ongoing censorship campaign

---

## Recovery Plan (If Content Already Deleted)

### If @小洛熙妈妈 account is suspended/deleted:

#### 1. Search for Re-posts on Douyin

**Search terms:**
- 小洛熙
- 洛熙妈妈
- 宁波小洛熙
- 宁波妇儿医院
- #小洛熙 (hashtag)

**Strategy:**
- Sort by "Most Recent"
- Look for re-uploads by supporters
- Check accounts that previously commented on family videos
- Download any found re-posts immediately

#### 2. Check Secondary Platforms

**Weibo:**
- Search "小洛熙妈妈" and "小洛熙爸爸"
- Father's Weibo: 小洛熙爸爸唯一号
- Check recent posts for video shares

**Xiaohongshu:**
- Search "小洛熙"
- Note: Platform actively suppressing (see platform-censorship-analysis.md)
- May find older cached content

**Bilibili:**
- Search "小洛熙 宁波"
- Commentary videos may include clips of original content

**Facebook/International:**
- Search "babyluoxi" and "小洛熙"
- Overseas Chinese communities may have saved content
- Check existing video: Copy of 這就是你大中國說的法治社會嗎.mp4 (in media folder)

#### 3. Contact Family Directly

**REQUIRES CEO APPROVAL FIRST**

If appropriate and approved:
- Reach out via remaining active accounts (if any)
- Ask if family has local backups of their content
- Offer to help preserve/distribute if they wish
- Respect their privacy and safety concerns

**CAUTION:** Family may be under surveillance or pressure. Do not endanger them.

#### 4. Archive Existing Screenshots/Discussions

Even if original videos gone:
- Screenshots of videos shared in news articles
- Video thumbnails from social media posts
- Descriptions and transcripts in online discussions
- Zhihu threads that quote or describe video content

**Something is better than nothing.**

---

## Legal & Safety Notes

### For Archiver:

1. **Personal Safety:**
   - Use VPN for all activity (protects your location/identity)
   - Do NOT share that you're archiving on Chinese platforms
   - Keep archive location private

2. **Legal Considerations:**
   - Archiving for documentary/research purposes (fair use)
   - Do NOT monetize archived content
   - Respect family's wishes if they request content removal
   - Content may be used for advocacy but not commercial purposes

3. **Ethical Guidelines:**
   - You are preserving evidence, not exploiting tragedy
   - Handle content of deceased child with respect
   - Do not share graphic medical images publicly without context/warning
   - Archive everything, but curate what's publicly distributed

### For Content Use:

- **Public advocacy:** YES
- **News reporting:** YES
- **Documentary/educational:** YES
- **Commercial use:** NO
- **Sensationalization:** NO
- **Out-of-context sharing:** NO

---

## Estimated Time Requirements

| Task | Time Required | Can Run Unattended? |
|------|--------------|---------------------|
| Profile archiving | 30 min | No |
| Building video URL lists | 45 min | No |
| Setting up batch download | 15 min | No |
| **Batch download running** | **4-8 hours** | **YES - overnight** |
| Metadata logging (basic) | 1 hour | No |
| Metadata logging (detailed) | 3-4 hours | No |
| Comments archiving | 1-2 hours | No |
| Verification & QC | 30 min | No |
| Cloud upload | 2-4 hours | YES |

**TOTAL ACTIVE TIME:** 3-4 hours
**TOTAL ELAPSED TIME:** 8-16 hours (including overnight batch downloads)

**Recommended schedule:**
- **Day 1 Evening (2 hours):** Steps 1-2 (profile + start batch download overnight)
- **Day 2 Morning (30 min):** Verify downloads completed
- **Day 2 Afternoon (2 hours):** Steps 3-4 (metadata + comments)
- **Day 2 Evening (30 min):** Step 5 (verification) + start cloud upload overnight

---

## FAQ

**Q: What if I don't speak Chinese?**
A: You can still archive. URLs and video files don't require translation. For metadata, you can:
- Use Google Translate on Douyin pages
- Leave Chinese descriptions as-is (will be translated later by other team members)
- Focus on numerical data (views, likes, dates) which are universal

**Q: Is this legal?**
A: Archiving publicly posted content for research/documentary purposes is generally legal under fair use. You are NOT hacking, breaching security, or accessing private content. Everything archived is already public on Douyin.

**Q: What if the family doesn't want this archived?**
A: The family has been actively posting this content publicly to raise awareness. They WANT it seen. However, if family directly requests content removal, we will respect that. Archive now (before censorship), use respectfully.

**Q: Could this put the family in danger?**
A: The family is ALREADY public (292K followers). They're already under government scrutiny (police confrontations documented). Archiving their PUBLIC content does not increase risk. In fact, it may PROTECT them - if authorities delete content, we have proof of censorship.

**Q: How long will this archive be relevant?**
A: Permanently. This is historical documentation of:
- Medical malpractice case
- Censorship in action
- Family advocacy
- Social movement in China
- Evidence for potential legal proceedings

Even if case is "resolved," archive has lasting documentary value.

**Q: What if I can only download 20-30 videos, not everything?**
A: Download high-priority videos first (see priority-list.md). Something is better than nothing. Focus on:
- Videos mentioned in media coverage
- Videos with highest engagement
- Videos with specific evidence (autopsy discussion, hospital confrontation, etc.)
- Mother's most emotional testimonies

**Q: Should I watch all the videos?**
A: Not necessary during archiving. Download first, watch later. Priority is preservation. Content analysis can happen after archive is secure.

---

## Critical Success Factors

### This archiving is successful if:

✅ **All currently accessible Douyin videos downloaded** (even if incomplete metadata)
✅ **Account profiles documented** (follower counts, bio, creation date)
✅ **High-priority video comments captured**
✅ **Evidence of censorship documented** (deleted videos, restricted content)
✅ **Archive backed up to cloud + external drive**
✅ **CEO notified of completion**

### This archiving has FAILED if:

❌ Account deleted before archiving started (too late)
❌ Only partial video downloads (missed critical content)
❌ No backup created (single point of failure)
❌ Archive corrupted/unplayable (verification skipped)

---

## Remember

**This is a race against censorship.**

Every hour delayed increases risk of content deletion. The Chinese government has:
- Deleted WeChat articles within 24 hours of posting
- Suppressed Xiaohongshu posts almost immediately
- Removed hospital statements within hours

Douyin has been permissive SO FAR. That could change at any moment.

**Your job:** Preserve this family's story before it's erased.

**Timeline:** Start within 24 hours, complete within 48 hours.

**Stakes:** If this content is deleted and not archived, it's gone forever. The family's voice, the evidence, the public support - all erased.

**You are the last line of defense against censorship.**

Begin immediately.

---

**Document Version:** 1.0
**Created:** 2026-01-11
**Created By:** Archiving Specialist
**Next Review:** After archiving completion

**Questions?** Contact CEO immediately. Do not delay archiving while waiting for answers - download first, ask questions later.
