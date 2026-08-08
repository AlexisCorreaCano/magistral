#!/usr/bin/env bash
# Install git hooks for this repository.
# Sets core.hooksPath to .githooks/ so the versioned hooks are used.
#
# Re-run any time you pull changes that touch .githooks/.
# To uninstall: git config --unset core.hooksPath

set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
HOOKS_DIR="${REPO_ROOT}/.githooks"

if [ ! -d "${HOOKS_DIR}" ]; then
  echo "ERROR: ${HOOKS_DIR} does not exist. Are you at the repo root?" >&2
  exit 1
fi

# Make sure every hook is executable (preserves permissions after a fresh clone).
find "${HOOKS_DIR}" -type f -exec chmod +x {} +

# Point git at the versioned hooks directory.
git config core.hooksPath "${HOOKS_DIR}"

cat <<EOF
✓ Git hooks installed at ${HOOKS_DIR}

  pre-commit   dart format + dart analyze + gitleaks
  commit-msg   conventional commits enforcement
  pre-push     flutter pub get + analyze + test

Bypass a single hook with: git commit --no-verify
Re-run after pulling hook changes: scripts/install-hooks.sh
EOF
