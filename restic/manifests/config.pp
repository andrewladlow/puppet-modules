class restic::config { 
  file { '/root/restic-excludes.txt':
    ensure  => file,
    content => file('restic/restic-excludes.txt'),
  }
}

