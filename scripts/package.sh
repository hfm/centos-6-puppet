#!/bin/sh

set -e

osarch=`uname -i`

# epel
rpm --import "http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/RPM-GPG-KEY-EPEL-6"
rpm -ivh "http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/6/$osarch/epel-release-6-8.noarch.rpm"

# puppet
rpm --import "http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs"
rpm -ivh "http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm"

yum install -y puppet
