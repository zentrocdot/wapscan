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

# Getting the KEY ID

    gpg2 --list-keys --keyid-format LONG

# References

[1]   askubuntu.com/questions/1087569/deploying-own-debian-package-to-launchpad

[2]   askubuntu.com/questions/140803/steps-for-creating-a-slightly-modified-package-and-uploading-it-in-a-ppa

[3]    askubuntu.com/questions/1012403/how-to-upload-build-a-custom-kernel-on-launchpad

[4]    help.launchpad.net/YourAccount/CreatingAnSSHKeyPair

[5]    help.launchpad.net/Packaging/PPA/BuildingASourcePackage

[6]    help.launchpad.net/Packaging/PPA/Uploading

[7]    help.launchpad.net/ReadingOpenPgpMail

[8]    help.launchpad.net/Packaging/UploadErrors

[9]    help.ubuntu.com/community/GnuPrivacyGuardHowto

[10]   launchpad.net/~zentrocdot/+archive/ubuntu/wapscan-cli-ppa

[11]    stackoverflow.com/questions/43699845/error-uploading-files-for-distribution-unreleased-to-ppa-not-allowed

[12]    stackoverflow.com/questions/50089033/how-do-i-get-the-changes-file-for-a-debian-package

[13]    stackoverflow.com/questions/46879602/get-fingerprints-of-openpgp-keys

[14]    wiki.ubuntuusers.de/GnuPG/
