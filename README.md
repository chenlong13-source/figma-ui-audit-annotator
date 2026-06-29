# Figma UI Audit Annotator

Installable Codex skill for comparing Figma design frames with live screenshot frames, annotating mismatches directly in Figma, and generating a synchronized findings panel.

## Skill Path

`skills/figma-ui-audit-annotator`

## What It Checks

- visual differences
- layout and spacing differences
- interaction differences
- function and structure differences
- field-count and field-order differences
- popup-card-only auditing for modal states

## Install

Use the Codex skill installer with this repository path:

```text
Use $skill-installer to install skills/figma-ui-audit-annotator from this GitHub repo.
```

If installing by repo/path:

```text
scripts/install-skill-from-github.py --repo <owner>/<repo> --path skills/figma-ui-audit-annotator
```

## Publish This Repo

If the repository already exists on GitHub, publish this local folder with:

```text
./publish-to-github.sh <git@github.com:owner/repo.git>
```

or

```text
./publish-to-github.sh <https://github.com/owner/repo.git>
```

## Example Prompt

```text
Use $figma-ui-audit-annotator to compare a design frame and a live screenshot frame, mark mismatches with numbered red dots, and write a findings panel into the screenshot frame.
```
