class nginx::config {

  # Disable server tokens - requires stdlib
  file_line { '/etc/nginx/nginx.conf':
    ensure  => present,
    path    => '/etc/nginx/nginx.conf',
    line    => '	server_tokens off;',
    match   => '	# server_tokens off;',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

}
