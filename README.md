# USB-WiFi-Password-Stealer

This is a Windows batch script that automatically extracts all saved Wi-Fi SSIDs and their passwords from a target Windows machine using netsh wlan show profiles. It is designed to be deployed via USB plug-and-run or dropped into systems you have authorization to test.

📋 <b>Features</b>
Extracts all saved Wi-Fi profiles (SSIDs)

Retrieves passwords in clear text

Outputs data into creds.txt on USB

Clean-up of temporary files (temp.txt, final.txt)

Optional: Auto-generates a helper batch file (helper.bat)

🚀 <b>Usage</b>
Copy all batch code into a file named wifi_stealer.bat

Place it on a USB drive

Plug into a Windows machine

Double-click to execute or autorun (if configured)

Extracted Wi-Fi passwords will be saved in creds.txt

Note: You may need administrative rights to access some network profiles.

📂 <b>Output Example (creds.txt)</b>

SSID: HomeNetwork<br>
33:     Key Content            : supersecurepassword<br>
<br>
SSID: OfficeNet<br>
33:     Key Content            : office@1234<br>
<br>
Key content is the password of your target SSID.

<br>
<hr>
⚠️ <b>DISCLAIMER:</b><br>
This tool is intended strictly for educational use, cybersecurity training, and authorized penetration testing only.

By using this script, you agree to the following:

✅ You have explicit written permission to test the system.

✅ You will not use this tool for unauthorized access or malicious activity.

✅ You are solely responsible for any legal consequences.

✅ The author assumes no liability for misuse or damages caused.

Do not use this on systems you do not own or have permission to test.
Always hack ethically and respect privacy.
