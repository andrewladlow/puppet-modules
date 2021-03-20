class bash_prompt::config { 
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
}

