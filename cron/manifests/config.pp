class cron::config {

  cron { 'puppet agent -t':
    command => 'puppet agent -t',
    user    => 'root',
    minute  => fqdn_rand(59),
  }
}
