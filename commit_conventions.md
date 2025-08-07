# Conventional Commits Guide

A standardized way to format commit messages so they are easy to read and can be parsed by tools (for changelogs, versioning, etc).

---

## Common prefixes (types)

| Prefix      | When to use                                                                                     |
|-------------|------------------------------------------------------------------------------------------------|
| **feat:**   | A new feature                                                                                   |
| **fix:**    | A bug fix                                                                                      |
| **docs:**   | Documentation only changes                                                                     |
| **style:**  | Code style changes (formatting, missing semicolons, etc.) without affecting logic               |
| **refactor:** | Code changes that neither fixes a bug nor adds a feature (e.g., code cleanup)                 |
| **perf:**   | Performance improvements                                                                       |
| **test:**   | Adding or updating tests                                                                       |
| **chore:**  | Other changes that don’t modify src or test files (e.g., build process, dependencies)          |

---

## Example commit messages

```bash
git commit -m "feat: add user login functionality"
git commit -m "fix: correct typo in README"
git commit -m "docs: update API usage section"
git commit -m "style: format code with prettier"
git commit -m "refactor: simplify login logic"
git commit -m "perf: optimize query for faster response"
git commit -m "test: add unit tests for user service"
git commit -m "chore: update dependencies"
