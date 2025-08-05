# Documentation Development

This directory contains the MkDocs documentation for Spectrum Loot Helper.

## Quick Start

### Development Server
```bash
# Start the development server
./docs.sh serve

# Or manually
mkdocs serve --dev-addr=0.0.0.0:8000
```

Then visit: http://localhost:8000

### Building Documentation
```bash
# Build static site
./docs.sh build

# Check for issues
./docs.sh check
```

## Development Container Setup

The dev container includes everything needed for documentation development:

- **Python 3** with pip
- **MkDocs** with Material theme
- **All dependencies** from requirements.txt
- **VS Code extensions** for Markdown editing
- **Helper script** (`docs.sh`) for common tasks

## File Structure

```
docs/
├── index.md                 # Homepage
├── installation/           # Installation guides
│   ├── quick-start.md
│   ├── advanced-setup.md
│   └── troubleshooting.md
├── user-guide/            # Feature documentation
│   ├── getting-started.md
│   ├── officer-controls.md
│   ├── loot-distribution.md
│   └── settings.md
├── support/               # Help and troubleshooting
│   ├── troubleshooting.md
│   ├── known-issues.md
│   └── report-bug.md
├── development/           # Developer resources
│   ├── contributing.md
│   ├── changelog.md
│   └── api-reference.md
└── stylesheets/          # Custom CSS
    └── extra.css
```

## Writing Guidelines

### Style Guide
- **Clear and Concise**: Write for WoW players, not developers
- **Step-by-Step**: Break complex processes into numbered steps
- **Visual Cues**: Use admonitions (tips, warnings, info) liberally
- **Guild Context**: Remember this is for Spectrum Federation members

### Admonitions
```markdown
!!! info "Information"
    Blue information box

!!! warning "Important"
    Orange warning box

!!! success "Success"
    Green success box

!!! danger "Critical"
    Red danger box
```

### Links
- **Internal Links**: `[text](../path/file.md)`
- **External Links**: `[text](https://example.com)`
- **Images**: `![alt text](../images/screenshot.png)`

## Common Tasks

### Adding a New Page

1. **Create the file**:
   ```bash
   ./docs.sh new user-guide/new-feature
   ```

2. **Add to navigation** in `mkdocs.yml`:
   ```yaml
   nav:
     - User Guide:
       - New Feature: user-guide/new-feature.md
   ```

3. **Test locally**:
   ```bash
   ./docs.sh serve
   ```

### Updating Installation Guides

When addon features change:

1. Update `docs/installation/quick-start.md`
2. Update FAQ if new questions arise
3. Update troubleshooting for new issues
4. Test all instructions with latest addon version

### Adding Screenshots

1. Take screenshots at 1920x1080 resolution
2. Save to `docs/images/` directory
3. Reference in markdown: `![Description](../images/filename.png)`
4. Use descriptive filenames: `loot-distribution-interface.png`

## Deployment

### Automatic Deployment
- **Trigger**: Push to main branch with changes in `docs/`, `mkdocs.yml`, or `requirements.txt`
- **URL**: https://osulivanab.github.io/SpectrumLootHelper/
- **Build Time**: ~2-3 minutes

### Manual Deployment
```bash
# Deploy to GitHub Pages
./docs.sh deploy
```

## Troubleshooting

### Build Errors
```bash
# Check for issues
./docs.sh check

# Rebuild dependencies
./docs.sh install
```

### Local Server Issues
```bash
# Kill any existing servers
pkill -f "mkdocs serve"

# Restart
./docs.sh serve
```

### VS Code Integration
- **Markdown Preview**: Ctrl+Shift+V
- **Live Server**: Right-click HTML files in site/ directory
- **Spell Check**: Install "Code Spell Checker" extension

## Resources

- [MkDocs Documentation](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Guild Documentation Standards](development/contributing.md)

---

*For questions about documentation, ask in guild Discord or create a GitHub issue.*
