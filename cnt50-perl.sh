#!/bin/sh
#
# Install common perl modules used by
# spamassassin-toaster
#
# Nick Hemmesch <nick@ndhsoft.com>
# <http://www.qmailtoaster.com>
# April 14, 2007
#
# Modified by edyliu from xfsuper@gmail.com
# Site: http://www.enlamp.cn
# Test on CentOS series 5.x
# Date: 2009/06/18

rpm -ivh http://download.fedora.redhat.com/pub/epel/5/`uname -i`/epel-release-`cut -d" " /etc/redhat-release -f 3 |awk -F"." '{print $1}'`-`cut -d" " /etc/redhat-release -f 3 |awk -F"." '{print $2}'`.noarch.rpm

yum install -y perl-Archive-Tar 
yum install -y perl-IO-Zlib 
yum install -y perl-Net-DNS
yum install -y perl-Mail-SPF-Query
perl -e 'use CPAN; install MIME::Base64;'
perl -e 'use CPAN; install DB_File;'
perl -e 'use CPAN; install Net::SMTP;'
perl -e 'use CPAN; install Time::HiRes;'
perl -e 'use CPAN; install Mail::DomainKeys;'
