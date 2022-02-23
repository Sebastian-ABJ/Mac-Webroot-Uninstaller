# Mac Webroot Removal Script For Use On Mac OS via BASH
# Serves to purge any active Webroot processes and files from Mac OS
# Sebastian Jones - Geek Squad 845 - 2021
# 	Let me know if this doesn't work so I can troubleshoot and
#	add additional processes/files to the script
#-----------------------------------------------------------------------------
#!/bin/bash
sudo launchctl unload /Library/LaunchDaemons/com.webroot.security.mac.plist
sudo kextunload /System/Library/Extensions/SecureAnywhere.kext
sudo rm /usr/local/bin/WSDaemon
sudo rm /usr/local/bin/WFDaemon
sudo killall -9 WSDaemon
sudo killall -9 WfDaemon
sudo killall -9 "Webroot SecureAnywhere"
sudo rm -rf /System/Library/Extensions/SecureAnywhere.kext
sudo rm -rf "/Applications/Webroot SecureAnywhere.app"
sudo rm -r /Library/Application\ Support/Webroot
sudo rm /Library/LaunchAgents/com.webroot.WRMacApp.plist
sudo rm /Library/LaunchDaemons/com.webroot.security.mac.plist
sudo rm /Library/LaunchDaemons/com.webroot.InstallerHelperTool.plist
sudo rm /Library/LaunchDaemons/com.webroot.webfilter.mac.plist
sudo rm -r /Library/Extensions/SecureAnywhere.kext
sudo rm /Library/PrivilegedHelperTools/com.webroot.InstallerHelperTool
sudo rm ~/Library/Caches/com.webroot.Webroot-SecureAnywhere
sudo rm -r ~/Library/Application\ Support/com.webroot.Webroot-SecureAnywhere
sudo rm -r ~/Library/Application\ Support/Webroot
sudo rm ~/Library/Preferences/com.webroot.WSA.plist
sudo rm ~/Library/Preferences/com.webroot.Webroot-SecureAnywhere.plist
sudo rm ~/Library/Services/Scan With Webroot.workflow
echo -e "\a\nDON'T FORGET TO REMOVE THE WEBROOT ENTRIES IN ~/Library/Saved Application State/ BEFORE RESTART."
sudo open ~/Library/Saved Application State/