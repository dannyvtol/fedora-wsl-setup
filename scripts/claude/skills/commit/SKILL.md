---
name: commit
description: Create conventional commit message
---

Git commits MUST follow the `Conventional Commits` specification.

## Format

```
<type>[optional scope][optional !]: <description>

[optional body]

[optional footer(s)]
```

## Types

| Type | Use |
|------|-----|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting, whitespace (no logic change) |
| `refactor` | Neither feat nor fix |
| `test` | Adding/fixing tests |
| `chore` | Build, tooling, deps |
| `perf` | Performance improvement |
| `ci` | CI/CD changes |

## Rules

- Type + description: **required**
- Scope: optional, in parentheses → `feat(auth): ...`
- Breaking change: add `!` before `:` → `feat!: ...`
- Breaking change footer: `BREAKING CHANGE: <description>`
- Body/footers separated from description by one blank line

## Action
Execute ```git diff -p``` then use ```## Format``` to formulate the commit message