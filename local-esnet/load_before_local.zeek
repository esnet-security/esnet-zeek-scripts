##! This script is loaded before site/local.zeek via zeekctl's SitePolicyScripts directive.
##!
##! This is our opportunity to @unload things we don't want in local.zeek, but still use the
##! upstream local.zeek

# Disable the default scan detection script, and use Justin's simple-scan via zeek-pkg instead.
@unload misc/scan

# Built-in known hosts conflicts with known-hosts-with-dns
@unload protocols/conn/known-hosts

# Built in intersting hostnames conflicts with ssh-interesting-hostnames-with-known
@unload protocols/ssh/interesting-hostnames
