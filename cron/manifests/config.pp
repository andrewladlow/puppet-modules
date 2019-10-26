class cron::config {

  cron { 'puppet agent -t':
    command => 'puppet agent -t',
    user    => 'root',
    minute  => '*/30',
  }
}
