# Goal

<p align="justify">The goal is to set up a DEB package for a bunch of given Bash scripts. Afterwards this DEB package should be installable especially on Linux Mint. Then the command are available system wide without further steps.</p>

# First Steps

<p align="justify">We are starting from within the directory <code>$HOME/USR_DEB</code>.</p>

    mkdir wapscan-0.0.0.1-all

    cd wapscan-0.0.0.1-all

# Create a Skeleton

    dh_make -y --indep --createorig

<p align="justify">Now we have a skeleton whith which we can do nothing.</p> 

    ├── wapscan-0.0.0.1-amd
    │   └── debian
    │       ├── changelog
    │       ├── control
    │       ├── copyright
    │       ├── example.cron.d.ex
    │       ├── example.doc-base.ex
    │       ├── example-docs.docs
    │       ├── manpage.1.ex
    │       ├── manpage.md.ex
    │       ├── manpage.sgml.ex
    │       ├── manpage.xml.ex
    │       ├── postinst.ex
    │       ├── postrm.ex
    │       ├── preinst.ex
    │       ├── prerm.ex  
    │       ├── README.Debian
    │       ├── README.source
    │       ├── rules
    │       ├── salsa-ci.yml.ex
    │       ├── source
    │       │   └── format
    │       └── watch.ex

# Second step.

to-do ...

# Create DEB Package

    debuild --no-lintian -us -uc -D
    

# Next Step

<p align="justify">Remove all files named <code>wapscan_0.0.0.1-all.orig.*</code>.</p>
