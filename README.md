hadoop2-64
==========


Hadoop 2.4.1 on x86_64:
-----------------------

* Source:   Apache Hadoop 2.4.1
* Platform: Ubuntu 14.04 x86_64
* Build:    Full distro with Native library for x86_64
* Removed:  Doc, tomcat native source tar, scripts for windows


Directories:
------------

* admin: Hadoop admin scripts, conf templates - currently empty
* bin, sbin: executables
* etc/hadoop: all configurations - they need manual updates, for now.
* lib/native: native libraries (x86_64)
* libexec: config scripts - temparing not required
* share: everything else 


Install Dependencies:
---------------------------

```
$ sudo apt-get install openjdk-7-jdk openjdk-7-jre openjdk-7-jre-lib
```


Setting up Hadoop:
------------------

* create a new group 'hadoop' and a new user 'hduser'
* establish password less login for itself using ssh key
* clone the git repository
```
git clone https://github.com/snehasiss/hadoop2-64.git
```
* change ownership, as appropriate
* setup shell variables for HADOOP_INSTALL HADOOP_CONF_DIR CLASSPATH PATH etc
* update the xml config files - etc/hadoop/{core,hdfs,yarn,mapred}-site.xml
* format namenode
* startup services and test
* read: http://wp.me/puUDW-t if needed


TODO:
-----

* setting up environments (users, group, permissions, directories)
* updating configuration files (per available resources, memory, vcore, etc)
* script for service management (easy start, stop, restart - self-restart?)

__END__
