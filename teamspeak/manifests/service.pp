class teamspeak::service {
  service { 'teamspeak': 
    ensure   => 'running',
    enable   => 'true',
    provider => 'systemd',
  }
}
