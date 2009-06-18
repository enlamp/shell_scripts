#!/bin/sh
#
# CentOS 5 i386 dependencies for basic install
#
#
# Removes sendmail and adds all deps
#
# Removes openssl and installs it again because
# it conflicts with it's own files (?)
#

yum -y remove sendmail 

yum -y install autoconf automake automake17 bzip2 bzip2-devel bzip2-libs compat-gcc-34 compat-gcc-34-c++ compat-glibc compat-glibc-headers compat-libf2c* compat-libgcc* compat-libstdc++-296 compat-libstdc++-33 curl curl-devel expect expect-devel gcc gcc-c++ gdbm gdbm-devel gmp gmp-devel httpd httpd-devel httpd-manual krb5-auth-dialog krb5-devel krb5-libs krb5-workstation libgcc libidn libidn-devel libtool libtool-ltdl libtool-ltdl-devel mysql mysql-bench mysql-devel mysql-server mrtg ncurses-devel ntp openssh openssh-clients openssh-askpass openssh-server openssl openssl-devel pcre pcre-devel perl-Digest-HMAC perl-Digest-SHA1 perl-HTML-Parser perl-libwww-perl perl-Net-DNS php php-ldap php-mysql php-pear redhat-rpm-config rpm rpm-build rpm-devel rpm-libs rpm-python sed setup setuptool stunnel system-config-date wget which zlib zlib-devel
