# Company Structure - Subagent Roles

**Total Agents:** 29 (19 execution + 5 consolidators/coordinators + 4 phase lieutenants + 1 security)

All agent instruction files follow [Claude Code sub-agent format](https://code.claude.com/docs/en/sub-agents) with YAML frontmatter.

---

## Roles & Responsibilities

### CEO (this role)
- Assign all agent tasks
- Coordinate translation, archiving, human-dependent tasks
- Resolve cross-cutting blockers
- Read lieutenant reports (not all agent outputs)
- Make strategic decisions

### Agents (Execution Specialists)
- Execute assigned milestone, produce deliverable
- Flag blockers to CEO (translation, archiving, human tasks)
- Stay in scope, don't solve systemic issues
- Don't spawn other agents or coordinate directly
- Complete all milestones, skip perfection details

### Phase Lieutenants (QA Specialists)
- Review all agent deliverables in their phase
- Report quality/gaps/blockers/readiness to CEO
- Keep CEO context clean (CEO reads reports, not all outputs)

---

## Phase 1: Foundation & Intelligence ✅ COMPLETE

### 1. Chinese Internet Researcher
**Responsibility:** Research Chinese social media for Luoxi incident content
**Output:** work/intelligence/chinese-sources-catalog.md
**Agent:** `.claude/agents/chinese-researcher.md` ✅
**Status:** Complete (70 sources)

### 2. Media Parser
**Responsibility:** Parse and categorize human-curated media/ and sources/
**Output:** work/intelligence/media-inventory.md
**Agent:** `.claude/agents/media-parser.md` ✅
**Status:** Complete (50 files catalogued)

### 3. Timeline Consolidator
**Responsibility:** Create consolidated timeline and key facts
**Output:** work/intelligence/consolidated-timeline.md, key-facts.md
**Agent:** `.claude/agents/timeline-consolidator.md` ✅
**Status:** Complete (150+ facts)

### 4. Narrative Landscape Analyst
**Responsibility:** Identify existing narratives and gaps
**Output:** work/intelligence/narrative-landscape.md
**Agent:** `.claude/agents/narrative-analyst.md` ✅
**Status:** Complete (7 narrative streams)

### 5. Phase 1 Lieutenant
**Responsibility:** QA Phase 1 agent deliverables
**Output:** work/phase-1-report.md
**Agent:** Spawned ad-hoc
**Status:** Complete (Grade A-)

---

## Phase 1.5: Critical Gap Closure (MUST complete BEFORE Phase 2)

### 6. Translation Coordinator
**Responsibility:** Translate priority Chinese content (AI translation + human review)
**Output:** work/intelligence/translations/
**Agent:** `.claude/agents/translation-coordinator.md` 🔜
**Priority:** Top 10 viral facts, timeline, key quotes

### 7. Video Content Analyst
**Responsibility:** Watch all videos, create transcripts and clip annotations
**Output:** work/intelligence/video-analysis/
**Agent:** `.claude/agents/video-analyst.md` 🔜
**Scope:** All 21 videos, timestamps, emotional beats

### 8. Archiving Specialist
**Responsibility:** Create detailed archiving instructions for human worker
**Output:** work/archiving/instructions.md
**Agent:** `.claude/agents/archiving-specialist.md` 🔜
**URGENT:** 24-48hr window for Douyin downloads (@小洛熙妈妈, 292K followers)

---

## Phase 2: Narrative Architecture (AFTER Phase 1.5 completes)

**Sequence:** M2.0 consolidates first → Then M2.1/M2.2/M2.3 develop narratives

### 9. Media Index Brief Creator (PHASE CONSOLIDATOR)
**Responsibility:** Synthesize all Phase 1 + 1.5 outputs into single brief
**Output:** work/narratives/media-index-brief.md
**Agent:** `.claude/agents/media-index-brief-creator.md` 🔜
**Input:** All work/intelligence/ files (12 files ~300KB)
**Critical:** M2.1/M2.2/M2.3 read this instead of all M1 files

### 10. Western Narrative Strategist
**Responsibility:** Develop viral story angles for Western audiences
**Output:** work/narratives/western-framework.md
**Agent:** `.claude/agents/western-narrative.md` ✅ (needs update)
**Reads:** media-index-brief.md (NOT all M1 files)

### 11. Chinese Narrative Strategist
**Responsibility:** Develop solidarity messaging for Chinese audiences
**Output:** work/narratives/chinese-framework.md
**Agent:** `.claude/agents/chinese-narrative.md` ✅ (needs update)
**Reads:** media-index-brief.md (NOT all M1 files)

### 12. Authority Narrative Strategist
**Responsibility:** Develop defensible framing for Chinese authorities
**Output:** work/narratives/authority-framework.md
**Agent:** `.claude/agents/authority-narrative.md` ✅ (needs update)
**Reads:** media-index-brief.md (NOT all M1 files)

### 13. Phase 2 Lieutenant
**Responsibility:** QA Phase 2 agent deliverables
**Output:** work/phase-2-report.md
**Agent:** To be spawned after Phase 2 completion

---

## Phase 3: Viral Mechanics & Growth Strategy (NEW - Days 2-3)

### 14. Viral Mechanics Researcher
**Responsibility:** Research platform algorithms and viral content mechanics
**Output:** work/viral-mechanics/platform-algorithms.md
**Agent:** `.claude/agents/viral-mechanics-researcher.md` 🔜
**Research Areas:**
- TikTok FYP algorithm triggers, hook timing, retention curves
- Instagram Reels optimization (hashtags, audio trends, posting times)
- YouTube Shorts vs Long-form conversion mechanics
- X/Twitter thread virality patterns and engagement triggers
- Hook formulas, pattern interrupts, A/B testing frameworks
- Optimal posting schedules by platform and timezone

### 15. Growth Hacking Strategist
**Responsibility:** Develop influencer collaboration and cross-platform amplification tactics
**Output:** work/viral-mechanics/growth-tactics.md
**Agent:** `.claude/agents/growth-hacking-strategist.md` 🔜
**Focus Areas:**
- Influencer collaboration playbook (micro vs macro influencers)
- Community building strategies
- Cross-platform amplification tactics
- Paid vs organic balance recommendations
- Viral loop engineering
- User-generated content strategies

### 16. Wikipedia Strategist
**Responsibility:** Wikipedia article creation strategy and execution plan
**Output:** work/wikipedia/strategy.md, work/wikipedia/article-draft.md
**Agent:** `.claude/agents/wikipedia-strategist.md` 🔜
**Deliverables:**
- Notability assessment (media coverage meets Wikipedia criteria?)
- Article structure planning (lead section, timeline, evidence, reception)
- Citation building strategy (reliable sources inventory)
- Neutral point of view (NPOV) compliance strategy
- Article draft ready for human submission

### 17. Phase 3 Lieutenant
**Responsibility:** QA Phase 3 viral mechanics deliverables
**Output:** work/phase-3-report.md
**Agent:** To be spawned after Phase 3 completion

---

## Phase 4: Content Production Infrastructure (Days 4-5)

### 18. Production Brief Creator (PHASE CONSOLIDATOR)
**Responsibility:** Synthesize Phase 2 narratives + Phase 3 viral mechanics
**Output:** work/production/production-brief.md
**Agent:** `.claude/agents/production-brief-creator.md` 🔜
**Input:** media-index-brief.md + Phase 2 frameworks + Phase 3 viral mechanics research
**Critical:** M4.1-M4.6 read this instead of all previous phase files

### 19. AI Tools Researcher
**Responsibility:** Research prompt-driven AI content generation tools
**Output:** work/production/ai-tools-vetted.md
**Agent:** `.claude/agents/ai-tools-researcher.md` ✅ (needs update)
**Critical:** Must find scriptable, prompt-driven tools only

### 20. TikTok Strategist
**Responsibility:** TikTok strategy and scriptable content prompts
**Output:** work/production/tiktok-strategy.md, tiktok-ai-prompts/
**Agent:** `.claude/agents/tiktok-strategist.md` ✅ (needs update)
**Input:** Phase 3 viral mechanics research + Phase 2 narrative frameworks

### 21. YouTube Shorts Strategist
**Responsibility:** YouTube Shorts strategy and scriptable prompts
**Output:** work/production/youtube-strategy.md, youtube-ai-prompts/
**Agent:** `.claude/agents/youtube-strategist.md` ✅ (needs update)
**Input:** Phase 3 viral mechanics research + Phase 2 narrative frameworks

### 22. Instagram Strategist
**Responsibility:** Instagram (Reels, posts, Stories) strategy and prompts
**Output:** work/production/instagram-strategy.md, instagram-ai-prompts/
**Agent:** `.claude/agents/instagram-strategist.md` ✅ (needs update)
**Input:** Phase 3 viral mechanics research + Phase 2 narrative frameworks

### 23. X/Twitter Strategist
**Responsibility:** X strategy with threads and viral tweets
**Output:** work/production/x-strategy.md, x-text-prompts/
**Agent:** `.claude/agents/x-strategist.md` ✅ (needs update)
**Input:** Phase 3 viral mechanics research + Phase 2 narrative frameworks

### 24. Content Production Coordinator
**Responsibility:** Synthesize all platform strategies into unified production system
**Output:** work/production/master-production-workflow.md, prompt-library/
**Agent:** `.claude/agents/content-production-coordinator.md` ✅ (needs update)
**Critical:** Creates Batch 1 (20-30 pieces) ready-to-execute prompts

### 25. Phase 4 Lieutenant
**Responsibility:** QA Phase 4 agent deliverables
**Output:** work/phase-4-report.md
**Agent:** To be spawned after Phase 4 completion

---

## Phase 5-8: Launch & Growth

### 26. Performance Analyst
**Responsibility:** Analyze content performance and provide optimization recommendations
**Output:** work/analytics/performance-reports.md
**Agent:** `.claude/agents/performance-analyst.md` ✅ (needs update)
**When:** After content is live and generating data

---

## Ongoing Operations

### 27. Intelligence Monitor
**Responsibility:** Weekly monitoring of case developments and campaign progress
**Output:** work/intelligence/updates/
**Agent:** `.claude/agents/intelligence-monitor.md` ✅ (needs update)
**Cadence:** Weekly, starting after Phase 1

---

## Security & Privacy (Post-Phase Audits)

### 29. Privacy Review Agent
**Responsibility:** Scan all phase outputs for PII leaks, create remediation plans
**Output:** work/[phase-dir]/PRIVACY-REMEDIATION-PLAN.md, AGENT-REPORT-privacy-review-agent.md
**Agent:** `.claude/agents/privacy-review-agent.md` ✅ CREATED
**Trigger:** After each phase completes, before proceeding to next phase
**Critical Mission:** Protect human collaborator anonymity from retaliation (SECURITY-CRITICAL)

**PII Categories:**
- Absolute paths with usernames (`/Users/[username]/`)
- Real names, emails, personal social media handles
- IP addresses, specific geographic locations
- API keys, credentials, machine hostnames

**Deliverables:**
1. AGENT-REPORT with leak count and severity
2. PRIVACY-REMEDIATION-PLAN.md with:
   - File-by-file leak documentation
   - sed commands for fixing working files
   - git filter-repo commands for rewriting history (human executes)

**Severity Protocol:**
- 🚨 CRITICAL (names, locations, credentials): Halt all work, fix within 24hr
- HIGH (usernames in paths): Fix before next phase
- MEDIUM (correlatable metadata): Fix in normal workflow

---

# Agent Summary

**Total Agents: 26**

**Phase 1 (4 agents + 1 lieutenant):** Intelligence gathering and source consolidation ✅ COMPLETE
**Phase 1.5 (3 agents):** Translation, video analysis, archiving coordination ✅ COMPLETE
**Phase 2 (1 consolidator + 3 narrative + 1 lieutenant):** M2.0 consolidates → then narrative frameworks 🔜 NEXT
**Phase 3 (1 consolidator + 6 production + 1 lieutenant):** Production brief + scriptable content system
**Phase 4+ (1 agent):** Performance analysis and optimization
**Ongoing (1 agent):** Intelligence monitoring
**Security (1 agent):** Post-phase privacy review (runs after each phase)

**Key Patterns:**
- **Phase Consolidators:** Each phase starts with brief creator (M2.0, M3.0) to synthesize previous phase
- **Scriptable workflows:** All content is prompt-driven, minimal human manual work
- **Agent scope discipline:** Execute task, flag blockers, don't solve cross-cutting issues
- **Context efficiency:** Lieutenants report to CEO, CEO doesn't read all agent outputs
- **World-class talent:** Every agent is tip-top specialist in their field

---

# Context Requirements by Agent Type

**Every agent reads:**
- company-handbook.md (minimal operational guidelines)
- Their own .claude/agents/[name].md instruction file
- Their assignment from CEO
- incident.md (shared incident facts)

**Phase 1 - Intelligence agents (COMPLETE):**
- Media Parser ONLY: media/ and sources/ folders (huge files, needs pre-processing)
- Chinese Researcher: Chinese internet sources
- Timeline Consolidator: work/intelligence/media-inventory.md, work/intelligence/chinese-sources-catalog.md
- Narrative Analyst: work/intelligence/ outputs
- Phase 1 Lieutenant: All work/intelligence/ files for QA

**Phase 1.5 - Gap Closure agents:**
- Translation Coordinator: work/intelligence/ (all Phase 1 outputs to identify priority translations)
- Video Analyst: media/ folder (video files), work/intelligence/media-inventory.md
- Archiving Specialist: work/intelligence/media-inventory.md, family social media info

**Phase 2 - Narrative agents:**
- **M2.0 Media Index Brief Creator:** ALL work/intelligence/ files (12 files ~300KB) - this is the ONLY agent that reads all M1 outputs
- **M2.1/M2.2/M2.3 Narrative Strategists:** work/narratives/media-index-brief.md ONLY (NOT all M1 files)
- Phase 2 Lieutenant: All work/narratives/ files for QA

**Phase 3 - Content Production agents:**
- **M3.0 Production Brief Creator:** media-index-brief.md + all work/narratives/ Phase 2 frameworks
- **M3.1 AI Tools Researcher:** production-brief.md ONLY
- **M3.2-M3.5 Platform Strategists:** production-brief.md + work/production/ai-tools-vetted.md
- **M3.6 Content Production Coordinator:** production-brief.md + all platform strategies
- Phase 3 Lieutenant: All work/production/ files for QA

**Phase 4+ - Analytics agents:**
- Performance Analyst: work/analytics/data/ (human-provided), work/production/prompt-library/

**Ongoing - Intelligence Monitor:**
- work/intelligence/ (all intelligence outputs)
- work/ceo/strategy.md (milestone tracking)

**Security - Privacy Review Agent:**
- work/[phase-dir]/ (all outputs from completed phase)
- Scans: *.md, *.py, *.sh, *.txt files for PII leaks
- Does NOT edit files without CEO approval
- Creates remediation plans for human execution

**CEO reads:**
- context/ceo.md (session persistence)
- work/ceo/strategy.md, company-structure.md
- work/phase-N-report.md (lieutenant reports ONLY, not all agent outputs)
- Specific blockers/questions from agents as needed
