class cron::config {

  cron { 'puppet agent -t':
    command => '/opt/puppetlabs/bin/puppet agent -t',
    user    => 'root',
    minute  => fqdn_rand(59),
  }
}
