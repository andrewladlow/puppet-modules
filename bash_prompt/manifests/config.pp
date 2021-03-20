class bash_prompt::config { 
  file { '/etc/bash.bashrc':
    ensure  => file,
    content => file('bash_prompt/bashrc'),
  }

  file { '/etc/screen.screenrc':
    ensure  => file,
    content => file('bash_prompt/screenrc'),
  }

  file { '~/.bash_aliases':
    ensure  => file,
    content => file('bash_prompt/bash_aliases'),
  }
}

