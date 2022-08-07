class bash_prompt::config { 
  
  $ssh_config = lookup('ssh_config')

  file { '/etc/bash.bashrc':
    ensure  => file,
    content => file('bash_prompt/bashrc'),
  }

  $homedir = $facts['identity']['user'] ? {
    'root'  => '/root',
  } 

  file { "local .bashrc":
    ensure  => file,
    content => file('bash_prompt/bashrc'),
    path    => "${homedir}/.bashrc",
  }

  file { '/etc/screen.screenrc':
    ensure  => file,
    content => file('bash_prompt/screenrc'),
  }

  file { '/root/.ssh/config':
    ensure => file,
    replace => yes,
    content => $ssh_config,
  }
}

