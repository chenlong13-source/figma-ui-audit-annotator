---
name: figma-ui-audit-annotator
description: Compare a Figma design frame with a Figma frame that contains one or more live-page screenshots, identify UI mismatches, and write annotated audit results back into Figma. Use when Codex needs to perform UI design QA, visual acceptance review, screenshot-vs-design diffing, popup/dialog audit, layout or spacing checks, interaction-structure checks, field-count checks, or to generate numbered findings directly on a Figma board.
---

# Figma Ui Audit Annotator

## Overview

Audit a shipped UI against a Figma design by reading both frames, deciding what should and should not be compared, and writing numbered red-dot annotations plus a structured findings panel back into the screenshot frame.

Prefer this skill when the user already has Figma frames for both the design and the live UI state and wants the result written directly into Figma instead of a plain text report.

## Workflow

1. Read the design frame and the live screenshot frame from Figma.
2. Identify the comparison scope before creating findings.
3. Compare structure, function, interaction, field count, layout, and visual styling.
4. Place numbered markers on the screenshot frame.
5. Write a numbered findings panel at the bottom of the screenshot frame.
6. Keep marker numbering and panel numbering in exact sync.

## Scope Rules

- If the live frame is a normal page, compare the full visible page structure.
- If the live frame is a popup or dialog state with a dark overlay, compare only the highlighted popup card. Do not treat the dimmed background page as part of the popup-state audit result.
- If the user provides multiple screenshots in one frame, keep findings attached to the screenshot where the issue is visible.
- If the design and screenshot are different states, record state mismatch explicitly instead of forcing a visual-only comparison.

## What To Check

Check these categories:

- `功能差异`: missing or extra functional structures such as top tabs, filter modules, dialog actions, or navigation patterns
- `交互差异`: changed interaction hierarchy, replaced controls, moved filter levels, missing toggles, or incorrect expanded states
- `字段差异`: added, removed, or reordered fields inside cards, dialogs, or detail sections
- `布局差异`: size, position, padding, whitespace, alignment, spacing, and distribution
- `视觉差异`: color, typography, icon style, border, radius, shadow, and button treatment

When checking fields, compare both field count and field meaning. Treat an added field as a distinct finding even when styling still looks correct.

## Marker Rules

- Use numbered red dots on the screenshot frame.
- Keep marker size and numbering consistent across the whole audit.
- Place the dot on the exact problematic element whenever the issue belongs to a specific control, label, field, or card.
- Place the dot directly in the whitespace region when the issue is a spacing or gap problem.
- Place the dot on the added or missing field position when the issue is a field-count difference.
- Do not place a marker on the dimmed background of a popup-state audit unless the popup itself is not the intended comparison scope.

## Findings Panel Rules

- Add a bottom findings panel to the screenshot frame.
- Include top-level summary fields for `页面功能差异` and `交互差异`.
- Follow those summary fields with a numbered finding list.
- Keep finding numbers identical to the marker numbers.
- Use short, concrete wording focused on the mismatch itself.
- Prefer phrases like `一级 Tab 缺失`, `字段数量不一致`, `间距偏大`, `按钮宽度偏小`, `筛选层级前置`.

## Figma Writeback Rules

- Keep the original screenshot pixels untouched.
- Write annotations into a dedicated layer such as `AUTO_UI_DIFF_ANNOTATIONS`.
- If rerunning the audit, replace the previous generated annotation layer instead of stacking duplicates.
- Expand the screenshot frame height if needed so the findings panel is fully readable.

## References

- Read [references/audit-rules.md](references/audit-rules.md) before implementing or revising the audit logic.
- Use the rules there as the source of truth for comparison categories, popup handling, marker placement, and panel content.

## Expected Inputs

- A Figma design frame URL or file key plus node ID
- A Figma screenshot frame URL or file key plus node ID
- Optional user preferences for marker style, numbering style, or report layout

## Expected Outputs

- A Figma screenshot frame annotated with numbered markers
- A synchronized findings panel written into the same frame
- Clear identification of whether each finding is visual, layout, interaction, function, or field-count related
