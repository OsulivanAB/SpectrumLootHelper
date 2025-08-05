# Frequently Asked Questions

## General Questions

### What is Spectrum Loot Helper?

Spectrum Loot Helper is a World of Warcraft addon specifically designed for the **Spectrum Federation** guild on **Stormrage (US)**. It automates and streamlines our loot distribution process to ensure fairness and transparency.

### Who can use this addon?

!!! info "Guild Members Only"
    This addon is designed exclusively for **Spectrum Federation** members. While others can install it, most features require guild membership to function.

- **Full Access**: Spectrum Federation guild members
- **Limited Access**: Non-guild members (viewing only)
- **Management Access**: Guild officers and leadership

### How does the loot distribution work?

Our fair loot distribution algorithm considers:

- **Attendance**: Raid participation percentage
- **Current Gear**: Item level and upgrade priority
- **Contribution**: Overall guild participation
- **Role Needs**: Tank/Healer priority when appropriate
- **Loot History**: Recent upgrades received

## Installation & Setup

### Where do I download the addon?

!!! tip "Multiple Sources Available"
    - **CurseForge** (Recommended): Auto-updates
    - **GitHub Releases**: Manual download
    - **WoW Interface**: Alternative source

See our [installation guide](installation/quick-start.md) for detailed instructions.

### The addon isn't showing up in-game. What's wrong?

Common solutions:

1. **Check Addon is Enabled**
   - Character select screen → AddOns → Enable "Spectrum Loot Helper"

2. **Verify Installation Location**
   ```
   World of Warcraft/_retail_/Interface/AddOns/SpectrumLootHelper/
   ```

3. **Clear WoW Cache**
   - Close WoW completely
   - Delete `Cache` and `WTF` folders (backup settings first!)
   - Restart WoW

4. **Check for Conflicts**
   - Temporarily disable other addons
   - Test if SLH works alone

### How do I update the addon?

**CurseForge Users**: Updates happen automatically

**Manual Installation**: 
1. Download the latest version from GitHub
2. Replace the old addon folder
3. Restart WoW

## Usage Questions

### How do I open the main interface?

Multiple ways to access:

- **Slash Command**: `/slh` or `/slh show`
- **Minimap Button**: Click the SLH icon
- **Key Binding**: Set in WoW's key bindings menu
- **Guild UI**: Through guild roster integration

### I'm an officer. How do I access management tools?

!!! success "Officer Features"
    Officers automatically get access to additional tools:

- **Loot Management Panel**: Assign loot during raids
- **Attendance Tracking**: View and modify attendance records
- **Priority Adjustments**: Manual priority overrides
- **Reports**: Generate loot distribution reports

Access via `/slh officer` or the dedicated officer tab in the main UI.

### Can I see my own loot history and attendance?

Yes! All guild members can view:

- Personal attendance percentage
- Recent loot received
- Current priority score
- Upcoming upgrade opportunities

### How accurate is the attendance tracking?

!!! info "Automatic Tracking"
    Attendance is tracked automatically when you're:

- In a guild group for raid content
- Present for raid start (first boss pull)
- Participating in progression content
- Online during scheduled raid times

Manual adjustments can be made by officers for special circumstances.

## Technical Questions

### What WoW versions are supported?

- ✅ **Retail/Live**: Fully supported
- ❌ **Classic**: Not supported
- ❌ **Hardcore**: Not supported

### Does this work with other addons?

!!! success "Great Compatibility"
    SLH is designed to work alongside popular addons:

- **WeakAuras**: No conflicts
- **Details!**: Integrates for DPS/performance data
- **BigWigs/DBM**: Compatible
- **TMW**: No issues
- **ElvUI**: UI integration available

### Can I customize the interface?

Yes! Customization options include:

- Window positions and sizes
- Notification preferences
- Display themes
- Information density
- Auto-hide options

### Is my data shared with anyone?

!!! warning "Privacy First"
    - **Guild Data Only**: Information stays within guild
    - **No External Servers**: Data stored locally in WoW
    - **Officer Access**: Leadership can view guild-wide data
    - **Personal Control**: You control your visibility settings

## Troubleshooting

### The addon is causing errors/lag

1. **Update First**: Ensure you have the latest version
2. **Check Conflicts**: Disable other addons temporarily
3. **Reset Settings**: `/slh reset` (will lose customizations)
4. **Report Issues**: Create a GitHub issue with error details

### Loot priorities seem wrong

!!! info "Algorithm Transparency"
    Priority calculations are complex but transparent:

- Check `/slh priority` for your current score breakdown
- Officers can review calculation details
- Manual adjustments may have been applied
- Attendance affects scoring significantly

If you believe there's an error, discuss with officers.

### I'm not receiving notifications

Check your settings:

1. **Notification Settings**: `/slh settings` → Notifications
2. **WoW Sound Settings**: Ensure game sounds are enabled
3. **Chat Channel**: Verify guild chat is visible
4. **Do Not Disturb**: Check if you have DND enabled

## Getting Help

### Still have questions?

!!! tip "Multiple Support Channels"
    - 💬 **Guild Chat**: Ask fellow members
    - 📧 **Discord**: Spectrum Federation Discord
    - 🐛 **GitHub Issues**: Technical problems
    - 📖 **Documentation**: This site!

### How do I report a bug?

1. Visit our [Bug Report page](support/report-bug.md)
2. Use the GitHub issue template
3. Include error messages and steps to reproduce
4. Mention your WoW version and other addons

### Can I suggest new features?

Absolutely! We welcome suggestions:

- **GitHub Issues**: Feature request template
- **Guild Discussion**: Bring it up in raids/Discord
- **Officer Feedback**: Direct suggestions to leadership

---

*Don't see your question here? Check our [support section](support/troubleshooting.md) or ask in guild chat!*
