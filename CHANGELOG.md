# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Security baseline: secret scanning, pre-commit and pre-push hooks, CI workflows, Dependabot
- Hardened `.gitignore` covering secrets, keystores, Firebase configs, FVM, Fastlane, and signing material
- Strict `analysis_options.yaml` with `flutter_lints` plus safety, style, and correctness rules
- MIT `LICENSE`
- `SECURITY.md` with responsible-disclosure policy
- `CODEOWNERS` for review routing
- PR and Issue templates under `.github/`

## [1.0.0] - 2026-08-07

### Added
- Initial Flutter project scaffold (Android + iOS), bundle `com.alexiscorreacano.magistral`
