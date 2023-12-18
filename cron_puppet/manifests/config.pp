class cron_puppet::config {

  cron { 'puppet agent -t':
    ensure      => 'present',
    command     => 'puppet agent -t > /dev/null',
    user        => 'root',
    minute      => fqdn_rand(59),
    environment => 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/puppetlabs/bin:/opt/dell/srvadmin/bin:/opt/dell/srvadmin/sbin',
  }
}
