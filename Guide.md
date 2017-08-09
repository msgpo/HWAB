### Distrust everything #trustno1

Microsoft has made much progress improving the security capabilities of their Operating System (OS). However, their pervasive use of “telemetry” and forcing software installation/upgrades, has cost them the trust of some customers.

Other hardware/software corporations are also installing telemetry software that calls home (Intel, Nvidia, Lenovo, Apple,...). Corporate surveillance is big business and here to stay.

## Intro

* Knowledge 
* The weakest link
* Keep it simple 
* More expensive not means more secure!
* It's Okay To Trust Someone (But Always Know Who You're Trusting)
* There is No Perfect Security—There’s Always a Trade-Off
* What's Secure Today May Not Be Secure Tomorrow 



### Knowledge is Power
Good security decisions can't be made without good information. Your security trade-offs are only as good as the information you have about the value of your assets, the severity of the threats from different adversaries to those assets, and the risk of those attacks actually happening. This guide should help you gain the knowledge you need to identify the threats to your computer and communications security, and judge the risk against possible security measures. And some of this knowledge you already have: knowledge of your own situation, who might want to target you, and what resources they have. You already have more power than you think!



### The Weakest Link
Think about assets as components of the system in which they are used. The security of the asset depends on the strength of all the components in the system. The old adage that "a chain is only as strong as its weakest link" applies to security too: The system as a whole is only as strong as the weakest component. For example, the best door lock is of no use if you have cheap window latches. Encrypting your email so it won't get intercepted in transit won't protect the confidentiality of that email if you store an unencrypted copy on your laptop and your laptop is stolen. That doesn't mean you have to do everything simultaneously, but it does mean that you should spend time thinking about every part of your information and computer use.



### Keep it simple
It is generally most cost-effective and most important to protect the weakest component of the system in which an asset is used. Since the weak components are much easier to identify and understand in simple systems, you should strive to reduce the number and complexity of components in your information systems. A small number of components will also serve to reduce the number of interactions between components, which is another source of complexity, cost, and risk. That also means that the safest solution may be the least technical solution. Computers may be great for many things, but sometimes the security issues of a simple pen and notepaper can be easier to understand, and therefore easier to manage.



### More expensive not means more secure!
Don't assume that the most expensive security solution is the best; especially if it takes away resources needed elsewhere. Low-cost measures like shredding trash before leaving it on the curb can give you lots of bang for your security buck.



### It's Okay To Trust Someone (But Always Know Who You're Trusting)
Computer security advice can end up sounding like you should trust absolutely no one but yourself. In the real world, you almost certainly trust plenty of people with at least some of your information, from your close family or companion to your doctor or lawyer.  What's tricky in the digital space is understanding who you are trusting, and with what. You might deposit a list of passwords with your lawyers: but you should think about what power that might give them—or how easily they might be maliciously attacked. You might write documents in a cloud service like Dropbox or Microsoft OneDrive that are only for you: but you're also letting Dropbox and Microsoft access them, too. Online or offline, the fewer people you share a secret with, the better chance you have of keeping it secret.


### There is No Perfect Security—There’s Always a Trade-Off
Set security policies that are reasonable for your lifestyle, for the risks you face, and for the implementation steps you and your colleagues will take. A perfect security policy on paper won't work if it's too difficult to follow day-to-day.




### What's Secure Today May Not Be Secure Tomorrow
It is also crucially important to continually re-evaluate your security practices. Just because they were secure last year or last week doesn't mean they're still secure! Keep checking sites like SSD, because we will update our advice to reflect changes in our understanding and the realities of digital security. Security is never a one-off act: it's a process.




## Now the hard Part!
-------------------

So now it's up to you!


### Media Installation

