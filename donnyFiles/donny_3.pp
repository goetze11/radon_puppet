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
    source => "/root/radon_puppet/etc_2/resolv.conf",}   
    
file { '/etc/hostname':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_2/hostname",}
    
file { '/etc/sysconfig/network-scripts/ifcfg-em2':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_3/sysconfig/network-scripts/ifcfg-em2",}

file { '/etc/fstab':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_3/fstab",}
 
file { '/etc/sysconfig/network-scripts/ifcfg-em1':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_3/sysconfig/network-scripts/ifcfg-em1",}   
 
file { '/etc/sysconfig/network-scripts/ifcfg-ib0':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_3/sysconfig/network-scripts/ifcfg-ib0",}

file { '/etc/profile.d/mpi.sh':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_2/profile.d/mpi.sh",}   

file { '/etc/group':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_2/group",}

file { '/etc/gshadow':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "000",
    source => "/root/radon_puppet/etc_3/gshadow",}

file { '/etc/passwd':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/etc_3/passwd",}

file { '/etc/shadow':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "000",
    source => "/root/radon_puppet/etc_3/shadow",}
    
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
    command => 'cd /root/radon_puppet && puppet apply donny_3.pp',
    user    => 'root',
    hour    => '9',
    minute  => '32',}
 
 }
