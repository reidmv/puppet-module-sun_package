define sun_package (
  $source_url,
) {
  require sun_package::base

  $pkgfile = "/var/adm/puppet/${title}.pkg"

  remote_file { $pkgfile:
    ensure => latest,
    source => $source_url,
  }

  package { $title:
    ensure    => latest,
    source    => $pkgfile,
    adminfile => '/var/adm/puppet/adminfile-noask',
    require   => Remote_file[$pkgfile],
  }

}

