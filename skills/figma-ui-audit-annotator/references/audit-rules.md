# Audit Rules

## Comparison Categories

- `功能差异`: missing modules, missing tabs, missing actions, missing navigation, replaced page structures
- `交互差异`: different expansion state, swapped control hierarchy, changed selection model, moved filter layer
- `字段差异`: extra field, missing field, field order mismatch, field-label mismatch
- `布局差异`: spacing, padding, size, position, alignment, density
- `视觉差异`: text style, color, icon style, border, radius, shadow, button style

## Popup Rule

When the screenshot is a popup/dialog state with a dark scrim:

1. Treat the highlighted popup card as the primary audit scope.
2. Ignore background page mismatches for that popup-state result.
3. Only compare popup-card title, fields, body text, actions, internal spacing, and card size.
4. If the popup itself is missing, record that as a functional issue on the parent page state instead.

## Field Count Rule

Treat field-count issues as first-class findings.

- If the live UI has more fields than the design, create a `字段差异` finding.
- If the live UI has fewer fields than the design, create a `字段差异` finding.
- Place the marker on the added field position or on the missing field gap where the missing field should appear.

## Marker Placement Rule

- For control-specific issues, place the marker on the exact control.
- For field-count issues, place the marker on the affected field row.
- For spacing issues, place the marker inside the whitespace gap itself.
- For structure or hierarchy issues, place the marker on the replaced or missing structure area.

## Findings Panel Rule

The findings panel should always include:

1. `页面功能差异`
2. `交互差异`
3. A numbered issue list aligned to the markers

Keep each finding concise and concrete.
