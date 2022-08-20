class mysqldump::config {

  file { '/etc/cron.daily/mysqldump':
    ensure  => file,
    mode    => '0755',
    replace => yes,
    content => file('mysqldump/cron_daily-mysqldump'),
  }

}

