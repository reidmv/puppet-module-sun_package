class sun_package::base {

  file { '/var/adm/puppet':
    ensure => directory,
    owner  => '0',
    group  => '0',
    mode   => '0755',
  }

  file { '/var/adm/puppet/adminfile-noask':
    ensure => file,
    source => 'puppet:///kaiser/sun_package/adminfile',
  }

}

