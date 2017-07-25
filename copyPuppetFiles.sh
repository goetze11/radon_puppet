#!/bin/bash
folderNum=11
mkdir ~/radon_puppet/etc_$folderNum/sysconfig
mkdir ~/radon_puppet/etc_$folderNum/sysconfig/network-scripts
cp /etc/fstab ~/radon_puppet/etc_$folderNum
cp /etc/group ~/radon_puppet/etc_$folderNum
cp /etc/passwd ~/radon_puppet/etc_$folderNum
cp /etc/sysconfig/network-scripts/ifcfg-ib0 ~/radon_puppet/etc_$folderNum/sysconfig/network-scripts
cp /etc/sysconfig/network-scripts/ifcfg-em1 ~/radon_puppet/etc_$folderNum/sysconfig/network-scripts
cp /etc/sysconfig/network-scripts/ifcfg-em2 ~/radon_puppet/etc_$folderNum/sysconfig/network-scripts
