class vim::config {

  file { '/etc/vim/vimrc':
    ensure  => file,
    content => file('vim/vimrc'),
    require => Package['vim'],
  }

  file { '/root/.vim':
    ensure  => directory,
    recurse => remote,
    source  => 'puppet:///modules/vim/vim',
    mode    => '0755',
    require => Package['vim'],
  } 

  # set default editor
  file { '/root/.selected_editor':
    content => file('vim/selected_editor'),
  }
}
