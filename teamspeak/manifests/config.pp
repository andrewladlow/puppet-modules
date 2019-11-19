class teamspeak::config {

  user { 'teamspeak':
    ensure => present,
    system => 'yes', 
    shell  => '/bin/false',
  }

  file { '/opt/teamspeak3/.ts3server_license_accepted':
    ensure => present,
  }

  file { '/etc/systemd/system/teamspeak.service':
    content => file('teamspeak/teamspeak.service'),
    notify  => Service['teamspeak'],
  }
}
