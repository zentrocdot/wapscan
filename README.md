# Wireless Access Point Scanner

<pre>
    __      __ __ _  _ __   ___   ___   __ _  _ __     
    \ \ /\ / // _` || '_ \ / __| / __| / _` || '_ \    
     \ V  V /| (_| || |_) |\__ \| (__ | (_| || | | |   
      \_/\_/  \__,_|| .__/ |___/ \___| \__,_||_| |_|   
                    |_|                                
</pre>

> [!NOTE]
> I started working on this package on March the 1st, 2024. So be patient until I remove this note. At that time, all the necessary information will be included here. The removal of the note is then followed by the usual irregular updating of the software.

# <img src="wlan1.png" width="24" alt="Alt text" title="Optional title"> README

<p align="justify">This repository consists of <code>Bash</code> based <code>Wireless Access Point Scanner</code> for the command line. The user can decide, if he is using the bunch of scripts or if the DEB package is used.</p>

## Foreword

<p align="justify">The work on the <code>Wireless Access Point Scanner</code> started in the year 2017. The goal was to program a simple wifi scanner that has the ability to address different wlan hardware devices. After invokation the wireless access point scanner is asking which wlan device should be used for scanning. Then the data will be collected and afterwards pretty printed in the terminal window and after that contiously updated.</p>
    
<p align="justify">Next to the wireless access point scanner I wrote over the years a bunch of scripts related to wifi or wlan. For the wireless access point scanner I created a script which automatically prepares a package for packaging as DEB package.</p>

<p align="justify">The first package I am releasing is in the first shot for educational purposes. In the following versions I will move on to productive versions.</p>

## Short Description

<p align="justify">The wireless access point scanner is listing 2.4 GHz as well as 5 GHz access points. Four versions of the wireless access point scanner can be used. But only three of them are of interest:</p>

1. wapscan
2. wapscan_beacon
4. wapscan_oui
  
<p align="justify">wapscan is the base apllication. wapscan_beacon and wapscan_oui offer further informations. Sometimes it is of interest how often an access point is sending the beacon. This is monitored by wapscan_beacon. It can also be of interest to know the hardware on which the access point runs. The is realised by wapscan_oui.</p>

## Prerequisites

<p align="justify">The wireless access point scanner will run on Linux Mint and should be also run on Linux Ubunto and also on Debian like operating systems. I developed 
 the scanner on Linux Mint for usage on Linux Mint.</p>

## Introductory Words

<p align="justify">Before I started the development I was looking for a good name. After finding a name I checked if there will be a package with the same name [1]. No match said to me that this will be a good name.</p>

# Repository Organisation 

This repository will have three parts:

1. How to create a DEB
2. Source code used for packaging
3. Scripts which are used within the package

# Look and Feel

<p align="justify">You can run 4 versions:</p>

1. wapscan_simple (not preferred)
2. wapscan        (for regular usage)
3. wapscan_beacon (for user who needs two konow how often beacons can be seen)
4. wapscan_oui    (for user who needs to know which hardware the AP is using)

First, you choose the WLAN device for scanning:

<center>
<img src="image1.png" alt="Alt text" title="Optional title">
</center>

The first data is collected and than the WLAN environment is scanned continously.

<center>
<img src="image2.png" alt="Alt text" title="Optional title">
</center>

# References

[1]    www&#8203;.linuxuprising.com/2018/10/how-to-search-available-packages-from.html

[2]    wiki.ubuntuusers.de/WLAN/
