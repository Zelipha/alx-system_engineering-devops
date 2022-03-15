# SSH configuration file to connect to server without password

exec { "echo":
  path => "usr/bin:/bin",
  command => 'echo "    IdentityFile ~/.ssh/school\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
  returns => [0,1],
}
