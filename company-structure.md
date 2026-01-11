# Company Structure - Subagent Roles

All agent instruction files follow [Claude Code sub-agent format](https://code.claude.com/docs/en/sub-agents) with YAML frontmatter.

---

## Phase 1: Foundation & Intelligence (TODAY)

### 1. Chinese Internet Researcher
**Responsibility:** Research Chinese social media for Luoxi incident content
**Output:** work/intelligence/sources/
**Agent:** `.claude/agents/chinese-researcher.md` ✅

### 2. Media Parser
**Responsibility:** Parse and categorize human-curated media/ and sources/
**Output:** work/intelligence/media-inventory.md
**Agent:** `.claude/agents/media-parser.md` ✅

### 3. Timeline Consolidator
**Responsibility:** Create consolidated timeline and key facts
**Output:** work/intelligence/consolidated-timeline.md, key-facts.md
**Agent:** `.claude/agents/timeline-consolidator.md` ✅

### 4. Narrative Landscape Analyst
**Responsibility:** Identify existing narratives and gaps
**Output:** work/intelligence/narrative-landscape.md
**Agent:** `.claude/agents/narrative-analyst.md` ✅

---

## Phase 2: Narrative Architecture (TODAY)

### 5. Viral Fact Compiler
**Responsibility:** Extract shocking facts as viral ammunition
**Output:** work/narratives/viral-ammunition.md
**Agent:** `.claude/agents/viral-fact-compiler.md` ✅

### 6. Western Narrative Strategist
**Responsibility:** Develop viral story angles for Western audiences
**Output:** work/narratives/western-framework.md
**Agent:** `.claude/agents/western-narrative.md` ✅

### 7. Chinese Narrative Strategist
**Responsibility:** Develop solidarity messaging for Chinese audiences
**Output:** work/narratives/chinese-framework.md
**Agent:** `.claude/agents/chinese-narrative.md` ✅

### 8. Authority Narrative Strategist
**Responsibility:** Develop defensible framing for Chinese authorities
**Output:** work/narratives/authority-framework.md
**Agent:** `.claude/agents/authority-narrative.md` ✅

---

## Phase 3: Content Production Infrastructure (Days 2-3)

### 9. AI Tools Researcher
**Responsibility:** Research prompt-driven AI content generation tools
**Output:** work/production/ai-tools-vetted.md
**Agent:** `.claude/agents/ai-tools-researcher.md` ✅
**Critical:** Must find scriptable, prompt-driven tools only

### 10. TikTok Strategist
**Responsibility:** TikTok strategy and scriptable content prompts
**Output:** work/production/tiktok-strategy.md, tiktok-ai-prompts/
**Agent:** `.claude/agents/tiktok-strategist.md` ✅

### 11. YouTube Shorts Strategist
**Responsibility:** YouTube Shorts strategy and scriptable prompts
**Output:** work/production/youtube-strategy.md, youtube-ai-prompts/
**Agent:** `.claude/agents/youtube-strategist.md` ✅

### 12. Instagram Strategist
**Responsibility:** Instagram (Reels, posts, Stories) strategy and prompts
**Output:** work/production/instagram-strategy.md, instagram-ai-prompts/
**Agent:** `.claude/agents/instagram-strategist.md` ✅

### 13. X/Twitter Strategist
**Responsibility:** X strategy with threads and viral tweets
**Output:** work/production/x-strategy.md, x-text-prompts/
**Agent:** `.claude/agents/x-strategist.md` ✅

### 14. Content Production Coordinator
**Responsibility:** Synthesize all platform strategies into unified production system
**Output:** work/production/master-production-workflow.md, prompt-library/
**Agent:** `.claude/agents/content-production-coordinator.md` ✅
**Critical:** Creates Batch 1 (20-30 pieces) ready-to-execute prompts

---

## Phase 4-7: Launch & Growth

### 15. Performance Analyst
**Responsibility:** Analyze content performance and provide optimization recommendations
**Output:** work/analytics/performance-reports.md
**Agent:** `.claude/agents/performance-analyst.md` ✅
**When:** After content is live and generating data

---

## Ongoing Operations

### 16. Intelligence Monitor
**Responsibility:** Weekly monitoring of case developments and campaign progress
**Output:** work/intelligence/updates/
**Agent:** `.claude/agents/intelligence-monitor.md` ✅
**Cadence:** Weekly, starting after Phase 1

---

# Agent Summary

**Total Agents Created:** 16

**Phase 1 (4 agents):** Intelligence gathering and source consolidation
**Phase 2 (4 agents):** Narrative framework development for 3 audiences
**Phase 3 (6 agents):** Scriptable content production system
**Phase 4+ (1 agent):** Performance analysis and optimization
**Ongoing (1 agent):** Intelligence monitoring

**All agents emphasize:**
- Scriptable, prompt-driven workflows
- Minimal human manual work
- Copy-paste execution for human worker
- Clear, hierarchical file outputs
- Context-efficient communication with CEO

---

# Context Requirements by Agent Type

**Every agent reads:**
- company-handbook.md (minimal operational guidelines)
- Their own .claude/agents/[name].md instruction file
- Their assignment from CEO

**Phase 1 - Intelligence agents additionally read:**
- Media Parser ONLY: media/ and sources/ folders (huge files, needs pre-processing)
- Chinese Researcher: incident.md
- Timeline Consolidator: work/intelligence/media-inventory.md, work/intelligence/sources/
- Narrative Analyst: work/intelligence/ outputs

**Phase 2 - Narrative agents additionally read:**
- work/intelligence/consolidated-timeline.md
- work/intelligence/key-facts.md
- work/intelligence/viral-ammunition.md (after M2.0)
- incident.md (as reference)

**Phase 3 - Content Production agents additionally read:**
- work/narratives/ (all narrative frameworks)
- work/production/ai-tools-vetted.md
- Platform strategists read each other's outputs
- Content Production Coordinator reads all platform strategies

**Phase 4+ - Analytics agents additionally read:**
- work/analytics/data/ (performance data from human)
- work/production/prompt-library/ (what content was produced)

**Ongoing - Intelligence Monitor additionally reads:**
- work/intelligence/ (all intelligence outputs)
- incident.md
- work/ceo/strategy.md (for milestone tracking)

**CEO reads:**
- context/ceo.md (session persistence)
- work/ceo/ (strategy, structure)
- Short status updates from subagents (not full outputs)
- Specific deliverables as needed for decision-making
