# Contributing to Documentation

Found in the main project [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

This page automatically syncs with the main contributing guidelines to ensure documentation stays current with development practices.

## Documentation-Specific Guidelines

### Writing Style

- **Clear and Concise**: Write for WoW players, not developers
- **Step-by-Step**: Break complex processes into numbered steps  
- **Visual Cues**: Use admonitions (tips, warnings, info) liberally
- **Guild Context**: Remember this is for Spectrum Federation members

### Content Standards

!!! tip "Documentation Quality"
    - ✅ Test all instructions before publishing
    - ✅ Include screenshots where helpful
    - ✅ Keep installation guides current with latest WoW patches
    - ✅ Verify all links work and point to correct resources

### MkDocs Syntax

Use Material for MkDocs extensions:

```markdown
!!! info "Information Box"
    This creates a blue information box

!!! warning "Important Warning"
    This creates an orange warning box

!!! success "Success Message"
    This creates a green success box
```

### Updating Documentation

When you make changes to the addon that affect user experience:

1. **Update Relevant Docs**: Installation, FAQ, troubleshooting
2. **Test Instructions**: Verify steps work with latest version
3. **Cross-Reference**: Update related pages that might be affected
4. **Build Locally**: Test with `mkdocs serve` before pushing

### File Organization

```
docs/
├── index.md                 # Homepage
├── installation/           # Installation guides
├── user-guide/            # Feature documentation  
├── support/               # Help and troubleshooting
├── development/           # Developer resources
└── stylesheets/          # Custom CSS
```

---

For general contributing guidelines, see [CONTRIBUTING.md](../../CONTRIBUTING.md).
