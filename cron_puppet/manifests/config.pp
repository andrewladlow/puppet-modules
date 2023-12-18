class cron_puppet::config {

  cron { 'puppet agent -t':
    ensure  => 'present',
    command => 'puppet agent -t',
    user    => 'root',
    minute  => fqdn_rand(59),
  }
}
