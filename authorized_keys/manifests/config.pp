class authorized_keys::config { 
  
  $authorized_keys = lookup('authorized_keys')

  file { '/root/.ssh/authorized_keys':
    ensure  => file,
    mode    => '0600',
    replace => yes,
    content => template('authorized_keys/root_ssh_authorized-keys'),
  }

}

