# Contributing

Thanks for your interest in `magistral`. This document covers the local setup you need before opening a pull request.

## Prerequisites

- Flutter 3.44.x stable (`flutter --version`).
- Dart 3.12.x (bundled with Flutter).
- macOS / Linux / Windows — hooks run natively.
- [`gitleaks`](https://github.com/gitleaks/gitleaks) for secret scanning (`brew install gitleaks`).
- `git` 2.30+.

## First-time setup

1. Clone the repository.
2. Install Git hooks: `./scripts/install-hooks.sh`
3. Verify the setup: `dart format --output=none --set-exit-if-changed . && flutter analyze`

The hooks will now run automatically on every commit (format, analyze, secret scan) and on every push (full test suite).

## Commit messages

We use [Conventional Commits](https://www.conventionalcommits.org/). The `commit-msg` hook enforces this. Format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

Allowed types: `feat`, `fix`, `chore`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `revert`.

## Pull requests

- Open a PR against `main`.
- PR titles follow Conventional Commits (enforced by CI).
- All CI checks must pass before review.
- One approval is required.

## Code style

- Run `dart format .` before committing (the hook will block if you forget).
- The analyzer is strict — see `analysis_options.yaml`. If a rule blocks legitimate code, suppress it locally with `// ignore: <rule>` and a comment explaining why.
