# Contributing to Spectrum Loot Helper

Thank you for your interest in contributing to Spectrum Loot Helper! This document outlines how you can help improve this World of Warcraft addon for the Spectrum Federation guild.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
- [Coding Standards](#coding-standards)
- [Testing Guidelines](#testing-guidelines)
- [Submitting Changes](#submitting-changes)
- [Community Guidelines](#community-guidelines)

## 🤝 Code of Conduct

This project follows a simple code of conduct:

- **Be respectful** to all contributors and users
- **Be constructive** in discussions and feedback
- **Be patient** with new contributors learning the codebase
- **Be guild-focused** - remember this addon serves Spectrum Federation
- **No harassment** or discrimination of any kind

## 🚀 Getting Started

### Prerequisites

- **World of Warcraft** (Retail/Live version)
- **Git** for version control
- **Basic Lua knowledge** for addon development
- **Text editor** (VS Code, Sublime, etc.)

### Development Setup

1. **Fork** the repository on GitHub
2. **Clone** your fork locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/SpectrumLootHelper.git
   ```
3. **Set up your development environment**:
   - Use any text editor with Lua syntax highlighting
   - Install the addon files in your WoW AddOns directory for testing
   - Consider using a Lua language server for better development experience
4. **Test** the addon in-game to ensure it loads properly

## 🛠️ How to Contribute

### 🐛 Reporting Bugs

Before creating a bug report, please:

1. **Search existing issues** to avoid duplicates
2. **Test with minimal addons** to ensure conflicts aren't the cause
3. **Include the following information**:
   - WoW version and build number
   - Addon version
   - Steps to reproduce the bug
   - Expected vs. actual behavior
   - Screenshots or error messages (if applicable)
   - Other addons installed (if relevant)

### 💡 Suggesting Features

Feature requests should:

1. **Align with the addon's mission** of fair loot distribution
2. **Benefit Spectrum Federation** members
3. **Include detailed descriptions** of the proposed functionality
4. **Consider implementation complexity** and maintenance burden

### 🔧 Code Contributions

1. **Create a feature branch** from `main`:
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. **Make your changes** following our coding standards
3. **Test thoroughly** in-game
4. **Update documentation** if needed
5. **Commit with clear messages**
6. **Submit a pull request**

## 📝 Coding Standards

### Lua Style Guidelines

#### File Structure
```lua
-- File header with purpose and author info
-- Local variable declarations
-- Helper functions
-- Main addon logic
-- Event handlers
-- Slash commands
-- Initialization
```

#### Naming Conventions
- **Variables**: `camelCase` (e.g., `playerName`, `lootHistory`)
- **Constants**: `UPPER_SNAKE_CASE` (e.g., `MAX_LOOT_ENTRIES`, `ADDON_NAME`)
- **Functions**: `PascalCase` for global, `camelCase` for local (e.g., `SLH_UpdateDisplay()`, `calculatePriority()`)
- **Tables**: `PascalCase` (e.g., `LootData`, `AttendanceTracker`)

#### Code Formatting
```lua
-- Use 4 spaces for indentation (not tabs)
if condition then
    DoSomething()
elseif otherCondition then
    DoSomethingElse()
else
    DoDefault()
end

-- Table formatting
local config = {
    ["option1"] = true,
    ["option2"] = false,
    ["nested"] = {
        ["key"] = "value"
    }
}

-- Function definitions
local function processLoot(itemLink, playerName)
    -- Function body
    return result
end
```

#### Comments
```lua
-- Single line comments for brief explanations
local playerGuild = GetGuildInfo("player") -- Get current guild

--[[
    Multi-line comments for complex logic explanation
    or file/function headers
]]--
```

### WoW Addon Best Practices

#### Event Handling
```lua
-- Proper event registration
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("LOOT_OPENED")

frame:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local addonName = ...
        if addonName == "SpectrumLootHelper" then
            -- Initialize addon
        end
    elseif event == "LOOT_OPENED" then
        -- Handle loot
    end
end)
```

#### Saved Variables
```lua
-- Use proper defaults and validation
SpectrumLootHelperDB = SpectrumLootHelperDB or {
    ["attendance"] = {},
    ["lootHistory"] = {},
    ["settings"] = {
        ["enabled"] = true,
        ["debug"] = false
    }
}
```

#### UI Creation
```lua
-- Follow Blizzard UI conventions
local button = CreateFrame("Button", "SLH_MainButton", UIParent, "UIPanelButtonTemplate")
button:SetSize(100, 22)
button:SetPoint("CENTER")
button:SetText("Loot Helper")
```

### Performance Guidelines

- **Minimize API calls** in frequently executed code
- **Cache frequently accessed data**
- **Use local variables** instead of globals when possible
- **Avoid creating frames in loops**
- **Clean up unused event handlers**

## 🧪 Testing Guidelines

### In-Game Testing

1. **Test with guild members** when possible
2. **Verify functionality** in raid environments
3. **Check edge cases** (empty guilds, no loot, etc.)
4. **Test UI scaling** on different resolutions
5. **Validate saved variables** persist correctly

### Code Review Checklist

- [ ] Code follows style guidelines
- [ ] No global variable pollution
- [ ] Proper error handling
- [ ] Memory leaks prevented
- [ ] UI elements properly anchored
- [ ] Events properly registered/unregistered

## 📤 Submitting Changes

### Pull Request Process

1. **Update documentation** for any new features
2. **Include screenshots** for UI changes
3. **Reference related issues** in PR description
4. **Test thoroughly** before submitting
5. **Request review** from maintainers

### Pull Request Template
```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] UI improvement
- [ ] Documentation update

## Testing
- [ ] Tested in-game
- [ ] Tested with guild members
- [ ] No errors in chat/logs

## Screenshots (if applicable)
[Include screenshots of UI changes]
```

### Commit Message Format
```
type(scope): brief description

Longer description if needed

Fixes #issue_number
```

Examples:
- `feat(loot): add attendance tracking system`
- `fix(ui): resolve button positioning on ultrawide`
- `docs: update installation instructions`

## 🎮 Community Guidelines

### Guild-Specific Considerations

- **Spectrum Federation focus**: Features should primarily benefit our guild
- **Officer input**: Major changes should consider officer feedback
- **Member privacy**: Respect player data and privacy
- **Fair play**: Maintain the spirit of fair loot distribution

### Communication

- **Discord**: Join our development channel for real-time discussion
- **GitHub Issues**: Use for formal bug reports and feature requests
- **In-game**: Test with guild members during raids when appropriate

### Recognition

Contributors will be:
- **Listed** in the addon credits
- **Mentioned** in release notes
- **Invited** to the development Discord channel
- **Given** testing access to beta features

---

## 📞 Questions?

If you have questions about contributing:

1. **Check existing issues** and documentation first
2. **Ask in Discord** for quick questions
3. **Create a GitHub issue** for detailed discussions
4. **Contact maintainers** directly for sensitive matters

Thank you for helping make Spectrum Loot Helper better for our guild! 🎲
