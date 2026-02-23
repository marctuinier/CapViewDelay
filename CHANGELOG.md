# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.1] - 2026-02-23

### Fixed

- "Set Duration" button now applies the change on the first click instead of requiring two presses.

### Changed

- Improved README with badges, build instructions, and system requirements.
- Expanded `.gitignore` with comprehensive Xcode, macOS, and Swift patterns.

### Added

- MIT `LICENSE` file.
- `CHANGELOG.md` following the Keep a Changelog format.

### Removed

- Boilerplate Xcode test files (no real tests).

## [1.0.0] - 2025-06-10

### Added

- Simple SwiftUI interface for setting the screenshot preview duration.
- Ability to read and display the current thumbnail expiration value.
- macOS sandbox entitlements for writing to `com.apple.screencaptureui` preferences.
- App icon assets in all required sizes (16px–1024px).
- README with installation and usage instructions.
- `.gitignore` for Xcode and macOS artifacts.

[unreleased]: https://github.com/marctuinier/CapViewDelay/compare/v1.0.1...HEAD
[1.0.1]: https://github.com/marctuinier/CapViewDelay/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/marctuinier/CapViewDelay/releases/tag/v1.0.0
