class nginx::install {

  package { 'nginx':
    ensure => latest,
  }

}
