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

}
