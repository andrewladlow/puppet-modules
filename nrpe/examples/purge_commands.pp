# Purging unmanaged NRPE checks

class { 'nrpe':
  allowed_hosts => ['127.0.0.1'],
  purge         => true,
}

nrpe::command { 'check_users':
  command => 'check_users -w 5 -c 10',
}
