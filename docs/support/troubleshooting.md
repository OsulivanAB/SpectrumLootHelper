# Troubleshooting Guide

This guide helps resolve common issues with Spectrum Loot Helper.

## Quick Diagnostic Steps

!!! tip "Start Here"
    Before diving into specific issues, try these quick fixes:

1. **Restart WoW**: Close completely and relaunch
2. **Update Addon**: Ensure you have the latest version
3. **Check Guild Status**: Verify you're in Spectrum Federation
4. **Disable Conflicts**: Temporarily disable other addons

## Installation Issues

### Addon Not Appearing in AddOns List

**Symptoms**: SLH doesn't show up at character select screen

**Solutions**:

1. **Check Installation Path**
   ```
   ✅ Correct: World of Warcraft/_retail_/Interface/AddOns/SpectrumLootHelper/
   ❌ Wrong: World of Warcraft/_classic_/Interface/AddOns/
   ```

2. **Verify File Structure**
   The addon folder should contain:
   - `SpectrumLootHelper.toc`
   - `SpectrumLootHelper.lua` 
   - Other `.lua` files

3. **Clear Cache**
   - Close WoW completely
   - Navigate to WoW folder
   - Delete `Cache` folder
   - Restart WoW

### Addon Shows But Won't Enable

**Symptoms**: Checkbox is gray/disabled or unchecks itself

**Solutions**:

1. **Check Dependencies**
   - Ensure no missing required addons
   - Update all addons to latest versions

2. **Interface Version Mismatch**
   - Download the correct version for your WoW client
   - Check if addon needs updating for current patch

3. **Corrupted Installation**
   - Delete the addon folder completely
   - Re-download and reinstall fresh

## Runtime Errors

### Lua Errors in Chat

**Symptoms**: Red error messages appearing in chat

!!! warning "Important"
    Enable error reporting with `/console scriptErrors 1` to see all errors

**Common Error Types**:

#### "attempt to index a nil value"
```lua
Interface\AddOns\SpectrumLootHelper\core.lua:123: 
attempt to index field 'player' (a nil value)
```

**Solutions**:
- Ensure you're logged in fully before using addon
- Check that guild data has loaded (`/slh reload`)
- Verify character is in Spectrum Federation

#### "attempt to call a nil function"
```lua
Interface\AddOns\SpectrumLootHelper\utils.lua:45: 
attempt to call method 'GetGuildInfo' (a nil value)
```

**Solutions**:
- WoW API may not be ready yet
- Try `/reload` to refresh the interface
- Wait a few seconds after login before using addon

### Interface Taint Issues

**Symptoms**: "Interface action blocked" messages

**Solutions**:
1. **Reset UI**: `/slh reset ui`
2. **Clear Saved Variables**: Delete `WTF/Account/*/SavedVariables/SpectrumLootHelper.lua`
3. **Check Addon Conflicts**: Disable other UI modification addons

## Functionality Issues

### Guild Detection Not Working

**Symptoms**: Addon says you're not in Spectrum Federation

**Diagnosis Steps**:

1. **Verify Guild Membership**
   - Open guild roster (`J` key)
   - Confirm you see "Spectrum Federation"
   - Check your guild rank

2. **API Delay**
   - Guild info may take time to load after login
   - Wait 30-60 seconds after character load
   - Try `/slh reload`

3. **Server Issues**
   - Cross-realm characters may have detection issues
   - Verify you're on Stormrage server

### Attendance Not Tracking

**Symptoms**: Attendance shows 0% or isn't updating

**Common Causes**:

1. **Not in Guild Group**
   - Attendance only tracks when in guild raid groups
   - Must be guild-formed group, not LFG

2. **Officer Permissions**
   - Only officers can modify attendance data
   - Check your guild rank permissions

3. **Raid Content Only**
   - Attendance tracks raid bosses, not dungeons
   - Must be current-tier progression content

### UI Not Showing

**Symptoms**: Commands work but no interface appears

**Solutions**:

1. **Check UI Scale**
   ```
   /slh scale reset
   /slh position reset
   ```

2. **Window Off-Screen**
   - Interface may be positioned outside visible area
   - Reset position: `/slh reset position`

3. **Hidden by Other Addons**
   - Disable ElvUI or other UI replacement addons
   - Check addon loading order

## Performance Issues

### FPS Drops/Lag

**Symptoms**: Game becomes choppy when addon is active

**Solutions**:

1. **Reduce Update Frequency**
   - `/slh settings` → Performance
   - Lower refresh rates for data updates

2. **Disable Visual Effects**
   - Turn off animations and transitions
   - Use simplified UI mode

3. **Memory Management**
   ```
   /slh gc          # Force garbage collection
   /slh memory      # Check memory usage
   ```

### High Memory Usage

**Symptoms**: Addon using excessive memory (>10MB)

**Diagnosis**:
```
/script print("SLH Memory:", GetAddOnMemoryUsage("SpectrumLootHelper"))
```

**Solutions**:
- Clear old data: `/slh cleanup`
- Reduce history retention in settings
- Restart WoW to free memory

## Network/Data Issues

### Data Not Syncing

**Symptoms**: Different data between guild members

**Solutions**:

1. **Force Sync**
   ```
   /slh sync
   /slh reload
   ```

2. **Check Network**
   - Ensure stable internet connection
   - Try different server/realm if cross-realm

3. **Officer Data Conflicts**
   - Multiple officers modifying data simultaneously
   - Coordinate with other officers

### Warcraft Logs Integration Failing

**Symptoms**: No logs data or outdated information

**Solutions**:

1. **Check API Status**
   - Warcraft Logs may be experiencing issues
   - Wait and try again later

2. **Verify Guild Logs**
   - Ensure guild has recent logs uploaded
   - Check log privacy settings

3. **Manual Refresh**
   ```
   /slh logs refresh
   /slh logs status
   ```

## Advanced Diagnostics

### Debug Mode

Enable detailed logging:
```
/slh debug on
/slh debug level 3
```

This will show detailed information about addon operations.

### Reset Everything

!!! danger "Nuclear Option"
    This will reset ALL addon settings and data:

```
/slh factory reset
```

Backup your settings first if you want to restore them later.

### Log Collection

For bug reports, collect these logs:

1. **WoW Error Log**
   - `Logs/WoWChatLog.txt`
   - Look for addon-related entries

2. **Saved Variables**
   - `WTF/Account/*/SavedVariables/SpectrumLootHelper.lua`
   - Contains your settings and data

3. **Debug Output**
   - Enable debug mode and reproduce issue
   - Copy debug messages from chat

## Getting Additional Help

### Before Asking for Help

Please try:

1. ✅ All quick diagnostic steps above
2. ✅ Relevant troubleshooting section
3. ✅ FAQ page for similar issues
4. ✅ Latest addon version installed

### Where to Get Help

!!! info "Support Channels"
    - 🔧 **GitHub Issues**: Technical problems with logs
    - 💬 **Guild Discord**: Quick questions and discussions  
    - 📖 **Documentation**: Check other pages on this site
    - 🎮 **In-Game**: Ask officers during raids

### Bug Report Template

When reporting issues, include:

- **WoW Version**: Retail build number
- **Addon Version**: SLH version number
- **Error Messages**: Full Lua error text
- **Steps to Reproduce**: How to trigger the issue
- **Other Addons**: List of other installed addons
- **Settings**: Any non-default SLH settings

---

*Still stuck? Don't hesitate to ask for help in guild chat or create a detailed issue on GitHub!*
