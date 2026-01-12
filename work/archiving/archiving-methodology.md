# Archiving Methodology - Luoxi Douyin Content Preservation

**Document Type:** Technical specification and strategic justification
**Created:** 2026-01-11
**Author:** Archiving Specialist
**Purpose:** Document tool selection rationale, priority criteria, quality standards, and recommendations for CEO review

---

## Executive Summary

This archiving operation targets **@小洛熙妈妈 (292K followers)** and **@小洛熙爸爸 (141K followers)** on Douyin platform before imminent censorship. Based on analysis of Chinese platform censorship patterns, **Douyin has been surprisingly permissive** compared to Xiaohongshu (aggressive suppression) and WeChat (article deletions). However, this permissiveness could **end at any moment** once censorship directive issued.

**Critical window:** 24-48 hours
**Expected yield:** 70-200 videos, 5-10GB
**Success criteria:** Preserve family's public narrative before deletion

---

## 1. Tool Selection Criteria & Rationale

### Primary Tool: Douyin Downloader (Python-based)

**Selected Tool:** TikTokDownload / douyin-downloader
**Repository:** https://github.com/Johnserf-Seed/TikTokDownload

**Why This Tool:**

1. **Batch Download Capability**
   - Accepts URL list as input (50-200 URLs)
   - Automated sequential downloading (can run overnight)
   - No manual intervention per video
   - Alternative tools (4K Video Downloader) require one-by-one clicking = 3-5x longer

2. **Metadata Preservation**
   - Generates JSON sidecar files with:
     - Post date/time
     - View count, like count, comment count
     - Video description/caption
     - Author information
     - Video quality/resolution
   - Critical for evidentiary timeline reconstruction
   - Alternative tools often discard metadata

3. **Quality Control**
   - Downloads highest available resolution (up to 1080p on Douyin)
   - Preserves original video codec (no re-encoding = no quality loss)
   - Filename includes video ID (prevents duplicates, enables verification)

4. **Active Maintenance**
   - Updated regularly to counter Douyin API changes
   - Community support for troubleshooting
   - Works around regional restrictions

5. **Open Source = Auditability**
   - Code is transparent (no malware, no data theft)
   - Can be modified if tool breaks
   - No vendor lock-in or licensing issues

**Trade-offs:**
- ❌ Requires Python installation (technical barrier for non-coders)
- ❌ Command-line interface (no GUI)
- ✅ BUT: One-time setup cost, then superior efficiency

### Backup Tool: 4K Video Downloader (GUI)

**Selected Tool:** 4K Video Downloader (commercial software with free tier)
**Website:** https://www.4kdownload.com/

**Why This Tool:**

1. **Zero Technical Knowledge Required**
   - Point-and-click interface
   - Paste URL, click download, done
   - No command line, no coding

2. **Reliability**
   - Well-established software (10+ years)
   - Regular updates for platform compatibility
   - Works on Mac, Windows, Linux

3. **Quality Options**
   - User selects quality (original, 1080p, 720p, etc.)
   - Can preview before download

**Trade-offs:**
- ❌ Manual one-by-one downloads (no batch processing in free version)
- ❌ Slower (3-5x time vs. automated batch)
- ❌ No automatic metadata extraction
- ✅ BUT: Better than nothing if Python tools fail

### Tertiary: Web-Based Tools

**Examples:** ssstik.io, snaptik.app, douyin.wtf

**Use Case:** Emergency backup only

**Advantages:**
- No installation required
- Works on any device with browser
- Quick spot downloads

**Severe Limitations:**
- Single video only (no batch)
- Quality limits (often 720p max)
- No metadata preservation
- Rate limits (may block after 5-10 downloads)
- Unreliable (sites go down frequently)
- Privacy concerns (third-party processing)

**When to Use:**
- Primary tools completely broken
- Single high-value video needs immediate download
- Working from restricted computer (no install permissions)

### Tools NOT Recommended

