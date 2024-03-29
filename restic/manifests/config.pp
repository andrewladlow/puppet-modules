class restic::config {

  $restic_repo_pass = lookup('restic_repo_pass')

  file { '/root/restic-excludes.txt':
    ensure  => file,
    content => file('restic/restic-excludes.txt'),
  }

  file { '/etc/cron.daily/restic':
    ensure  => file,
    mode    => '0755',
    replace => yes,
    content => template('restic/cron_daily-restic'),
  }

  exec { 'Update Restic':
    command  => 'restic self-update',
    path     => '/usr/local/bin/:/usr/bin/:/bin/',
    # Compare current version number with latest from repo to determine whether to update or not
    onlyif   => '[ "$(curl -s https://api.github.com/repos/restic/restic/releases/latest | grep "tag_name" | grep -oE "([0-9]{1,2}\.?)+")" != "$(restic version | cut -f 2 -d " ")" ]'
  }
}

