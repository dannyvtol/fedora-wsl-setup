---
name: gitcommit
description: Commit with conventional messages
---
# Git commit

Group `git diff -p` by ```## Types```. See ```## Format``` and ```## Rules```, formulate commit message.

## Format

```
<type>[optional scope][optional !]: <description>

[optional body]

[optional footer]
```

## Types

| Type | Use |
|------|-----|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting, whitespace (no logic change) |
| `refactor` | Reorganizing codebase only |
| `test` | Adding/fixing tests |
| `chore` | Build, tooling, deps |
| `ci` | CI/CD changes |

## Rules

- Type + description: **required**
- Scope: optional, links issue, in parentheses → `feat(#1): ...`
- Breaking change: add `!` before `:` → `feat!: ...`
- Breaking change footer: `BREAKING CHANGE: <description>`
- Body/footers separated from description by one blank line
