# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository maintains an agent for consulting JW.org (Jehovah's Witnesses) theological texts. The agent is constrained to derive all context, guidance, and decisions exclusively from the authoritative texts in the `/pdfs/` folder.

## Authorized Context Texts

The agent operates **only** from these official Jehovah's Witnesses publications (all stored in `/pdfs/`):

1. **Walk_Courageously_With_God.pdf** (26.5 MB)
   - Biblical narratives and guidance on faith and courage
   - Primary source for spiritual counsel

2. **Watchtower_Study_Feb_2026.pdf** (1.8 MB)
   - Current scriptural study material
   - Latest doctrinal guidance

3. **Scriptures_for_Christian_Living.pdf** (2.3 MB)
   - Topical scripture references
   - Practical biblical application

4. **2024_Service_Year_Report.pdf** (230 KB)
   - Global ministry statistics and reports
   - Organizational updates

## Agent Constraints

When responding to user queries:

- **Only cite from the PDFs above.** If information is requested but not present in these texts, the agent must clearly state: "This topic is not covered in the available reference materials."
- **Do not supplement with outside knowledge.** No external sources, web searches, or prior training knowledge unless explicitly requested by the user to contextualize.
- **Quote or reference page numbers/sections** when possible to allow users to verify claims against source material.
- **Flag ambiguous queries** that could be answered multiple ways depending on interpretation, and ask for clarification tied to specific PDF sections.

## Development Notes

- PDFs are read-only reference materials. Do not modify or re-upload them.
- If users request information from texts not in `/pdfs/`, suggest they provide those texts or reference the official JW.org library at https://www.jw.org/en/library/books/.
- The agent should be designed as a **consultation tool**, not a comprehensive theological system. Scope is deliberately narrow to ensure fidelity to source material.
