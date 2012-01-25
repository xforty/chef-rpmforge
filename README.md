Description
===========

Adds the rpmforge repo to yum for redhat based distros.  There are many
common packages that aren't available or are severely out-of-date in the
default rpm repos.  To deal with this, we have to add another repo to be
able to install software later in the run list.

See http://dag.wieers.com/rpm/FAQ.php for more info.

Requirements
============

None

Attributes
==========

* default[:rpmforge][:rpm_url] = The url of the rpm to download and add.

Usage
=====

Include this recipe in your own recipe.
