class restic::config { 
  file { '/root/restic-excludes.txt':
    ensure  => file,
    content => file('restic/restic-excludes.txt'),
  }

  file { '/etc/cron.daily/restic':
    ensure  => file,
    content => file('restic/cron_daily-restic'),
  }
}

