# Figma UI Audit Annotator

Installable Codex skill for comparing a Figma design frame with a live screenshot frame, annotating mismatches directly in Figma, and generating a synchronized findings panel.

## Repository Layout

- Skill path: `skills/figma-ui-audit-annotator`
- Main skill file: `skills/figma-ui-audit-annotator/SKILL.md`
- Rule reference: `skills/figma-ui-audit-annotator/references/audit-rules.md`

## What This Skill Checks

- visual differences
- layout and spacing differences
- interaction differences
- function and structure differences
- field-count and field-order differences
- popup-card-only auditing for modal states
- marker placement accuracy for element, field, and spacing findings

## Install In Codex

Use the built-in installer skill and point it at this repository path:

```text
Use $skill-installer to install the skill from repo chenlong13-source/figma-ui-audit-annotator at path skills/figma-ui-audit-annotator.
```

If you are running the installer script directly, use:

```bash
scripts/install-skill-from-github.py --repo chenlong13-source/figma-ui-audit-annotator --path skills/figma-ui-audit-annotator
```

After installation, restart Codex so the new skill is discovered.

## Example Prompt

```text
Use $figma-ui-audit-annotator to compare a design frame and a live screenshot frame, mark mismatches with numbered red dots, and write a findings panel into the screenshot frame.
```

## What The Skill Writes Back

- a dedicated Figma annotation layer such as `AUTO_UI_DIFF_ANNOTATIONS`
- numbered red-dot markers on issue locations
- a bottom findings panel with matching numbered items
- summary fields for `页面功能差异` and `交互差异`

## Publish Updates

If you want to publish local changes from this repository folder:

```bash
./publish-to-github.sh https://github.com/chenlong13-source/figma-ui-audit-annotator.git
```

## License

MIT
