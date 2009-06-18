#!/bin/sh
#
# Download current qmailtoaster packages
# Query Server for current list

# Jake Vickers <jake@qmailtoaster.com>
# Feb 3, 2009
# Edited the script to reflect different download paths now that I have taken project over.

#
# Erik A. Espinoza <espinoza@forcenetworks.com>
# July 22, 2005
# List queried from server
#

# Edy.liu < xfsuper@gmail.com>
# Modified 2009/06/18
# get the lastest files from qmail server. 

QT_BRANCH=stable
QT_LIST="http://www.qmailtoaster.com/info/current.txt"
QT_PACKAGES=`wget -U "Mozilla/5.0" -q -O - ${QT_LIST}`

# If list is unavailable, quit
if [ -z "${QT_PACKAGES}" ] ; then
   echo "Package List unavailable, please check your connection and try again"
   exit 1
fi

# If list is availalbe, start the download
for SRPMS in ${QT_PACKAGES} ; do
    echo "Downloading ${SRPMS}"
    if [ -f ${SRPMS} ]; then
        echo "It is here"
    else 
        wget http://www.qmailtoaster.com/download/${QT_BRANCH}/${SRPMS}
        echo ""
        sleep 4
    fi 
done

exit 0
