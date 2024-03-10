# <img src="\IMAGES\wlan_logo.png" width="22" alt="wapscan logo" title="wapscan logo"> Wireless Access Point Scanner

### ASCII Logo

<pre>
__      __ __ _  _ __   ___   ___   __ _  _ __     
\ \ /\ / // _` || '_ \ / __| / __| / _` || '_ \    
 \ V  V /| (_| || |_) |\__ \| (__ | (_| || | | |   
  \_/\_/  \__,_|| .__/ |___/ \___| \__,_||_| |_|   
                |_|                                 
</pre>

### Announcement

> [!TIP]
> <p align="justify"><code>wapscan</code> is now available on <a href="https://launchpad.net/~zentrocdot/+archive/ubuntu/wapscan-cli">launchpad</a>. For more informations about this topic see also the section </code><b>Installation</b>.</p>

# README

> [!NOTE]
> <p align="justify">I started working on this package on March the 1st, 2024. So be patient until I remove this note. At that time, all the necessary information will be included here. The removal of the note is then followed by the usual irregular updating of the software.</p>

<p align="justify">This repository consists of a <code>Bash</code> based <code>Wireless Access Point Scanner</code> for the command line. The user can decide, if he is using the bunch of scripts or if the DEB package from launchpad is used.</p>

## Foreword

<p align="justify">A WLAN Scanner is sometimes called a WLAN sniffer. In the context of this package I prefer the naming WLAN Scanner. WLAN sniffing is hacker-like or is used in connection with penetration testing. I use the WLAN scanner to check and optimize my WLAN working environment.</p>

<p align="justify">The work on the <code>Wireless Access Point Scanner</code> started in the year 2017. The goal was to program a simple wlan scanner that has the ability to address different wlan hardware devices. After invokation the wireless access point scanner is asking which wlan device should be used for scanning. Then the data will be collected and afterwards pretty printed in the terminal window which after that is contiously updated.</p>
    
<p align="justify">Next to the wireless access point scanner I wrote over the years a bunch of scripts related to wifi or wlan. For the wireless access point scanner I created a script which automatically prepares a package for packaging as <code>DEB</code> package. That knowledge how to do was the base for my first steps on Launchpad.</p>

<p align="justify">As expected it is a big difference between writing a working script or building a DEB package from that script. It is even more complicated to use a platform like Launchpad for publishing.

<p align="justify">The first package I am releasing is in the first shot for educational purposes. In the following versions I will move on to productive versions.</p>

<p align="justify">At the time I started writing the program, iwlist was still more common than iw. This limits the analysis possibilities. Nevertheless one can see the important things related to WLAN.</p>

> [!NOTE]
> The current version is developed on <code>Linux Mint 21.3 (Virginia)</code>. It should also be runnable without restrictions on <code>Debian 12 (Bookworm)</code>, <code>Ubuntu Jammy Jellyfish LTS (22.04)</code> and <code>Raspbian 12 (Bookworm)</code>.

## Short Description

<p align="justify">The wireless access point scanner is listing 2.4 GHz as well as 5 GHz access points. The hardware must have the capability for dualband should be clear. Three versions of the wireless access point scanner can be used.</p>

1. wapscan
2. wapscan_beacon
4. wapscan_oui
  
<p align="justify">wapscan is the base apllication. wapscan_beacon and wapscan_oui offer further informations. Sometimes it is of interest how often an access point is sending the beacon. This is monitored by wapscan_beacon. It can also be of interest to know the hardware on which the access point runs. The is realised by wapscan_oui.</p>

<p align="justify">The wireless access point scanner is well tested on für wlan on 2.4 GHz as well as 5 GHz. Both bands are monitored as expected on differnent hardware devices.</p>

## Prerequisites

<p align="justify">The wireless access point scanner will run on <code>Linux Mint</code> and should be also run on <code>Linux Ubuntu</code> and also on <code>Debian</code> like operating systems. I developed the scanner on <code>Linux Mint</code> for usage on <code>Linux Mint</code>.</p>

## Introductory Words

<p align="justify">Before I started the development I was looking for a good name. After finding a name I checked if there will be a package with the same name [1]. No match said to me that this will be a good name.</p>

## Repository Organisation 

This repository will have three parts:

1. Howto for creating the DEB package from scratch
2. Required directory tree structure for packaging of the DEB package 
3. Source code in form of some Bash scripts used for packaging

## Look and Feel

<p align="justify">You can run 3 versions:</p>

1. wapscan        (for regular usage)
2. wapscan_beacon (for user who needs two konow how often beacons can be seen)
3. wapscan_oui    (for user who needs to know which hardware the AP is using)

First, you choose the WLAN device for scanning:

<center>
<img src="\IMAGES\menu.png" alt="Alt text" title="Optional title">
</center>
Image for presentation purposes

The first data is collected and than the WLAN environment is scanned continously.

<center>
<img src="\IMAGES\scan.png" alt="Alt text" title="Optional title">
</center>
Image for presentation purposes

## Development

<p align="justify">I started the development on wapscan implementing pure basic functionality. Current improvements are first tested with wapscan. When the program works as expected I am changing wapscan_beacon and wapscan_oui in a way, that they work like wapscan.</p>

## Installation

<p align="justify">The easiest way for the future is to use PPA from Launchpad.</p>

<pre>
sudo add-apt-repository ppa:zentrocdot/wapscan-cli
    
sudo apt update

sudo apt-get install wapscan
</pre>

<p align="justify">wapscan will be build for use with Ubuntu Noble, Mantic, Jammy, Focal, Bionic, Xenial and Trusty.</p>

<p align="justify">At the moment I am building wapscan for Ubuntu Noble. After that is done I prepare the DEB packages inside of Launchpad for use with the other versions of Ubuntu. Then I am testing the installed program with Linux Mint (Ubuntu Jammy). This is at least Debian 12, Ubuntu Jammy, Mint Vanessa or Rapsian Bookworm.</p>

## Installation Note

<p align="justify">Open issue is, that I not know if the zst compression, which was introduced with Debian 12, is at all a problem for elder versions.</p>

## Uninstallation

<p align="justify">Uninstallation can be done doing:</p>

    sudo apt-get remove --purge wapscan

## Comments on operation

<p align="justify">Collecting WLAN data the first time can take up to 5 seconds.</p>

<p align="justify">You can invoke the program with or without using sudo. If you are using sudo the program asked for the hardware devices. If you ar not using sudo the program first needs the sudo permission for operation.</p>

<p align="justify">If you see</p>

    Could not get data from the device ...

<p align="justify">in operation then there are two reasons possible.</p>

1. In general there are not data from hardware
2. Same hardware is used multiple times

## Testing

<p align="justify">The scripts have been tested on different Debian derivatives and versions and have been executable. The current restrictions apply to the installation of the DEB package.</p>

# Limitation

<p align="justify">It looks as if I have been able to overcome a known limitation. Until now, using the same hardware two or more times has been a problem when collecting and displaying data. In the current solution, the program waits until it has received data and prints it in the terminal window. To make this transparent, I have added a time of the last scan to the output on the screen. </p>

## Known Restriction

<p align="justify">One of the most important restrictions is the fact that sudo rights are required for execution. This is due to the use of iwlist in the background. iwlist only works as root.</p>

## Bugs

<p align="justify">No bugs are known yet.</p>

## To-Do

### List of things to do

1. Review the code on problems, typing errors and bugs
2. Improvement of the code
3. Optimisation of the code
4. Catch message "No scan results" from interface
5. Add a command line evaluation using getopt

### Further things to do

<p align="justify">I had not yet checked whether I could obtain further information from the Information Elements. This is still to be done.</p>

<p align="justify">Since I call sudo from within the program now, it is necessary to check how I can separate the first call of wapscan from the second sudo call of wapscan. This is a similar process to my daemonising process of a daemon script.</p>

## Outlook

<p align="justify">to-do ...</p>

## Spin-Off

<p align="justify">Write another program using other tool for extracting mor informations from a scan.</p>

## Planned Further Developments

<p align="justify">At the moment 2.4 GHz as well as 5 GHz wlan access points are recognised. It shuod be possible to decide which one should be monitored.</p>

<p align="justify">Check how I can easily identify the used WLAN 802.11 b/g/n standard of the AP.</p>

## Challenges while Development

<p align="justify">After writing the first version and the predecessor of the current WLAN scanner, I faced two problems when working on different hardware platforms and operating systems.</p>

<p align="justify">First the output structure of iwlist was different on different operating systems. Second the naming of the wlan devices was different on different operating systems.</p>

## Program Technical Background

<p align="justify">To avoid reinventing the wheel, I always look for the simplest solutions. I found the tools available at command level suitable for a WLAN scanner.</p>

<p align="justify">I found the tools available at command level suitable for a WLAN scanner.</p>

<p align="justify">I use the tools iw and iwlist. For hardware identification iw is well suited and for WLAN scanning iwlist.</p>

## Typical Response from IWLIST

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

## Typical Response from IW

    phy#0
	       Interface wlq6s1
		      ifindex 2
		      wdev 0x1
		      addr 19:fb:53:01:fb:56
		      type managed
		      txpower 17.00 dBm

 ## Compatibility to given oui.txt files

 <p align="justify">To be compatible to a given oui.txt file I worked out the following structure for one entry.</p>
                  
    00-18-42 (hex) Nokia Danmark A/S 
            ^     ^
	    |     | 
            |     \ - one or more whitespaces [space and/or tab]
            \ - one or more whitespaces [space and/or tab]
   
<p align="justify">in the near future a user can use a self created oui.txt file for testing or other purpose.</p>

## Note on script usage

<p align="justify">In the first version, the script made itself executable during the first run. This can be realised like this:</p>

    # Make the script executable.
    if [[ ! -x "$0" ]]; then chmod +x "$0"; fi

## Troubleshooting

<p align="justify">First of all make sure that you have super user rights and that you can use sudo.</p>

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

[12]    wiki.ubuntuusers.de/LinSSID/

[13]    standards-oui.ieee.org/

[14]    www&#8203;.systutorials.com/docs/linux/man/1-get-oui/

---

<p align="center"><big><big>
<b>You can support the further development of this tool if you like.</b>
</big></big></p>

<hr width="100%" size="2">

<p align="center">
I loved the time when you could get also a hamburger :hamburger: for one euro!
</p>

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
