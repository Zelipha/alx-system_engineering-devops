# Fixing the problem of high amount of requests

# Increase the ULIMIT of the default file
exec {'replace':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  before   => Exec['restart'],
}

exec {'nginx-restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