Install a fresh copy of [Windows 10 Anniversary Edition (v1607) LTSB/LTSC](https://docs.microsoft.com/en-us/sccm/core/understand/introduction-to-the-ltsb) even if that means you need to crack it (I not explain how), this might forces MS to push this version more. You get fresh copies (verified ones) [here](https://tb.rg-adguard.net/index.php?lang=en-US), always check the checksums!

You could manipulate/change the configuration with [Rufus](https://rufus.akeo.ie) or [NTLite](https://www.ntlite.com/download/) to e.g. integrate some [regtweaks](https://github.com/CHEF-KOCH/regtweaks), windows cumulative updates or drivers.


### Full Disk Encryption (FDE)

You have several options to secure your “data at rest” by encrypting it before writing it to disk. It is even possible to combine all three.

* FDE only protects your data entirely when your system is completely powered down.
* Crypto is only as strong as the weakest link. Take the time needed to generate that random data pool and use a strong passphrase.
* Choose between [VeraCrypt](https://sourceforge.net/projects/veracrypt/) or [BitLocker](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overview). If you want to use both set BitLocker and create additional container with VeraCrypt.



### Hardware-based (SED)
You can enable your Self-Encrypting Drive (SED) by setting a secure password when configuring your BIOS/UEFI. This is not the same as setting a supervisor password!

* Transparent full drive encryption on your Solid State Drive (SSD) has almost no performance downside. 
* Keep in mind that the encryption keys are kept inside your TPM chip, which is unlikely to survive a destructive hardware attack. Protect yourself by making regular backups.


### Microsoft BitLocker
BitLocker is [only available for Pro, Enterprise and Education](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/bitlocker-overview) licensees of Windows 10. The keys are also kept inside your TPM chip. Trust?!


There are advantages to using BitLocker though:
* Its compatibility with UEFI SecureBoot helps ensure only trusted code runs on startup.
* Its integration with Active Directory Domain Services (AD DS) helps guarantee access to work files, even after you had to fire someone on the spot.
* You can still store all business related data on VeraCrypt containers or external drives for additional security.
* To enable BitLocker: File Explorer > Right click C: > Turn on BitLocker.



### VeraCrypt
I use [VeraCrypt](https://sourceforge.net/projects/veracrypt/), a free and open-source (FOSS), cross-platform that [passed an independent audit](https://ostif.org/the-veracrypt-audit-results/). You too can learn to memorize a 32+ character passphrase. Isntthatsimpletokeepaneasy2usepasswordinyaBrain?!
VeraCrypt supports GPT too.


Converting later will require a full reformat or purchasing commercial partitioning software. You can also choose to use a VeraCrypt encrypted file container on top of BitLocker/SSD FDE. [Look here for their security model](https://veracrypt.codeplex.com/wikipage?title=Security%20Model).



### BIOS/UEFI

Your Basic Input Output System (BIOS) is the codebase which initializes your hardware and loads the files that boot your Operating System.

* Do not be intimidated by its old DOS-like interface and cryptic options. Use a search engine to investigate options unique to your variant and version.
* Visit your vendor’s website and download their tool to update your BIOS to the latest version (repeat this quarterly). Do not use any external tool to install BIOS updates, use the one which are offered by the manufacture to avoid possible infections.
* IT professionals may want to take a look at [NIST 147/147b](https://www.startpage.com/do/search?query=NIST+147%2F147b).


If you are not planning on using VMWare, dual-booting Unix nor use VeraCrypt for FDE:

* [Enable Device Guard](https://technet.microsoft.com/itpro/windows/keep-secure/introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies) if you have Windows 10 Education or Enterprise version. [Automatically enabling Intel Virtualization Technology & VT-d, UEFI Secure Boot, and OS Optimized Defaults](https://blogs.technet.microsoft.com/ash/2016/03/02/windows-10-device-guard-and-credential-guard-demystified/).


Device Guard, when configured, locks your device down so that it only runs trusted applications you have defined through your code integrity policies. 

* More information is covered by [this Microsoft Technet article](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/device-guard-deployment-guide).
* Disable Intel AMT, unless your organization uses this Intel vPro feature. There is a third option to disable it forever, which cannot be undone.
* Enable Intel PTT (TPM 2.0) as it supports SHA-2 and elliptical curve cryptography, [amongst other things](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/tpm-recommendations).
* Decide yourself what to do about Intel SGX. Some are [growing suspicious of Intel altogether](http://hardenedlinux.org/firmware/2016/11/17/neutralize_ME_firmware_on_sandybridge_and_ivybridge.html).


Since I am planning on using VeraCrypt FDE, and dual-booting Windows 10 Pro with the future [Qubes OS 4](https://www.qubes-os.org):

* I disabled Intel AMT, Device Guard, and Intel SGX. Intel is working on SGX Linux support, but I worry it might hinder me during my reverse engineering course.
* I disabled Flash BIOS updating by End-Users and enabled Secure RollBack Prevention.
* I enabled Data Execution Prevention (DEP).
* I enabled Intel Virtualization Technology and VT-d.
* I disabled my Integrated Camera and Microphone as I will not be using them.
* I disabled Computrace Absolute Persistence (a commercial Anti-Theft rootkit)
* I disabled Intel PTT (TPM 2.0) as most Windows security features will work with TPM 1.2. However, Qubes OS’s Anti-Evil-Maid feature requires Intel TXT, which TPM 2.0 does support. Changing TPM will reset the chip, including any SSD encryption keys present!
* I set high-entropy Boot, User, and Master passphrases everywhere, enabling SSD FDE. Note that Lenovo does not permit the use of special characters.
* I disabled SecureBoot and enabled both UEFI and Legacy Boot (Qubes OS & VeraCrypt FDE both require a legacy MBR Disk). Even though I cannot use SecureBoot, I can protect my system using [MBRFilter](https://github.com/vrtadmin/MBRFilter).
* I disabled all Boot devices except for my SSD and USB devices. Upon successful installation, I disabled those as well. Network Boot is set to my hard drive.

Save and exit settings to reboot from your Installation Media.



### Windows Installation

As stated, I recommend everyone to start with a fresh installation of Windows 10. Modern malware is very persistent, bootkits and rootkits are hard to detect.

During installation and setup please:

* Delete all existing partitions and completely format your hard drive.
* Do not connect to your wireless or wired network.
* Skip any Microsoft.com account creation.
* Do not connect with an existing Microsoft account either.
* Select advanced options.
* Disable all “recommended” settings.
* Name your account after your favourite SciFi character, not your legal name!
* Use a decent password and no useful password hint ([NIST 800–63–3](https://nakedsecurity.sophos.com/2016/08/18/nists-new-password-rules-what-you-need-to-know/)).
* Say “no thanks” to Windows Hello.
* Say “not now” to Meeting Cortana.
* Do not connect to your wireless or wired network after login.
* There will not be much benefit to creating a non-administrative user.
* Your system still remains offline!


### Side-loading updates

Review Updates, check the growd if there are negative side-effects before you install the update(s)! Personally I highly recommend side-loading essential applications, vendor drivers, and Windows updates. 

* Use [WSUS Offline Update Tool](http://www.wsusoffline.net) or [WUMT](http://www.majorgeeks.com/files/details/windows_update_minitool.html) if you need to install some updates.
* Format and prepare a USB stick from within [a disposable VM](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/).
* Download all relevant Microsoft updates using WSUS Offline Update or WUMT. Installing these will take some time - how about a coffee now?!
* Visit your vendor’s website and download their tool to bring the system BIOS up to date, as well as all other drivers.
* If you have a SSD, I recommend updating its firmware as well. With some vendors, this requires an internet connection, if you are concerned about your privacy, postpone for now.
* Download and run essential privacy applications and security software we discuss below.
* Depending on your threat model, cryptographic verification of executables you download is essential.
* Complete the above installation tasks. 
* Your system still remains offline.



### Security & privacy tools

Until we get into Group Policy Editor and Windows Firewall territory, I recommend running a few consumer tools to kick off the process:

* [O&O ShutUp10](https://www.oo-software.com/en/shutup10)
* [W10Privacy](https://www.winprivacy.de/english-home/)
* [HostMan](http://www.abelhadigital.com/hostsman)
* There are tons of other scripts, and tweaks but mostly there not necessary (you will read later why).
* [Beamgun](https://beamgun.io/) can do to protect you against [LAN Turtles](https://lanturtle.com/) and [Rubber Duck](http://usbrubberducky.com/).
* Download the extremely useful [Sysinternals Suite](https://technet.microsoft.com/en-us/sysinternals/bb842062.aspx) or tools from [NirSoft](http://www.nirsoft.net)!
* Do not install any AV, we're gonna use Sandboxie for this. 

Unless manually enforced using a Group Policy Object, Microsoft will re-enable telemetry, firewall rules, and unwanted features during the next Feature upgrade or if you ever run System File Checker ([sfc](https://technet.microsoft.com/en-us/library/bb491008.aspx)). You would be wise to update & re-run your preferred privacy tools after a major Windows 10 release — these projects do a good job staying on top of things. Check their compatibility first! Use [Process Hacker](http://processhacker.sourceforge.net) to reverse engineer their actions if you want to enforce it using Group Policy/Scripts (or across AD connected workstations).


### Turn off Windows Features

We want to reduce our systems’ attack surface as much as possible: which means removing features and outdated capabilities we will never use. You will want to go over which Windows Features to turn off.

* I enabled the Hyper-V and IIS Management Tools as well as a few Device Lockdown features.
* I disabled .NET 3.5, SMB v1 and PowerShell 2. You could go much further (depending on your needs).


### Turn off Windows Services

When you run [Sysinternals Autoruns](https://technet.microsoft.com/en-us/sysinternals/bb963902) with administrative privileges, it becomes a great tool to start managing the programs and services that are set to run at one point or another.


For now, under Administrative Tools > Services (or by running ‘services.msc’) I disabled Geolocation for privacy and a few services that are vulnerable to [Bloodhound](https://github.com/adaptivethreat/Bloodhound/wiki) & [Responder](https://github.com/lgandx/Responder-Windows):

* Right click on a Windows Service > Properties
* Stop the “WinHTTP Web Proxy Auto-Discovery Service” ([WPAD](https://en.wikipedia.org/wiki/Web_Proxy_Autodiscovery_Protocol#Security)) and set its ‘Startup Type’ to Disabled — removing a method
* The IP Helper service depends on WPAD and will be stopped, disable it as well.
* Disable [TCP/IP NetBIOS Helper](https://technet.microsoft.com/en-us/library/cc940063.aspx), any file-sharing is [done over SMB nowadays](https://support.microsoft.com/en-us/kb/204279).
* Unfortunately, with the v1603 Anniversary Update, Microsoft removed our ability to enforce this from Group Policy.
* More suggestions can be found [here](http://www.blackviper.com/service-configurations/black-vipers-windows-10-service-configurations/).


### Turn off Networking Capabilities
There are a few modifications to we should make to our Wifi Settings and Network Adapters.

First, make it [more difficult to track your location](http://www.mathyvanhoef.com/2016/03/how-mac-address-randomization-works-on.html) across WiFi networks:

* Go to Settings > Wi-Fi
* Switch ‘Use random hardware addresses’ on. This option is not available for all Wifi-Adapters.
* This will cause minor issues in environments where Static DHCP or MAC Filtering is in use.


[Technitium MAC Address Changer](https://technitium.com/tmac/)’s command-line to accomplish this for your Ethernet LAN interface.
* Go to Settings > Ethernet > Ethernet > Change adapter options
* or Control Panel > Network and Sharing Center > Change adapter settings

Right-click on any Network Adapter > Properties and uncheck (it's not necessary to entirely uninstall them):

* Client for Microsoft Networks
* File and Printer Sharing for Microsoft Networks
* QoS Packet Scheduler
* Microsoft Network Adapter Multiplexor Protocol
* Microsoft LLDP Protocol Driver
* Internet Protocol Version 6 (TCP/IPv6)
* Link Layer Topology Discovery Responder
* Link Layer Topology Discovery Mapper I/O Driver


In that same window, select ‘Internet Protocol Version 4 (TCP/IPv4)’ and click the Properties button. From there click the Advanced button, uncheck ‘Register this connection’s addresses in DNS’ on the DNS tab, and select ‘Disable NetBIOS over TCP/IP’ on the WINS tab.

Repeat these steps for all appropriate networked adapters. Your system still remains offline.


### Uninstall Software

I run most of my tools from inside a [Virtual Machine](https://www.vmware.com/) and [Sandboxie](https://www.sandboxie.com/). I not can recommend VirtualBox anymore cause slow support and it in general is slower than VMWare in so many aspects.

* Always choose to customize your install. Freemium apps tend to ‘offer’ to install additional software or change your Browser’s homepage.
* I block all outbound connections using my Windows Firewall, and I only whitelist those apps that [check for updates over HTTPS](https://github.com/secretsquirrel/BDFProxy) to do so automatically.
* For added security do not install apps that are not digitally signed.


I quickly uninstalled the following:

* Adobe Flash, Java, Skype & all Windows Store apps. You can skip this on LTSB/LTSC Windows Editions cause there not pre-installed here.
* All Lenovo apps, except for On Screen Display and Power Management Driver. (On my Laptop)
* Intel Management Engine Components & Intel Security Assist (Intel ME). [optional]
* Intel PROSet/Wireless Software* (provided by Lenovo).
* Intel WiDi (support ended October 2016).




### DNS

The Domain Name Service (DNS) is the reason your Internet Service Provider (ISP) knows exactly which websites you are visiting. Many countries, including Germany, the United Kingdom, and the United States, allow their Federal police to hack their citizens. DNSCrypt is an excellent way to verify that responses originate from the chosen DNS resolver and have not been spoofed.

***DNSCrypt does not provide encryption, prevent “DNS leaks”, or a third-party DNS resolver from logging your activity.***

Higher level TLS protocol, as used in HTTPS and HTTP2 (SPDY), also leak websites host names in plain text, rendering DNSCrypt useless as a way to hide this information. [SimpleDNSCrypt](https://github.com/bitbeans/SimpleDnsCrypt) is the most up to date implementation for Windows 10. I opted to disable IPv6 and will revisit the hidden (virtual) NICs at another time.

I not recommend OpenDNS, instead I recommend the [OpenNIC project](https://www.opennic.org). OpenDNS is basically Cisco behind which are known to work with the government. 



### Virtual Private Networks (VPN)

Your internet history is [accessible for at least 48 institutions without a warrant](https://yro.slashdot.org/story/16/11/29/1432217/the-uk-is-about-to-legalize-mass-surveillance-update) in the United Kingdom. [Other countries are doomed to follow](https://www.schneier.com/blog/archives/2016/12/my_priorities_f.html).

It is strongly recommended to encapsulate all network traffic beyond your own country’s borders using a Virtual Private Network.


* The problem with most “VPN providers” is that you do not know what is really going on behind the scenes.
* personally I tested in my entire life around 20 different providers and it ended up between Private Internet Access ([PIA](https://www.privateinternetaccess.com/)) & [ProtonVPN](https://protonvpn.com) which I both use daily with [OpenVPN](https://openvpn.net/index.php/open-source/downloads.html) [and for [Android](https://play.google.com/store/apps/details?id=de.blinkt.openvpn&hl=en)].



### Browser’s

I only trust [Chromium](https://chromium.woolyss.com), since I'm part of the community and developer I can at least say [it's by design more efficient and secure than other browsers](https://github.com/CHEF-KOCH/Chromium-hardening). [UnGoogled Chromium](https://github.com/Eloston/ungoogled-chromium) shouldn't be used because it's a study project which not gets maintained as often as it should be to recommend it. 

Do not sync or store passwords within the Browser, better use [KeePass](http://keepass.info/) instead. The reason is that a local or even remote attacker can read-out all Chrome/Browser passwords because there in plain text stored while other tools encrypt your passwords locally. 


Settings:

* Configure your browser to deny 3rd party cookies.
* Remove any bundled plugins/extensions installed by default (if some are pre-installed).
* Disable any location/prediction/spellcheck services.
* Set [StartPage](https://www.startpage.com) or [MetaGer](https://metager.de/en) as your homepage and search engine.
* 99.9% of web exploits, tracking and fingerprinting starts with malicious JavaScript execution hosted by known Malware domains.
* Take the time to configure each plugin on ‘expert’ mode! (see link below)


My extension recommendations and suggested settings can be found over [here](https://github.com/CHEF-KOCH/Chromium-hardening).



### Website logins

If possible always try to use a [YubiKey](https://www.yubico.com/start/). There exist [several versions](https://www.yubico.com/products/yubikey-hardware/compare-yubikeys/), the blue one is normally enough but I recommend v4 instead which supports a higher RSA and ECC standard. 

Besides this use Keepass (as already mentioned) both solutions are compatible and working on ‘every’ (modern) system. 



### Group Policy Editor/Objects

Windows Updates (and upgrades) tend to ‘flip settings’ back to their insecure defaults. Microsoft only seems to respect settings enforced using central Group Policy Objects (GPOs). Even if you are not a seasoned IT professional — you will love being able to manage most settings for all user accounts from a single program (‘gpedit.msc’). An [up to date settings reference for Windows 10 is available in Excel format](https://www.microsoft.com/en-us/download/details.aspx?id=25250).


You can extend the capabilities of your Group Policy Editor by deploying Administrative Templates (.adml & .admx files). Put the .adml and .admx in the correct folders (see below).

Repeat this for this set of [Administrative Templates provided by Microsoft](https://www.microsoft.com/en-us/download/details.aspx?id=53430) (the [v1703 templates can be downloaded here](https://www.microsoft.com/en-us/download/details.aspx?id=55080)).

* Download the Windows10-ADMX.msi file
* From C:\Program Files (x86)\Microsoft Group Policy\Windows 10\PolicyDefinitions\
* Copy the .adml file to C:\Windows\PolicyDefinitions\en-US\
* Copy the .admx file to C:\Windows\PolicyDefinitions\

Additional templates are also available for Microsoft [Office 2010](https://www.microsoft.com/en-us/download/details.aspx?id=18968) / [2013](https://www.microsoft.com/en-us/download/details.aspx?id=35554) / [2016](https://www.microsoft.com/en-us/download/details.aspx?id=49030) / [LibreOffice](https://github.com/CollaboraOnline/ADMX) as well as [Chrome](https://www.chromium.org/administrators/policy-templates) and [Firefox](https://github.com/n8felton/Firefox-ADMX).


If you get an Access Denied error, you’ll have to take ownership of the PolicyDefinitions folder first:


* Right-click on the folder, go to Properties, then Security tab.
* Click on Advanced, Owner tab and change the owner to your account.
* Don’t forget to tick the ‘Replace all child object permission’s box.

We will use some of these extended capabilities to lock down the system, making it harder for anyone to disable your protections. 

A reboot may be required to load these extensions.



### Secure Host Baselines

Several well-funded organizations give advice on what makes a configuration “secure.”

* [Australian Department of Defense](http://www.asd.gov.au/infosec/ism/index.htm) (DoD)
* [Center for Internet Security](https://benchmarks.cisecurity.org/downloads/latest/) (CIS)
* [Microsoft Security Guidance Blog](https://blogs.technet.microsoft.com/secguide/)
* [U.K. National Cyber Security Centre](https://www.ncsc.gov.uk/guidance/eud-security-guidance-windows-10) (NCSC)
* [U.S. Department of Defense](http://iase.disa.mil/stigs/os/windows) (DoD)
* [U.S. National Information Assurance Partnership](https://www.niap-ccevs.org/Profile/) (NIAP)
* [U.S. National Institute of Standards and Technology](https://web.nvd.nist.gov/view/ncp/repository) (NIST)
* [U.S. National Security Agency](https://www.iad.gov/iad/library/ia-guidance/) (NSA)


Establishing a [Secure Host Baseline](https://www.iad.gov/iad/library/ia-guidance/security-tips/secure-host-baseline.cfm) (SHB) is one of the NSA’s [top 10 mitigation strategies](https://www.iad.gov/iad/library/ia-guidance/iads-top-10-information-assurance-mitigation-strategies.cfm).



### DoD Secure Host Baseline

I like the [DoD Secure Host Baseline project on Github](https://github.com/iadgov/Secure-Host-Baseline). It is a collection of PowerShell scripts that are relatively painless to apply.
Hit the Windows Key + X keyboard shortcut and launch Windows PowerShell (Admin). 


Run all the commands below from there:
```bash
Set-ExecutionPolicy Unrestricted
```


Download the repository as a ZIP file, and unlock it:

```bash
cd $env:USERPROFILE\Downloads
Unblock-File -Path '.\Secure-Host-Baseline-master.zip'
```

Extract the ZIP file, remove “-master” from both directories created.
In the PowerShell terminal, navigate down to the directory, and import the Group Policy PowerShell module:

```bash
cd $env:USERPROFILE\Downloads\Secure-Host-Baseline
Import-Module -Name '.\Secure-Host-Baseline\Scripts\GroupPolicy.psm1'
```

You will need to extract the [Microsoft Local Group Policy Object (LGPO) utility](https://blogs.technet.microsoft.com/secguide/2016/09/23/lgpo-exe-v2-0-pre-release-support-for-mlgpo-and-reg_qword/) to a known location. Make sure to reference full paths in the command below to avoid any errors.


I have no need for cryptographic DoD certificates:

```bash
Invoke-ApplySecureHostBaseline -Path 'C:\...\Secure-Host-Baseline\' -PolicyNames 'Adobe Reader','AppLocker','Chrome','EMET','Internet Explorer','Office 2013','Windows','Windows Firewall' -ToolPath 'C:\...\LGPO.exe'
```

You will notice that, for example, more of your Chrome settings are now enforced using group policy — some of which I will reverse.


That said, it is not perfect:
I had to manually delete an old set of ADMX/ADML files to launch my Local Group Policy Editor error free.
Chrome has most of its plugins disabled, the search engine is locked to a faulty version of Google SSL.

Another reboot is required to apply all changes!



### Microsoft Security Compliance Manager

Microsoft has released an excellent tool which allows you to apply their “[Microsoft ”Recommended Security Baselines](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/windows-security-baselines).” This tool will soon be replaced by the DSC Environment Analyzer (DSCEA), likely before the [v1703 security baselines is ready for production](https://blogs.technet.microsoft.com/secguide/2017/06/15/security-baseline-for-windows-10-creators-update-v1703-draft/), so keep that in mind.


Install and configure [Security Compliance Manager 4 (SCM)](https://technet.microsoft.com/en-us/solutionaccelerators/cc835245.aspx). Be aware that this tool requires .Net Framework 3.5 (Includes .Net 2.0 and 3.0) and installs [SQL Server 2008 Express (x86)](https://www.mssqltips.com/sqlservertip/4050/cleanly-uninstalling-stubborn-sql-server-components/) — increasing your attack surface.


Once installed, under the ‘Get knowledge’ column, you can download Microsoft baselines automatically for Windows 10 v1607, Internet Explorer 11 and Office 2010/2013/2016. Check out the Attachments\Guides section for the SecGuide ADMX/ADML to install and any supplemental documentation. You have to Duplicate a baseline before it can be customized. If you wish to apply any SCM baseline to your system, you can export a GPO backup folder and use the LGPO tool’s /g switch.



### Microsoft Policy Analyzer

Another tool to geek out over is the [Microsoft Policy Analyzer tool](https://blogs.technet.microsoft.com/secguide/), which shows the differences between your local policy/registry and as many GPO backups as you "Add & select".

In the Policy Viewer, the information displayed can be filtered and searched, or exported to Excel format. Conflicts are shown in yellow.
The DoD Secure Host Baseline template has the more secure defaults in most cases, but you will find that a hybrid of both fits your particular use-case.




### Customizing Group Policy

There is no substitute to manually stepping through my options with the Group Policy Editor (by running ‘gpedit.msc’). Improve its readability by sorting the ‘Setting’ or ‘State’ column. The wording for some settings can be very counter-intuitive. Luckily each option has a clear description.


Most of the relevant settings are found under these Policy Paths:


* Computer Configuration > Windows Settings > Security Settings
* Computer Configuration > Administrative Templates > System
* Computer Configuration > Administrative Templates > Windows Components
* User Configuration > Administrative Templates

Apply any changes by execution the command below in any admin shell:

```bash
gpupdate.exe /Force
```

It can be very insightful to repeat this step as [new CIS benchmark documents are released](https://benchmarks.cisecurity.org/downloads/browse/index.cfm?category=benchmarks).




### Merging Baselines

The information the Policy Analyzer gives me allows me to quickly combine the best of two baselines together and customize my settings as desired. 


* I eased my Account Lockout Policy (duration).
* I require VMWare compatibility to do my job (a non-issue in v1703)
* I disabled Windows Defender (and SpyNet) for privacy reasons.
* I white-listed my desired Chrome Extensions and relaxed other settings.
* I disabled program execution from removable drives.

Despite primarily working from VMWare, some settings aimed at improving security would interfere with me during a penetration test. Such as those limiting the number of simultaneously active network adapters or prevent me from creating a layer 2 MAC bridge between them.




### Telemetry

As you are stepping through your options, you will not only discover Chrome has a Dinosaur Easter Egg Game, but that many apps have some form of:

* Advertising ID
* Cloud Sync
* Error Reporting
* Experience Improvement
* Customer Experience Improvement Program (CEIP)
* (Common) Telemetry
* Usage Statistics

The DoD baseline has done a good job disabling most, but not all. Note that unless you have a Windows Enterprise or Education license, you will not be able to disable Telemetry entirely.



### Strict policy reapplication

Make sure to enforce strict reapplication of critical policies:

* Adm. Templates > System > Group Policy.
* Enable: ‘Process even if the Group Policy objects have not changed’.
* For: Folder redirection-, IP security-, registry-, scripts-, security-, Services preference-, software installation-, wired-, and wireless- policy processing.



### Deny access from the network

I will never need to remotely login to my workstation:

* Adm. Templates > Windows Settings > Security Settings > Local Policies > User Rights Assignment
* Add ‘Local account and member of Administrators group’ to:
* ‘Deny access to this computer from the network’
* ‘Deny log on through Remote Desktop Services’


### Windows own DNS Client

Windows 10’s DNS Client just accepts whichever response it receives first, not necessarily the one from your intended DNS server. Personally I disabled Windows own DNS client entirely via services.msc and use [Unbound](http://unbound.net/) instead. 

* Adm. Templates > Network > DNS Client.
* ‘Turn off smart multi-homed name resolution’ to prevent “DNS Leaks”.
* ‘Turn off multicast name resolution’ to disable LLMNR.
* ‘Turn off smart protocol reordering’ for good measure.


We can later enforce this policy using Windows Firewall as a technical control.


### Windows NTP Client

Configure the Windows Network Time Protocol (NTP) Client to [use trusted, non-Microsoft servers](http://tf.nist.gov/tf-cgi/servers.cgi) —perhaps even authenticated ones. At least till Google’s ‘[roughtime protocol](https://roughtime.googlesource.com/roughtime)’ is synchronizing our clocks.



### SSL/TLS Standards

You can enforce the use of modern TLS standards system-wide:

* Adm. Templates > Network > SSL Configuration Settings.

To determine which ECC curves are supported on your system, use the following command: 

```bash
CertUtil.exe -DisplayEccCurve
```

[RCC](https://www.trustprobe.com/fs1/apps.html) is a similar tool which makes it easier to work with certmgr.msc to identify unknown or untrusted certificates.


This usually breaks older applications like SQL Server 2008 Express (Windows Event Viewer is your friend).

Lucky for us Google Chrome is state of the art:


* Adm. Templates > Google > Google Chrome.
* ‘Disable the SPDY protocol’ (HTTP2), set ‘Minimum SSL version enabled’ ’ to TLS 1.3 and set ‘Enable WPAD optimization’ to Disabled.


Review the Control Panel > Internet Options > Advanced tab and uncheck ‘Use HTTP2’, check ‘Send Do Not Track requests’. Disable WPAD on the Connections tab > LAN Settings > uncheck ‘Automatically detect settings’.


### Additional Privacy

* Adm. Templates > Windows Components > Internet Explorer.
* I granted myself the privilege to delete my IE browsing history.
* Adm. Templates > Windows Components > Location and Sensors.
* I turned off all Sensors.
* Sandbox every unknwon executable via Sandboxie, same like IE and Edge.




### LSA Protection

It is recommended to [configure additional LSA Protection](https://technet.microsoft.com/en-us/library/dn408187%28v=ws.11%29.aspx) to defeat tools like [MimiKatz](https://github.com/gentilkiwi/mimikatz).


* Under: Adm. Templates > MS Security Guide (a custom template from SCM4) enable ‘Lsass.exe audit mode’.
* Reboot and check the Windows Event Viewer for event codes 3065 and 3066 — those are drivers that do not meet security standards.
* Sysinternals Autoruns will show unsigned drivers in a different color, under Options > Scan Options you can enable code signature verification and submission to VirusTotal.com.
* Go back and enable ‘LSA Protection’ if all your drivers are properly signed.
* **WDigest Authentication** should already be disabled to prevent transmission of credentials across the network as a weak MD5 hash or message digest.


### Net Session Enumeration

Run the [NetCease](https://gallery.technet.microsoft.com/Net-Cease-Blocking-Net-1e8dcb5b) PowerShell script to mitigate against a method [Bloodhound](https://github.com/adaptivethreat/BloodHound) uses.


```bash
cd $env:USERPROFILE\Downloads
Unblock-File -Path '.\NetCease.zip'
.\NetCease\NetCease.ps1
```

Restart the Server service (or reboot).


### Web Proxy Auto-Discovery Protocol (WPAD)

We already disabled the ‘WinHTTP Web Proxy Auto-Discovery Service’ service and unchecked the ‘Auto-detect setting’s’ Internet Options property.

* Launch the Windows Registry Editor (regedit.exe)
* Browse to: HKEY_CURRENT_USER > SOFTWARE > Microsoft > Windows > CurrentVersion > Internet Settings > Wpad
* Create a new ‘DWORD (32-Bit) Value’ called ‘WpadOverride’ and set to ‘1’
* Browse to: HKEY_LOCAL_MACHINE > SYSTEM > CurrentControlSet > Services > Tcpip > Parameters
* Set the existing ‘UseDomainNameDevolution’ to ‘0’.

Registry changes require a reboot.


### Windows Script Host (WSH)

Malware often abuses functionality that allows apps and processes to be automated; Windows Script Host is a classic example. 

We can disable most of the Windows Scripting capabilities:

* Launch the Windows Registry Editor (regedit.exe)
* Browse to: HKEY_LOCAL_MACHINE > SOFTWARE > Microsoft > Windows Script Host > Settings
* Create a new ‘DWORD (32-Bit) Value’ called ‘Enabled’ and set it to ‘o’

Disabling WSH may prevent you from running .bat batch files.



### Windows Firewall with Advanced Security

Windows Firewall (WFAS) is our technical security control that enforces our intended policies and supplements them when needed. You can see every existing Firewall rule using the ‘Windows Firewall with Advanced Security’ desktop app (or by running ‘WF.msc’).


Firewall settings and rules are best created using the now familiar Group Policy Editor. Under Computer Configuration > Windows Settings > Security Settings > Windows Firewall with Advanced Security.


First add a rule that blocks all outgoing and incoming traffic:

* Click ‘Windows Firewall Properties’.
* For each profile (Domain, Private, Public) use the drop-down to ‘Block’ all Outbound connections.
* Explore the Settings and Logging customization options for each.


Unless you create an explicit Block rule for each or disable merging of local firewall rules for each profile’s settings using Group Policy (‘gpedit.msc’), Microsoft will re-enable them after a major update. Further more applications often create their own exceptions.

Force yourself to apply the principle of minimal privilege.


### AppLocker

One of the most powerful defense strategies is whitelisting which applications are allowed to run with [Windows AppLocker](https://technet.microsoft.com/en-us/library/dd759117%28v=ws.11%29.aspx).


By now AppLocker is already running in ‘Audit only’ mode — all processes executed by users are logged to the Event log, including the full path of the program.

* As a first step you could blacklist your home and temporary directory, as well as others paths [a regular user has write access to](https://technet.microsoft.com/en-us/sysinternals/accesschk.aspx).
* Next, only allow the execution of files in directories you trust (i.e. %ProgramFiles% and %WinDir%). [Use AccesEnum](https://technet.microsoft.com/en-us/sysinternals/accessenum.aspx) to verify there are no user-writable directories there (like MS-SQL’s ‘ErrorReporting’!)


All AppLocker policies are created and managed using Group Policy under:
* Computer Configuration > Windows Settings > Security Settings > Application Control Policies > AppLocker
* Our goal is to [whitelist only those applications you trust](https://technet.microsoft.com/en-us/library/ee449480%28v=ws.11%29.aspx), by path but preferably by their digital signature.



### Two Factor Authentication

Solely relying on a username/password or even out-of-bound SMS authentication using your cell phone will not be secure enough in 2017 (NIST 800–63A/B/C). [U2F security keys are your best hope against account takeovers](https://it.slashdot.org/story/16/12/24/0037256/u2f-security-keys-may-be-the-worlds-best-hope-against-account-takeovers).
I highly recommend buying and learning how to use a [Yubikey](https://www.yubico.com/why-yubico/for-individuals/). The YubiKey 4 is now closed-source but the NEOs are still using open-source code others can independently verify. It integrates well [with Windows 10](https://www.yubico.com/why-yubico/for-businesses/computer-login/windows-login/). If you not want to go with a YubiKey you can take a look at [Authy](https://authy.com). 



### Slides

- [How to go from Responding to Hunting with Sysinternals Sysmon](https://onedrive.live.com/view.aspx?resid=D026B4699190F1E6!2843&ithint=file%2cpptx&app=PowerPoint&authkey=!AMvCRTKB_V1J5ow)
- [111 Attacking EvilCorp Anatomy of a Corporate Hack](https://adsecurity.org/wp-content/uploads/2016/09/DerbyCon6-2016-AttackingEvilCorp-Anatomy-of-a-Corporate-Hack-Presented.pdf)
- [Real Solutions From Real Incidents: Save Money and Your Job!](https://evil.plumbing/Current-version-June.pdf)



### Additional resources

- [ADSecurity](https://adsecurity.org/)
- [Harmj0y's blog](http://blog.harmj0y.net/)
- [Sysmon SecuriTay's configuration file](https://github.com/SwiftOnSecurity/sysmon-config) - template with default high-quality event tracing
- [Explaining and adapting Tay’s Sysmon configuration](https://medium.com/@lennartkoopmann/explaining-and-adapting-tays-sysmon-configuration-27d9719a89a8#.mi0rmwn1v)
- [Use of PSExec](https://www.toshellandback.com/2017/02/11/psexec/)