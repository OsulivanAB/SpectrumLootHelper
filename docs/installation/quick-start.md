# Quick Start Installation

Get Spectrum Loot Helper up and running in just a few minutes!

## Prerequisites

!!! warning "Requirements"
    - World of Warcraft (Retail/Live version)
    - Member of **Spectrum Federation** guild on **Stormrage (US)**
    - Officer permissions (for full functionality)

## Installation Methods

### Method 1: CurseForge Client (Recommended)

!!! tip "Easiest Method"
    This is the recommended method for most users as it handles updates automatically.

1. **Install CurseForge Client**
   - Download from [CurseForge.com](https://www.curseforge.com/download)
   - Install and launch the application

2. **Add World of Warcraft**
   - Click "Scan for Games"
   - Select your WoW installation directory
   - Ensure it detects the correct game version (Retail)

3. **Install the Addon**
   - Search for "Spectrum Loot Helper"
   - Click "Install"
   - The addon will be automatically downloaded and installed

### Method 2: Manual Installation

!!! info "For Advanced Users"
    Manual installation gives you more control but requires managing updates yourself.

1. **Download the Addon**
   - Visit our [GitHub Releases](https://github.com/OsulivanAB/SpectrumLootHelper/releases)
   - Download the latest `.zip` file

2. **Extract to Addons Folder**
   ```
   World of Warcraft/_retail_/Interface/AddOns/
   ```
   
3. **Verify Installation**
   - You should see a `SpectrumLootHelper` folder
   - The folder should contain `.lua` and `.toc` files

### Method 3: WoW Interface

!!! note "Alternative Source"
    Available on WoW Interface for users who prefer this platform.

1. Visit [WoWInterface.com](https://www.wowinterface.com/)
2. Search for "Spectrum Loot Helper"
3. Download and follow their installation instructions

## First Launch

### 1. Start World of Warcraft

Launch WoW and log in to your character on **Stormrage**.

### 2. Enable the Addon

!!! warning "Important"
    Make sure to enable the addon before entering the game world.

- At the character selection screen, click "AddOns"
- Find "Spectrum Loot Helper" in the list
- Check the box to enable it
- Click "Okay"

### 3. Initial Setup

When you first log in:

1. **Guild Verification**
   - The addon will automatically detect your guild membership
   - Spectrum Federation members get full access
   - Non-guild members see limited functionality

2. **Permission Check**
   - Officers get access to all management features
   - Members can view their attendance and loot history
   - Appropriate UI elements are shown based on your role

### 4. Quick Configuration

!!! success "You're Ready!"
    The addon works out of the box with sensible defaults. Most users don't need to change any settings initially.

For advanced configuration options, see our [Advanced Setup](advanced-setup.md) guide.

## Verification

### Check Installation Success

1. **Slash Commands**
   ```
   /slh
   /slh help
   ```
   
2. **UI Elements**
   - Look for the SLH minimap button
   - Check for the main interface window
   - Verify officer tools (if applicable)

3. **Error Checking**
   - No red error text should appear in chat
   - Check for any Lua errors with `/console scriptErrors 1`

## Next Steps

- 📖 Read the [Getting Started](../user-guide/getting-started.md) guide
- ⚙️ Explore [Settings](../user-guide/settings.md) options
- 👥 Learn about [Officer Controls](../user-guide/officer-controls.md) (if applicable)

## Troubleshooting

Having issues? Check our [installation troubleshooting](troubleshooting.md) guide or visit the [support section](../support/troubleshooting.md).

---

**Need help?** Ask in guild chat or create an issue on [GitHub](https://github.com/OsulivanAB/SpectrumLootHelper/issues).
