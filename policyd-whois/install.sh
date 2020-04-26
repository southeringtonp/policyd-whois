#!/bin/sh
echo
echo Creating policyd-whois user...
useradd -Mr policyd-whois

echo
echo Copying files into their respective locations...
mkdir -vp /opt/policyd-whois
mkdir -vp /var/run/policyd-whois
cp -v policyd-whois /opt/policyd-whois/
cp -v test-input /opt/policyd-whois/
cp -v policyd-whois.unit /etc/systemd/system/

echo
echo Fixing permissions...
chown -Rv policyd-whois:root /var/run/policyd-whois
chown -Rv root:root /var/run/policyd-whois
chmod -Rv 0750 /var/run/policyd-whois
chmod -v 0755 /opt/policyd-whois/policyd-whois

echo
echo Now you need to update your postfix configuration and test.
echo
