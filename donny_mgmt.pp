node "radoni.llnl.gov" {

file { '/etc/hosts':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/hosts",}  

file { '/etc/resolv.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/resolv.conf",}   
    
file { '/etc/hostname':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/hostname",}
    
file { '/etc/sysconfig/network-scripts/ifcfg-em2':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/sysconfig/network-scripts/ifcfg-em2",}

file { '/etc/fstab':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/fstab",}
    
file { '/tftpboot/pxelinux.cfg/default':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/tftpboot/pxelinux.cfg/default",}
    
file { '/etc/vsftpd/vsftpd.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "600",
    source => "/root/radon_puppet/etc_mgmt/vsftpd/vsftpd.conf",}


file { '/etc/sysconfig/network-scripts/ifcfg-em1':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/sysconfig/network-scripts/ifcfg-em1",}   
    
file { '/etc/dhcp/dhcpd.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/dhcp/dhcpd.conf",}
    

file { '/etc/xinetd.d/tftp':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",    source => "/root/radon_puppet/etc_mgmt/xinetd.d/tftp",}
    
file { '/tftpboot/ftp/pub/anaconda/ks.cfg':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/tftpboot/ftp/pub/anaconda/ks.cfg",}

file { '/etc/sysconfig/iptables':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "600",
    source => "/root/radon_puppet/etc_mgmt/sysconfig/iptables",}

file { '/etc/sysconfig/network-scripts/ifcfg-ib1':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/sysconfig/network-scripts/ifcfg-ib1",}

file { '/etc/profile.d/mpi.sh':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/profile.d/mpi.sh",}   

file { '/etc/exports':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/exports",}
    
 file { '/etc/group':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/group",}

file { '/etc/gshadow':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "000",
    source => "/root/radon_puppet/etc_mgmt/gshadow",}

file { '/etc/passwd':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/passwd",}

file { '/etc/shadow':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "000",
    source => "/root/radon_puppet/etc_mgmt/shadow",}
    
file { '/etc/slurm/slurm.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_mgmt/slurm/slurm.conf",}

cron {'gitPull':
    command => 'cd /root/radon_puppet && git pull',
    user    => 'root',
    hour    => '9',
    minute  => '31',}

cron {'puppetApply':
    command => 'cd /root/radon_puppet && puppet apply donny_mgmt.pp',
    user    => 'root',
    hour    => '9',
    minute  => '32',}
 
 }
