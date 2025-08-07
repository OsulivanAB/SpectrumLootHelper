# Changelog

All notable changes to Spectrum Loot Helper will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- **Documentation**: Added WowUp installation instructions to the documentation and updated the README to direct users to the docs for all installation methods, including WowUp.
- **GitHub Issue Templates**: Bug report and feature request forms for structured community feedback
- **GitHub Pull Request Template**: Comprehensive PR checklist with mandatory documentation updates
  - Documentation update verification for CHANGELOG.md, README.md, and CONTRIBUTING.md
  - Guild impact assessment categories (High/Medium/Low/Officer Review Needed)
  - In-game testing checklist and WoW compatibility verification
  - Performance impact assessment and UI scaling validation
- **MkDocs Documentation Site**: Professional documentation with Material theme
  - Comprehensive installation guides (CurseForge, manual, WoW Interface)
  - FAQ section with common questions and troubleshooting
  - User guides for members and officers
  - Guild-specific branding and Spectrum Federation information
  - Mobile-responsive design with search functionality
  - Automated deployment to GitHub Pages
- *TBD* - Attendance tracking system for raid participation
- *TBD* - Fair loot distribution algorithm based on attendance
- *TBD* - Officer management interface for loot coordination
- *TBD* - Guild member priority calculations
- *TBD* - Loot history tracking and reporting
- *TBD* - Integration with Warcraft Logs and Raider.IO data

### TODO - Release Process (Reminder)
- **📦 Semantic Version Tagging**: Add semantic version tag for first release
- **🚀 GitHub Release Drafting**: Create GitHub release with release notes
- **⚙️ Automated Packaging**: Set up GitHub Actions for automated addon packaging
- **📤 Automated Publishing**: Automate publishing to CurseForge/WoW Interface
- **🔄 Release Workflow**: Complete CI/CD pipeline for future releases

### Changed
- *TBD* - Initial feature implementations

### Fixed

- **MkDocs Pipeline**: Fixed GitHub Actions workflow for documentation deployment
  - Resolved missing documentation file references in navigation
  - Improved Python dependency installation with pip caching
  - Optimized workflow for better reliability and performance
- **Dev Container**: Optimized development environment setup
  - Streamlined Python dependency installation during container build
  - Removed unnecessary VS Code extensions (Live Server, Python linting)
  - Fixed Dockerfile paths and eliminated virtual environment complexity
  - Cleaned up setup scripts for faster container startup
- **Project Organization**: Cleaned up copilot instructions
  - Removed duplicate copilot instruction files from addon folder
  - Consolidated instructions to workspace folder only
  - Simplified instructions to focus on documentation maintenance

## [0.1.0-beta] - 2025-08-05

### Added
- **Project Foundation**: Initial repository setup and structure
- **Documentation**: Comprehensive README.md with guild information and mission
- **Contributing Guidelines**: Detailed CONTRIBUTING.md with WoW addon development standards
- **Development Environment**: Dev container configuration for consistent development
- **License**: MIT license for open source distribution
- **Guild Integration**: Links to Spectrum Federation's Warcraft Logs and Raider.IO profiles
- **Version Control**: Git repository with proper .gitignore for WoW addon development

### Technical Details
- **Target Audience**: Spectrum Federation guild on Garona (US) server
- **Platform**: World of Warcraft Retail/Live version
- **Language**: Lua for addon development
- **Mission**: Fair loot distribution based on raid attendance and participation

### Development Setup
- **Repository Structure**: Clean addon-only repository structure
- **Dev Container**: VS Code development environment with Lua support
- **SSH Configuration**: Automated SSH key setup for Git operations
- **Code Standards**: Established Lua coding conventions and WoW addon best practices

---

## Version Format

This project uses [Semantic Versioning](https://semver.org/):
- **MAJOR.MINOR.PATCH** (e.g., 1.0.0)
- **Pre-release versions** use suffixes (e.g., 0.1.0-beta, 1.0.0-rc.1)

### Version Meanings
- **MAJOR**: Incompatible API changes or major feature overhauls
- **MINOR**: New functionality added in a backward-compatible manner
- **PATCH**: Backward-compatible bug fixes
- **Pre-release**: Development versions not ready for production use

## Change Categories

### Added ✨
- New features and functionality
- New guild integrations
- New officer tools

### Changed 🔄
- Changes to existing functionality
- UI/UX improvements
- Performance enhancements

### Deprecated ⚠️
- Soon-to-be removed features
- Legacy functionality warnings

### Removed ❌
- Removed features or functionality
- Discontinued integrations

### Fixed 🐛
- Bug fixes
- Error corrections
- Stability improvements

### Security 🔒
- Security-related fixes
- Vulnerability patches

---

## Guild-Specific Notes

### Spectrum Federation Integration
All major releases will be coordinated with guild officers to ensure smooth deployment during raid schedules.

### Raid Schedule Considerations
- **Major releases** avoid raid nights (Tuesday/Thursday 8-11 PM EST)
- **Hotfixes** may be deployed as needed
- **Beta testing** conducted with volunteer guild members

### Officer Communication
Release notes are shared in the guild Discord development channel before public release.

---

*For the complete version history, see the [Releases](https://github.com/OsulivanAB/SpectrumLootHelper/releases) page.*
