class teamspeak {

  #Float $teamspeak_version = `wget -q https://www.teamspeak.com/en/downloads.html -O - | grep -m 1 -A 2 'Server 64-bit' | grep -m 1 -E -o '.\..\..{1,2}'`
  $version = '3.9.1'

# Bad
#http://dl.4players.de/ts/releases/3.9.1/teamspeak3-server_linux_amd64-3.9.1.tar.bz2

# Good
#https://files.teamspeak-services.com/releases/server/3.9.1/teamspeak3-server_linux_amd64-3.9.1.tar.bz2

  include teamspeak::install
  include teamspeak::config
  include teamspeak::service

}

