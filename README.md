# Wireless Access Point Scanner

<pre>
__      __ __ _  _ __   ___   ___   __ _  _ __     
\ \ /\ / // _` || '_ \ / __| / __| / _` || '_ \    
 \ V  V /| (_| || |_) |\__ \| (__ | (_| || | | |   
  \_/\_/  \__,_|| .__/ |___/ \___| \__,_||_| |_|   
                |_|                                 
</pre>

> [!TIP]
> wapscan is in a first version now available on launchpad. See section Installation for more informations about this topic.

> [!NOTE]
> I started working on this package on March the 1st, 2024. So be patient until I remove this note. At that time, all the necessary information will be included here. The removal of the note is then followed by the usual irregular updating of the software.

# <img src="\IMAGES\wlan_logo.png" width="24" alt="Alt text" title="Optional title"> README

<p align="justify">This repository consists of <code>Bash</code> based <code>Wireless Access Point Scanner</code> for the command line. The user can decide, if he is using the bunch of scripts or if the DEB package is used.</p>

## Foreword

<p align="justify">The work on the <code>Wireless Access Point Scanner</code> started in the year 2017. The goal was to program a simple wifi scanner that has the ability to address different wlan hardware devices. After invokation the wireless access point scanner is asking which wlan device should be used for scanning. Then the data will be collected and afterwards pretty printed in the terminal window and after that contiously updated.</p>
    
<p align="justify">Next to the wireless access point scanner I wrote over the years a bunch of scripts related to wifi or wlan. For the wireless access point scanner I created a script which automatically prepares a package for packaging as <code>DEB</code> package.</p>

<p align="justify">The first package I am releasing is in the first shot for educational purposes. In the following versions I will move on to productive versions.</p>

## Short Description

<p align="justify">The wireless access point scanner is listing 2.4 GHz as well as 5 GHz access points. Four versions of the wireless access point scanner can be used. But only three of them are of interest:</p>

1. wapscan
2. wapscan_beacon
4. wapscan_oui
  
<p align="justify">wapscan is the base apllication. wapscan_beacon and wapscan_oui offer further informations. Sometimes it is of interest how often an access point is sending the beacon. This is monitored by wapscan_beacon. It can also be of interest to know the hardware on which the access point runs. The is realised by wapscan_oui.</p>

<p align="justify">The wireless access point scanner is well tested on für wlan on 2.4 GHz. Wlan on 5 GHz were not of interest up to now. So it has also be tested a little bit more.</p>

## Prerequisites

<p align="justify">The wireless access point scanner will run on Linux Mint and should be also run on Linux Ubunto and also on Debian like operating systems. I developed 
 the scanner on Linux Mint for usage on Linux Mint.</p>

# Introductory Words

<p align="justify">Before I started the development I was looking for a good name. After finding a name I checked if there will be a package with the same name [1]. No match said to me that this will be a good name.</p>

## Repository Organisation 

This repository will have three parts:

1. How-to for creating the DEB package from scratch
2. Required directory tree structure for packaging of the DEB package 
3. Source code in form of some Bash scripts used for packaging

## Look and Feel

<p align="justify">You can run 4 versions:</p>

1. wapscan_simple (not preferred)
2. wapscan        (for regular usage)
3. wapscan_beacon (for user who needs two konow how often beacons can be seen)
4. wapscan_oui    (for user who needs to know which hardware the AP is using)

First, you choose the WLAN device for scanning:

<center>
<img src="\IMAGES\menu.png" alt="Alt text" title="Optional title">
</center>

The first data is collected and than the WLAN environment is scanned continously.

<center>
<img src="\IMAGES\scan.png" alt="Alt text" title="Optional title">
</center>

# Program Technical Background

<p align="justify">To avoid reinventing the wheel, I always look for the simplest solutions. I found the tools available at command level suitable for a WLAN scanner.</p>

<p align="justify">I found the tools available at command level suitable for a WLAN scanner.</p>

<p align="justify">I use the tools iw and iwlist. For hardware identification iw is well suited and for WLAN scanning iwlist.</p>

# Installation

<p align="justify">The easiest way for the future is to use PPA from Launchpad.</p>

<pre>
    sudo add-apt-repository ppa:zentrocdot/wapscan-cli
    
    sudo apt update

    sudo apt-get install wapscan
</pre>

# Installation Note

<p align="justify">To use the created DEB package one needs at least Debian 12, Ubuntu Jammy, Mint Vanessa or Rapsian Bookworm. The problem is the internal usage of the zst compression, which was introduced with Debian 12.</p>

# Testing

<p align="justify">The scripts have been tested on different Debian derivatives and versions and have been executable. The current restrictions apply to the installation of the DEB package.</p>

# To-Do

<p align="justify">A review of the code is necessary. Since the program is now accessible to the general public, a few additional modifications are necessary.</p>

# Outlook

<p align="justify">As soon as I'm done here in the repository, I'll see if a PPA is suitable for my first application.</p>

# Planned Further Developments

<p align="justify">At the moment 2.4 GHz as well as 5 GHz wlan access points are recognised. It shuod be possible to decide which one should be monitored.</p>

# Challenges while Development

<p align="justify">After writing the first version and the predecessor of the current WLAN scanner, I faced two problems when working on different hardware platforms and operating systems.</p>

<p align="justify">First the output structure of iwlist was different on different operating systems. Second the naming of the wlan devices was different on different operating systems.</p>

# Typical Response from IWLIST

    wly97dfd02de607  Scan completed :
              Cell 01 - Address: 85:BE:26:40:71:25
                        Channel:6
                        Frequency:2.437 GHz (Channel 6)
                        Quality=25/70  Signal level=-65 dBm
                        Encryption key:on
                        ESSID:"WlanRouter!BlueMagic"
                        Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 6 Mb/s
                                  9 Mb/s; 12 Mb/s; 18 Mb/s
                        Bit Rates:24 Mb/s; 36 Mb/s; 48 Mb/s; 54 Mb/s
                        Mode:Master
                        Extra:tsf=0000000000b0cc48
                        Extra: Last beacon: 4024ms ago
                        IE: Unknown: 000F456569565965772E53657475703734
                        IE: Unknown: 010882847B960C121824
                        IE: Unknown: 030206
                        IE: Unknown: 2A0100
                        IE: Unknown: 32043048606C
                        IE: Unknown: 2D1B0C181DFF00000000000000000000000000000000000000000000
                        IE: Unknown: 3D1606000000000000000000000000000000000000000000
                        IE: IEEE 802.11i/WPA2 Version 1
                            Group Cipher : CCMP
                            Pairwise Ciphers (1) : CCMP
                            Authentication Suites (1) : PSK
                        IE: Unknown: DD190050F2020102000003A4000027A4000052435E0062322F00
                        IE: Unknown: DD1E00804C340C181EFF00000000000000000000000000000000000000000000
                        IE: Unknown: DD1B00905C3406000000000000000000000000000000000000000000
                        IE: Unknown: DD0700E05C0202E0

# Typical Response from IW

    phy#0
	       Interface wlq6s1
		      ifindex 2
		      wdev 0x1
		      addr 29:fe:53:01:db:46
		      type managed
		      txpower 17.00 dBm



# References

[0]    www&#8203;.debian.org/doc/manuals/maint-guide/dreq.en.html

[1]    github.com/HewlettPackard/wireless-tools

[2]    manpages.debian.org/stretch/wireless-tools/iwlist.8.en.html   

[3]    packages.debian.org/sid/wireless-tools

[4]    unix.stackexchange.com/questions/407517/why-did-wireless-tools-version-30-become-a-permanent-beta

[5]    wiki.ubuntuusers.de/WLAN/

[6]    wireless.wiki.kernel.org/en/users/documentation/iw

[7]    www&#8203;.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html

[8]    www&#8203;.linuxuprising.com/2018/10/how-to-search-available-packages-from.html

[9]    www&#8203;.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/

[10]    wiki.ubuntuusers.de/WiFi_Radar/

[11]    wifi-radar.tuxfamily.org/pub/

[12]    https://wiki.ubuntuusers.de/LinSSID/

<hr width="100%" size="2">

<p align="center">I loved the time when you could get also a hamburger :hamburger: for one euro!</p>

<p align="center">
<a target="_blank" href="https://www.buymeacoffee.com/zentrocdot"><img src="\IMAGES\greeen-button.png" alt="Buy Me A Coffee" height="41" width="174"></a>
</p>

<hr width="100%" size="2">

## Other ways to donate

<p align="justify">If you like what I present here, or if it helps you, or if it is useful, you are welcome to donate a small contribution or a cup of coffee. Or as you might say: Every TRON counts! Many thanks in advance! :smiley:</p>

<pre>TQamF8Q3z63sVFWiXgn2pzpWyhkQJhRtW7            (TRON)
DMh7EXf7XbibFFsqaAetdQQ77Zb5TVCXiX            (DOGE)
12JsKesep3yuDpmrcXCxXu7EQJkRaAvsc5            (BITCOIN)
0x31042e2F3AE241093e0387b41C6910B11d94f7ec    (Ethereum)</pre>
    
<hr width="100%" size="2">

<p align="center">File last modified 02/03/2024</p>
