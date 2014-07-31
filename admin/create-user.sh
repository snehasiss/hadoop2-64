#!/bin/bash


### steps ###
# create group if not available
# create user if not available
# set password for the new user
# (switch to the new user)
# create ssh keys and add to authorized keys
# create or update .ssh/config to disable known_hosts check
# check or create /hdfs and check permission

# variables
user="hduser"
group="hadoop"
home="/hdfs"

# commands
GROUPADD=$(which groupadd) || exit 11;
USERADD=$(which useradd)   || exit 12;

# create group, if not exists
getent group $group 1>&2 2>/dev/null || $GROUPADD $group

# create user, if not exists
if [ ! $(getent passwd $user) ]; then
  $USERADD -g $group -c 'hadoop user' -s /bin/bash -d $home $user -m 2>/dev/null || exit 13
fi

# set password
echo "$user:changeitnow" | chpasswd 

### end ###
