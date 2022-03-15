# SSH configuration file to connect to server without password

exec { "echo":
  path => "/usr/bin/",
  command => 'echo "IdentityFile ~/.ssh/school  PassworwordAuthentication  no"'
}
