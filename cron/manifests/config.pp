class cron::config {

  cron { 'puppet agent -t':
    ensure  => 'present',
    command => '/opt/puppetlabs/bin/puppet agent -t',
    user    => 'root',
    minute  => fqdn_rand(59),
  }
}
