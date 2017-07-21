node "radoni.llnl.gov" {

file { '/etc/hosts':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/hosts",}  

file { '/etc/resolv.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/resolv.conf",}   
    
file { '/etc/hostname':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/hostname",}
    
file { '/etc/sysconfig/network-scripts/ifcfg-em2':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/sysconfig/network-scripts/ifcfg-em2",}

file { '/etc/fstab':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/fstab",}
    
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
    source => "/root/radon_puppet/etc/vsftpd/vsftpd.conf",}


file { '/etc/sysconfig/network-scripts/ifcfg-em1':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/sysconfig/network-scripts/ifcfg-em1",}   
    
file { '/etc/dhcp/dhcpd.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/dhcp/dhcpd.conf",}
    

file { '/etc/xinetd.d/tftp':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",    source => "/root/radon_puppet/etc/xinetd.d/tftp",}
    
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
    source => "/root/radon_puppet/etc/sysconfig/iptables",}

file { '/etc/sysconfig/network-scripts/ifcfg-ib1':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/sysconfig/network-scripts/ifcfg-ib1",}

file { '/etc/profile.d/mpi.sh':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/profile.d/mpi.sh",}   

file { '/etc/exports':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/exports",}
    
 file { '/etc/group':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/group",}

file { '/etc/gshadow':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "000",
    source => "/root/radon_puppet/etc/gshadow",}

file { '/etc/passwd':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/passwd",}

file { '/etc/shadow':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "000",
    source => "/root/radon_puppet/etc/shadow",}
    
file { '/etc/slurm/slurm.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc/slurm/slurm.conf",}

cron {'gitPull':
    command => 'cd /root/radon_puppet && git pull',
    user    => 'root',
    hour    => '7',
    minute  => '00',}

cron {'puppetApply':
    command => 'cd /root/radon_puppet && puppet apply donny.pp',
    user    => 'root',
    hour    => '7',
    minute  => '01',}
 
 }
