#!/bin/bash


### steps ###
# check or create /hdfs and check permission
# create ssh keys and add to authorized keys
# create or update .ssh/config to disable known_hosts check

# get the home dir
home=$(getent passwd hadoop |awk -F":" '{print $6}')

# exit if does not exist
[ -d $home ] || exit 11

# set pwd to home
cd

# generate ssh keys
ssh-keygen -t rsa -P ""

# set authorized keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
ln -s ~/.ssh/authorized_keys ~/.ssh/authorized_keys2

# update the ssh/config file
cat > ~/.ssh/config <<END 
Host *
  StrictHostkeyChecking no
END
  
# test
ssh $user@localhost date

# setup the hdfs directories
mkdir -p ~/hdfs/{name,data,tmp}

### end ###
