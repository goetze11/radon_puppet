node "radoni.llnl.gov" {

file { '/etc/hosts':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/hosts",}
    

file { '/etc/resolv.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    source => "/root/radon_puppet/resolv.conf",}   
    
cron {'gitPull':
    command => 'cd /root/radon_puppet && git pull',
    user    => 'root',
    hour    => '7',
    minute  => '00',
}

cron {'puppetApply':
    command => 'cd /root/radon_puppet && puppet apply donny.pp',
    user    => 'root',
    hour    => '7',
    minute  => '01',
 }
