# HWAB
Harden Windows AND Browser (short: HWAB) is designed to explain and keep an eyes on the security aspect

 
Since a lot of people asking me how to secure/harden Windows and Browser to lower the security risk and attack factor I created this little repo to answer the most questions and show examples in easy step by step examples.


This is currently under construction, so nothing much to show here. But I will upload and maintain this project regularly as I have time.


Cracking Passwords via:
* Brute force attack
* Dictionary Hacking
* Phishing
* Rainbow Table
* Spidering attack
* Keylogger attack
* Ransomware attack


Are you safe if:
* You aren’t regularly deploying the latest security patches?
* You disabled a security feature after a user complained Facebook was slower?
* You have unprotected mobile devices that can connect to file shares?
* Your email doesn’t get scanned for viruses and spam?
* Visitors can access your Wi-Fi, which is on the same network as your servers?
* Anyone is allowed to turn on macros in Office documents they receive via email?
* Users can read files they shouldn’t access at all and write to files they shouldn’t change?
* You don’t require users to choose suitable passwords?
* You ignore alerts from your security software that are warning you something is wrong?
* You’ve forgotten about those old XP machines still running in the basement?



Gpedit:
Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\
Minimum password length = 8
Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\
Interactive logon: Do not display last user name = enabled
User Account Control: Run all administrators in Admin Approval Mode = enabled
User Account Control: Virtualize file and registry write failures to per-user locations = enabled
User Account Control: Only elevate UIAccess applications that are installed in secure locations = enabled
User Account Control: Behavior of the elevation prompt for standard users = prompt for credentials on the secure desktop
User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode = prompt for consent on the secure desktop
User Account Control: Only elevate executables that are signed and validated = disabled (caused considerable delay in elevating processes and it also requires public key infrastructure )
MSS: (SafeDllSearchMode) Enable Safe DLL search mode (recommended) = enabled
Shutdown: Allow system to be shut down without having to log on = enabled
Interactive logon: Do not require CTRL+ALT+DEL = disabled
Devices: Prevent users from installing printer drivers = enabled
Computer Configuration\Windows Settings\Security Settings\Local Policies\User Rights Assignment\
Bypass traverse checking = Users,Network Service,Local Service,Administrators
Allow log on locally = Administrators, Users
Computer Configuration\Administrative Templates\Windows Components\Credential User Interface\
Require trusted path for credential entry = enabled
Computer Configuration\Administrative Templates\Windows Components\AutoPlay Policies\
Turn off Autoplay = enabled
Turn off Autoplay = All drives
Default behavior for AutoRun = Do not execute any autorun commands
Turn off Autoplay for non-volume devices = enabled
Computer Configuration\Administrative Templates\Windows Components\NetMeeting\
Disable remote Desktop Sharing = enabled
Computer Configuration\Administrative Templates\System\Internet Communication Management\Internet Communication settings\
Turn off the Windows Messenger Customer Experience Improvement Program = enabled
Turn off Help and Support Center "Did you know?" content = enabled
Turn off Windows Customer Experience Improvement Program = enabled
Computer Configuration\Administrative Templates\Network\Microsoft Peer-to-Peer Networking Services\
Turn off Microsoft Peer-to-Peer Networking Services = enabled
Computer Configuration\Administrative Templates\Windows Components\Windows Defender\
Turn off Real-Time Monitoring = enabled
Turn off Windows Defender = enabled
Computer Configuration\Administrative Templates\Windows Components\Windows Mail\
Turn off the communities features = enabled
Turn off Windows Mail application = enabled
Computer Configuration\Administrative Templates\System\System Restore\
Turn off System Restore = enabled
Computer Configuration\Administrative Templates\System\Remote Assistance\
Solicited Remote Assistance = disabled
Computer Configuration\Administrative Templates\Windows Components\HomeGroup\
Prevent the computer from joining a homegroup = enabled
Computer Configuration\Administrative Templates\Windows Components\Windows Error Reporting\
Disable Windows Error Reporting = enabled
Computer Configuration\Windows Settings\Security Settings\Windows Firewall with Advanced Security\Windows Firewall with Advanced Security\Windows Firewall Properties\Public Profile\
Windows Firewall: Public: Allow unicast response = No
User Configuration\Administrative Templates\Control Panel\Personalization\
Password protect the screen saver = enabled
Computer Configuration\Administrative Templates\System\Power Management\
Specify a Custom Active Power Plan = enabled, GUID = 381b4222-f694-41f0-9685-ff5bb260df2e (Balanced)


Research:
* https://nakedsecurity.sophos.com/2016/05/16/my-anti-virus-is-up-to-date-so-i-am-protected-right/