**yt-dlp:**
- ❌ Douyin support inconsistent
- ❌ Frequently broken due to API changes
- ✅ Excellent for YouTube, poor for Douyin

**Browser Extensions (Douyin Downloader plugins):**
- ❌ Often malware or data harvesters
- ❌ Break frequently with browser updates
- ❌ Limited functionality

**Screen Recording:**
- ❌ Time-intensive (must play each video in real-time)
- ❌ Quality loss (screen recording compression)
- ❌ No metadata captured
- ✅ ONLY use for live streams (which can't be downloaded otherwise)

---

## 2. Priority Determination Methodology

### Ranking Criteria (Weighted Scoring System)

Each video scored 1-5 on each criterion, total score determines priority:

#### Criterion 1: Evidentiary Value (Weight: 40%)

**5 points - Critical Evidence:**
- Contains specific medical details (surgery timeline, complications, autopsy findings)
- Real-time documentation (posted during/immediately after events)
- Contradicts official narrative (proves cover-up or malfeasance)
- Names individuals/institutions (accountability targets)

**3 points - Supporting Evidence:**
- Corroborates timeline
- Provides context for key events
- Shows family's contemporaneous understanding

**1 point - Limited Evidence:**
- General statements
- No specific claims
- Emotional content without factual detail

**Examples:**
- 5 points: Autopsy report announcement video (specific findings, contradicts hospital)
- 3 points: Pre-surgery family video (shows baby's baseline health)
- 1 point: General memorial video (emotion but no facts)

#### Criterion 2: Emotional Impact / Viral Potential (Weight: 30%)

**5 points - Universally Compelling:**
- Impossible to watch without emotional response
- Transcends cultural/language barriers
- Creates visceral reaction (crying grandmother, begging mother)
- High shareability

**3 points - Moderately Impactful:**
- Touching but requires context
- Resonates with specific audiences (parents, medical professionals)
- Good but not extraordinary

**1 point - Low Impact:**
- Mundane content
- Requires extensive explanation
- Limited emotional resonance

**Examples:**
- 5 points: Grandmother feeding empty baby clothes (surreal grief visualization)
- 3 points: Before/after photo compilation (sad but common format)
- 1 point: Father reading news article (informative but not visceral)

#### Criterion 3: Censorship Risk (Weight: 20%)

**5 points - Imminent Deletion Risk:**
- Direct criticism of government/hospital
- Names officials or institutions
- Alleges corruption or cover-up
- Already censored on other platforms (Xiaohongshu, WeChat)

**3 points - Moderate Risk:**
- Implicit criticism
- Questioning official narrative
- High engagement (authorities may notice)

**1 point - Low Risk:**
- Factual, neutral tone
- No accusations
- Low visibility

**Examples:**
- 5 points: Hospital confrontation video (criticizes institution, shows conflict)
- 3 points: Timeline explanation (questions narrative but not overtly critical)
- 1 point: Memorial music video (emotional tribute, no criticism)

**Strategic Note:** High censorship risk = HIGH PRIORITY download (archive before deletion)

#### Criterion 4: Uniqueness / Irreplaceability (Weight: 10%)

**5 points - Unique Primary Source:**
- Only record of event (live stream, real-time posting)
- Cannot be recreated or found elsewhere
- Original source (not re-post)

**3 points - Rare but Possibly Duplicated:**
- May exist in news coverage or other accounts
- Difficult to find but not impossible

**1 point - Widely Available:**
- Shared by many accounts
- Archived by news outlets
- Low risk of total loss

**Examples:**
- 5 points: Parents' live stream from hospital (real-time, no replay)
- 3 points: Mother's testimony video (unique to her account but may be clipped by news)
- 1 point: News article screenshot (original article still exists)

### Priority Tiers

**HIGH PRIORITY (Score: 14-20 points)**
- Download within first 4 hours
- ~25-30 videos expected
- Core narrative + evidence + highest viral potential

**MEDIUM PRIORITY (Score: 8-13 points)**
- Download within 24 hours
- ~30-50 videos expected
- Supporting content, moderate viral potential

**LOW PRIORITY (Score: 1-7 points)**
- Download within 48 hours if time permits
- ~remaining videos
- Archival completeness, low urgency

### Why This System

**Objectivity:** Reduces arbitrary decisions, repeatable process
**Transparency:** Can justify why X video prioritized over Y
**Flexibility:** Can re-score if new information emerges
**Efficiency:** Maximizes impact if time runs out mid-archive

---

## 3. Quality Standards

### Video Quality Requirements

**Minimum Acceptable:**
- Resolution: 480p or higher
- Frame rate: 24fps or higher
- Audio: Clear, no corruption
- Playback: Full video length, no truncation

**Target Quality:**
- Resolution: 720p-1080p (highest available on Douyin)
- Frame rate: 30fps (Douyin standard)
- Audio: Original bitrate
- Format: MP4 (universally compatible)

**Verification Process:**
1. Random sampling (test 10% of downloads)
2. Check video plays start-to-finish
3. Verify audio present and synchronized
4. Compare file size to expected (very small = corrupted)
5. Spot-check against original on Douyin

**Failure Threshold:**
- If >5% of downloads corrupted → Stop, diagnose, re-download

### Metadata Completeness Standards

**Essential Metadata (Must Have):**
- Original Douyin URL (for provenance verification)
- Post date (for timeline reconstruction)
- Account name (mother/father/other)
- Video filename (for file management)

**Important Metadata (Should Have):**
- View count, like count, comment count (engagement metrics)
- Video description/caption (Chinese text)
- Duration (for content planning)

**Nice-to-Have Metadata:**
- Download date (for archival record)
- English translation of description
- Content summary/notes

**Metadata Storage:**
- Primary: Excel/CSV spreadsheet (human-readable, sortable)
- Secondary: JSON files (machine-readable, preserves structure)
- Both formats ensure redundancy

### Comments Archiving Standards

**Not Practical to Archive ALL Comments** (some videos have 1000+ comments)

**Selective Archiving Approach:**

1. **High-Priority Videos Only:**
   - Top 10-20 most important videos
   - Focus archiving effort where most valuable

2. **Top Comments (Sorted by Likes):**
   - First 20-50 comments by popularity
   - Captures most resonant public sentiment
   - Most likely to be referenced/cited later

3. **Specific Comment Content:**
   - Medical professional commentary (doctor weighing in)
   - Eyewitness accounts (hospital staff, other patients)
   - Calls to action (organize, donate, share)
   - Evidence of censorship ("my comment was deleted")

4. **Format:**
   - Screenshots (visual proof, includes likes/timestamp)
   - Text transcription (searchable, translatable)
   - Both preferred when time allows

**Why Not Archive All Comments:**
- Time-prohibitive (would take days)
- Diminishing returns (comment #500 rarely adds value)
- Comment sections may be disabled or wiped separately from video

---

## 4. Limitations & Constraints

### Time Constraint (24-48 hours)

**Why So Urgent:**

Based on censorship pattern analysis (see platform-censorship-analysis.md):
- Xiaohongshu suppressed posts "immediately"
- WeChat articles deleted within 24 hours of publication (Dec 20-21)
- Hospital statement deleted within hours of posting (Dec 20)
- Weibo likes/engagement manipulated within 24 hours

**Current Status:**
- Douyin has been permissive SO FAR
- Family account active with 292K followers
- No signs of imminent restriction

**BUT:**
- Censorship directives can be issued with no warning
- Account could be suspended overnight
- Videos could be bulk-deleted in coordinated action

**Risk Assessment:**
- 24 hours: LOW risk (likely safe)
- 48 hours: MODERATE risk (possible action)
- 72+ hours: HIGH risk (increasing probability)
- 1 week+: VERY HIGH risk (censorship likely)

**Strategic Decision:** 24-48 hour window balances urgency with feasibility for single human worker.

### Technical Constraints

**Download Speed:**
- Typical Douyin video: 10-50MB
- 100 videos @ 30MB average = 3GB total
- Download speed: 2-5 Mbps typical (China VPN) = 500KB/s - 1.25MB/s
- Time: 3GB / 0.5MB/s = 6000 seconds = 1.7 hours (best case)
- Realistic with overhead: 3-6 hours download time

**Storage:**
- 100-200 videos @ 30MB avg = 3-6GB
- Comments screenshots: 500MB
- Metadata: 50MB
- **Total: 5-10GB**
- Most laptops have adequate space
- External drive recommended for backup

**VPN Requirement:**
- Douyin region-locked outside China
- VPN to China location required
- VPN adds latency (slows downloads 20-40%)
- VPN may disconnect (interrupts batch downloads)

**Account Access:**
- Some content requires login
- Temporary Douyin account can be created
- Phone number verification (can use temp number services)

### Human Constraints

**Skill Level:** Assume NO technical expertise
- Instructions must be step-by-step
- Avoid jargon, explain terms
- Provide screenshots/examples
- Include troubleshooting section

**Attention:** Human can't monitor 6-hour download
- Batch downloads must run unattended
- Overnight processing recommended
- Clear verification steps at end

**Language:** Human may not speak Chinese
- Can still download (URLs language-agnostic)
- Metadata can be logged in Chinese (translated later)
- Prioritize downloading over translating

### Access Constraints

**Platform-Specific:**
- Douyin web version: Limited functionality (some videos won't load)
- Douyin app: Better access but requires mobile device
- Login requirements: Some content hidden without account

**Geographic:**
- Outside China: VPN required
- Inside China: Direct access but personal safety concern (archiving could be monitored)

**Legal/Ethical:**
- All content is publicly posted (no hacking/breaching)
- Archiving for documentary/research purposes (fair use)
- No monetization (ethical boundary)
- Respect family wishes if they request removal

---

## 5. Recommendations for CEO

### Immediate Actions (Before Archiving Starts)

**1. Verify Current Account Status**
- Check if @小洛熙妈妈 still accessible (may already be deleted)
- Confirm follower count (292K baseline - if dropped significantly, account may be restricted)
- Note most recent post date (if no posts in 3+ days, may indicate pressure)

**2. Assign Human Worker**
- Needs: 3-4 hours active time + overnight availability
- Skills: Basic computer literacy, can follow instructions
- Location: VPN access required if outside China
- Timeline: Start within 24 hours

**3. Prepare Resources**
- Ensure 15GB free storage space
- VPN service ready (if needed)
- Spreadsheet software (Excel, Google Sheets)
- Video player (VLC recommended for verification)

### Estimated Completion Timeline

**Optimistic (All Goes Well):**
- Day 1 Evening: Profile archiving + batch download setup (2 hours)
- Day 1 Overnight: Batch downloads run unattended (6 hours)
- Day 2 Morning: Verify downloads, metadata logging (2 hours)
- Day 2 Afternoon: Comments archiving (1 hour)
- Day 2 Evening: Cloud backup, reporting (1 hour)
- **Total: 12 hours elapsed, 6 hours active**

**Realistic (Minor Issues):**
- Add 50% time for troubleshooting
- Some videos fail, require re-download
- VPN disconnections
- Metadata logging takes longer than expected
- **Total: 18 hours elapsed, 8 hours active**

**Pessimistic (Significant Problems):**
- Tools don't work, need to switch to backup methods
- Many videos already censored
- Account access issues
- **Total: 24-36 hours elapsed, 10-12 hours active**

**Worst Case (Mission Failure):**
- Account already deleted before start
- Complete platform lockdown
- All videos region-blocked
- **Outcome: Partial archive only (whatever accessible)**

### Success Metrics

**Minimum Viable Archive:**
- ✅ 25+ HIGH priority videos downloaded
- ✅ Mother's account profile documented
- ✅ Father's account profile documented
- ✅ Basic metadata (URL, date, account) for all videos
- ✅ At least one backup copy created

**Target Archive:**
- ✅ 80%+ of all accessible videos downloaded
- ✅ Detailed metadata logged
- ✅ Comments archived for top 10 videos
- ✅ Multiple backup copies (cloud + external)
- ✅ Evidence of any censorship documented

**Ideal Archive:**
- ✅ 100% of accessible content downloaded
- ✅ Complete metadata with descriptions
- ✅ Comments for top 20 videos
- ✅ Live streams recorded (if any)
- ✅ 3+ backup locations
- ✅ Archive catalogued and indexed

### Risks & Mitigation

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Account deleted before archiving starts | MEDIUM | CRITICAL | Start within 24 hours; check account status first |
| Tools fail / don't work | LOW-MEDIUM | HIGH | Provide 3 tool options; detailed troubleshooting |
| Downloads too slow (can't finish in 48hrs) | MEDIUM | MEDIUM | Prioritize high-value content first; batch overnight |
| Many videos already censored | MEDIUM | MEDIUM | Document censorship as evidence; search for re-posts |
| VPN issues block access | LOW (outside China) | HIGH | Recommend reliable VPN; test before starting |
| Human worker gets stuck/quits | LOW | HIGH | Clear instructions; troubleshooting; CEO support available |
| Storage space runs out | LOW | MEDIUM | Check space beforehand; use external drive |
| Cloud backup blocked/deleted | LOW | MEDIUM | Multiple backup locations; different jurisdictions |

### Follow-Up Actions Post-Archiving

**Immediate (Within 24 Hours of Completion):**
1. **Verify archive integrity** - Random sampling to ensure videos play
2. **Catalog high-value content** - Flag best videos for immediate use
3. **Monitor original accounts** - Daily checks for censorship/deletions
4. **Brief content team** - Share archive location, high-priority assets

**Short-Term (Within 1 Week):**
1. **Translate descriptions** - Chinese to English for all high-priority videos
2. **Create content catalog** - Searchable index of all archived videos
3. **Extract key clips** - Edit highlights from long videos
4. **Subtitle high-priority videos** - English subtitles for Western distribution

**Ongoing:**
1. **Daily monitoring** - Check Douyin accounts for new posts or censorship
2. **Weekly re-archiving** - Download any new content posted
3. **Backup verification** - Monthly checks that cloud backups still accessible
4. **Update media inventory** - Integrate archive into master inventory document

### Additional Archiving Targets Discovered

During research, identified other potential archiving targets:

**Secondary Priority:**
1. **Weibo accounts** - Father's Weibo (小洛熙爸爸唯一号) also at risk
2. **Zhihu threads** - Medical analysis threads (15+ sources)
3. **Bilibili videos** - Commentary/analysis videos about case

**Why Not Included in Current Operation:**
- Scope constraint (Douyin urgent priority)
- Different platforms = different tools required
- Weibo/Zhihu censorship less aggressive currently
- Can be separate follow-up operation

**Recommendation:** After Douyin archiving complete, assess if additional platform archiving warranted.

---

## 6. Methodology Justification Summary

**Why Douyin First:**
- Family's largest audience (292K followers)
- Primary platform for family advocacy
- Video content (higher impact than text)
- Currently permissive but high deletion risk

**Why These Tools:**
- Batch capability (efficiency)
- Metadata preservation (evidentiary value)
- Reliability + backup options
- Accessible to non-technical users

**Why This Priority System:**
- Maximizes value if time runs out
- Objective criteria (defensible decisions)
- Evidence + emotion + uniqueness balanced

**Why These Quality Standards:**
- Minimum viable (good enough under time pressure)
- Target ideal (if time allows)
- Verification process (catches failures early)

**Why 24-48 Hours:**
- Censorship patterns show rapid takedowns
- Feasible for single worker
- Balances urgency with thoroughness

**Why This Matters:**

Without this archive:
- ❌ Family's narrative erased
- ❌ Evidence deleted
- ❌ Public sentiment lost
- ❌ Censorship succeeds unopposed

With this archive:
- ✅ Family's voice preserved
- ✅ Evidence documented
- ✅ Public support captured
- ✅ Censorship exposed and defeated

**This is not just archiving. This is ensuring the family's story cannot be erased.**

---

## 7. Lessons Learned (To Be Updated Post-Archiving)

*This section to be completed after archiving operation.*

**What Worked:**
- [To be filled in after completion]

**What Didn't Work:**
- [To be filled in after completion]

**Unexpected Challenges:**
- [To be filled in after completion]

**Recommendations for Future:**
- [To be filled in after completion]

---

**Document Version:** 1.0
**Status:** Pre-Operation (Awaiting Archiving Execution)
**Next Update:** Post-archiving completion report
**Cross-Reference:** instructions.md, priority-list.md, platform-censorship-analysis.md, media-inventory.md

---

## Appendix A: Censorship Evidence from Other Platforms

**Reference for urgency justification:**

**Xiaohongshu Suppression:**
- Timeline: Began immediately after case went viral (Nov-Dec 2025)
- Method: Post burial (not deletion - harder to detect)
- Source: V2EX user reports, China Digital Times analysis
- Impact: Story failed to gain traction on platform despite high engagement elsewhere

**WeChat Article Deletions:**
- Timeline: Dec 20-21, 2025 (within 24-48 hours of autopsy publication)
- Articles deleted:
  1. "评论：宁波'小洛熙事件'，患者不能成为试验品" (Data Openness)
  2. "尸检报告和诊断结果不一致？小洛熙悲剧中还有多少问号" (Fourth Ring Youth)
  3. "没人谈小洛熙最初那份'彩超'是怎么做的？" (Zhu Bu Dao)
- Pattern: Critical commentary deleted, neutral news reporting allowed
- Source: China Digital Times archives

**Weibo Engagement Manipulation:**
- Timeline: Within 24 hours of high engagement
- Method: Like counts disappeared, posts removed from trending
- Source: V2EX user report
- Impact: Story reached broader audience but artificially limited

**Hospital Statement Deletion:**
- Timeline: Dec 20, 2025 (hours after posting)
- Content: Hospital's defense statement
- Method: Complete removal
- Source: Multiple news articles referencing now-deleted statement
- Significance: Even OFFICIAL content not immune to deletion

**Pattern:** Censorship escalates AFTER key events (autopsy publication triggered deletions). Douyin family account published autopsy Dec 19 → censorship wave began Dec 20-21. We are in HIGH RISK window NOW.

---

## Appendix B: Tool Comparison Matrix

| Feature | Douyin Downloader | 4K Video Downloader | Web Tools | Screen Recording |
|---------|-------------------|---------------------|-----------|------------------|
| **Batch Download** | ✅ Yes | ❌ No (free) / ✅ Paid | ❌ No | ❌ No |
| **Metadata Capture** | ✅ JSON export | ⚠️ Limited | ❌ No | ❌ No |
| **Quality** | ✅ Original/1080p | ✅ User selectable | ⚠️ Often 720p max | ⚠️ Lossy |
| **Ease of Use** | ⚠️ Command line | ✅ GUI | ✅ Simple | ⚠️ Manual |
| **Speed** | ✅ Fast/automated | ⚠️ Manual clicking | ⚠️ One at a time | ❌ Real-time only |
| **Reliability** | ✅ High | ✅ High | ⚠️ Variable | ✅ High |
| **Cost** | ✅ Free | ⚠️ Free limited/$) | ✅ Free | ✅ Free |
| **Platform Support** | ✅ Douyin-specific | ⚠️ Limited Douyin | ✅ Most support | ✅ Any |
| **Setup Time** | ⚠️ 15-30 min | ✅ 5 min | ✅ None | ✅ Built-in |
| **Best For** | Large batch archives | Small sets, non-technical | Emergency single videos | Live streams only |

**Recommendation:** Use Douyin Downloader for primary archiving (efficiency), keep 4K Video Downloader as backup (reliability), use web tools only in emergencies.

---

**End of Methodology Document**
