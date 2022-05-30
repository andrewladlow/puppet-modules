class restic::install {

  package { 'restic':
    ensure => latest,
  }

}
