# Company Handbook

**For all employees (CEO and subagents)**

---

## Essential Reading

- **Mission & Principles:** [charter.md](charter.md)
- **Incident Facts:** [incident.md](incident.md)
- **CEO Role:** [ceo.md](ceo.md)
- **This Handbook:** Operational guidelines below

---

## File Organization

### Human-Curated (NEVER EDIT)
- `sources/` - Human-curated, possibly censored/deleted
- `media/` - Human-curated media files

### Work Outputs
- `work/` - All subagent outputs, organized by role

### Company Documents
- `charter.md` - Mission
- `incident.md` - Incident facts
- `company-handbook.md` - This file
- `company-structure.md` - Agent roles and context requirements
- See company-structure.md for what YOUR role needs to read

---

## Core Principles

- Truth only - never fabricate
- Viral-first - optimize for engagement
- Dual audience - Western and Chinese
- Measurable impact - real-world change
- **Protect collaborator anonymity** - no PII leaks (SECURITY-CRITICAL)

---

## Privacy & Security Requirements

**MANDATORY for all agents:**

### Never Write PII

❌ **PROHIBITED:**
- Absolute paths with usernames: `/Users/[username]/`, `/home/[username]/`
- Real names, email addresses, personal social media handles
- IP addresses, specific geographic locations (city-level or more specific)
- Machine hostnames with user identifiers
- API keys, credentials, tokens

✅ **REQUIRED:**
- Project-relative paths: `work/intelligence/file.md`
- Generic absolute paths: `$PROJECT_ROOT/` or `/path/to/project/`
- Geographic regions only: "China", "United States" (no cities)
- Anonymized references: "human collaborator", "team member"

### Privacy Review Process

**After each phase completes:**
1. CEO spawns Privacy Review Agent
2. Agent scans all phase outputs for PII leaks
3. Agent creates remediation plan (file fixes + git history rewrite)
4. Human executes git history rewrite (only humans manage git history)
5. CEO verifies clean before proceeding to next phase

**Severity levels:**
- 🚨 **CRITICAL** (names, locations, credentials): Halt all work, fix within 24hr
- **HIGH** (usernames in paths): Include in remediation plan, fix before next phase
- **MEDIUM** (correlatable metadata): Document, fix in normal workflow

---

## Agent Output Standards

### Required Files

Every agent MUST produce exactly ONE standardized report:

**Filename:** `AGENT-REPORT-[agent-name].md`
**Location:** `work/[phase-dir]/AGENT-REPORT-[agent-name].md`
**Template:** Copy from `.claude/templates/AGENT-REPORT-template.md`

**Required sections:**
- Executive Summary (max 200 words)
- Deliverables (list of files produced)
- Key Findings / Recommendations
- Blockers / Issues (if any)
- Next Steps

### Prohibited Files

❌ **DO NOT create:**
- Multiple summary/briefing files (URGENT-CEO-BRIEFING.md + START-HERE.md + README.md)
- Version-labeled files (FINAL-[name].md, REVISED-[name].md) - use Git for versions
- Redundant methodology explanations across multiple files
- Navigation files pointing to other files

### File Taxonomy

```
work/
├── [phase-dir]/
│   ├── AGENT-REPORT-[name].md     ← YOUR standardized report to CEO
│   ├── [deliverable].md            ← Core deliverables (referenced in report)
│   ├── for-humans/                 ← Human execution instructions only
│   │   └── [task]-instructions.md
│   └── research/                   ← Supporting research (optional)
│       └── [topic]-analysis.md
```

**Directory rules:**
- `for-humans/` - Instructions meant for human workers, not CEO or agents
- `research/` - Supporting analysis that doesn't need to be in main deliverables
- Root of phase dir - Core deliverables and agent report only

---

## File Naming Standards

**Agent reports:** `AGENT-REPORT-[agent-name].md`
- Example: `AGENT-REPORT-video-analyst.md`

**Core deliverables:** `[descriptive-name].md` (lowercase, hyphens)
- Example: `consolidated-timeline.md`, `media-inventory.md`, `video-analysis-master.md`

**Scripts:** `[action-description].sh` or `[action-description].py`
- Example: `setup-gemini.sh`, `analyze-videos-gemini.py`

**Human instructions:** `for-humans/[task]-instructions.md`
- Example: `for-humans/archiving-instructions.md`

---

## Communication Protocol

**Subagent → CEO:**
- Produce ONE standardized AGENT-REPORT-[name].md
- CEO reads your report, not all your deliverables
- Flag blockers requiring human intervention
- Keep CEO context minimal

**Inter-Agent Communication:**
- Agents read Phase Consolidator briefs (e.g., media-index-brief.md from M2.0)
- Agents DO NOT read all raw outputs from previous phase
- Phase Consolidators synthesize 300KB → 15-20KB for downstream agents

**Version Control:**
- Overwrite files when revising (Git tracks history)
- No FINAL/REVISED/V2 filename prefixes
- If major pivot, document in agent report changelog

**Single Source of Truth:**
- One agent report per agent
- No duplicate summaries or briefings
- Clear ownership of each deliverable
