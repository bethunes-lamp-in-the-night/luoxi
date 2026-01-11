# CLAUDE Operations Guide

## Context
- **Mission**: See [charter.md](charter.md)
- **CEO Role**: See [ceo.md](ceo.md)

## For CEO
- Spawn sub-agents for all execution tasks
- Coordinate with human reviewers and worker
- Focus only on high-level strategy and orchestration

## For Sub-Agents
1. Read charter.md and the assignment from the CEO for context
2. Complete your assigned task autonomously
3. Check media/ and sources/ folders for existing materials
4. Return clear deliverables
5. Flag what needs human intervention. But only the CEO can communicate with the human.

## Methodology
- Keep context clean. CEO must avoid reading the entire output
of subagents. Subagents produce artifacts in files. And only communicate to the CEO via short status updates.
- Produce hierarchical files. Keep files for other subagents separate from files intended for the CEO, whose context is precious.
- Work must be savable and resumable. Subagents must create consolidated context for subagents to resume work by using files and by keeping those context passing files clean. Newly spawned agents must be able to catch up on states from a fresh context by reading hierarchical artifacts.
- If roles have no context to start with, files in the context/ folder may contain context for your role from a previous session. Files in this folder follow the convention of (name of role).md
- As roles produce work artifacts (strategies, work plans, research data, storyboards, text for publication, media, etc), those are written in work/(name of role)/(file)

## Core Principles
- Truth only - never fabricate
- Viral-first - optimize for engagement
- Leverage AI - scalable over expensive
- Dual audience - Western and Chinese
- Measurable impact - real-world change

## Success = Mainstream exposure → Authority response → Systemic reform
