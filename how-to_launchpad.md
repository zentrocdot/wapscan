# How-to launchpad

Building apackage for launchpad is a little bit differne tform building a dEb for personal use.

I am using the structure which I presented in the other How-To as basis.

delete all files in the parent folder.

First re-creating the tree structure from within the package directory.

    dh_make -y --indep --createorig

Thean use debuild.

    debuild -S -sa    # New from scratch

    debuild -S -sd    # Difference build

Ignore the signing error.

Change to the parent directory.

    debsign -k <key-ID> wapscan_0.0.0.1-all-1_source.changes

Afterwards the package can be uploaded.

    dput ppa:zentrocdot/wapscan-cli-ppa wapscan_0.0.0.1-all-1_source.changes

If one makes changes, fore upload.

    dput --force ppa:zentrocdot/wapscan-cli-ppa wapscan_0.0.0.1-all-1_source.changes

# Passwords & Encryption Keys Application

The passwords & encryption keys application name is unusually seahorse.

    sudo apt-get install seahorse

# References Unsorted

[1]   launchpad.net/~zentrocdot/+archive/ubuntu/wapscan-cli-ppa

[2]   askubuntu.com/questions/140803/steps-for-creating-a-slightly-modified-package-and-uploading-it-in-a-ppa

[3]    stackoverflow.com/questions/43699845/error-uploading-files-for-distribution-unreleased-to-ppa-not-allowed

[4]    askubuntu.com/questions/1012403/how-to-upload-build-a-custom-kernel-on-launchpad

[5]    help.launchpad.net/YourAccount/CreatingAnSSHKeyPair

[6]    stackoverflow.com/questions/50089033/how-do-i-get-the-changes-file-for-a-debian-package

[7]    https://help.launchpad.net/Packaging/UploadErrors

[8]    help.ubuntu.com/community/GnuPrivacyGuardHowto

[9]    help.launchpad.net/ReadingOpenPgpMail

[10]   askubuntu.com/questions/1087569/deploying-own-debian-package-to-launchpad

[11]    help.launchpad.net/Packaging/PPA/BuildingASourcePackage

[12]    help.launchpad.net/Packaging/PPA/Uploading

[13]    help.launchpad.net/Packaging/PPA#Your_PPA.27s_key

[14]    wiki.ubuntuusers.de/GnuPG/

[15]    stackoverflow.com/questions/46879602/get-fingerprints-of-openpgp-keys

