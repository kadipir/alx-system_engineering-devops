# increase the amount of traffic an nginx server can handle
# increase the ULIMIT of the default file

exec{'fix--for-nginx'
  #modify the ULIMIT value
  command => '/bin/sed -i "s/15/4096" /etc/default/nginx',
  path => '/usr/local/bin/:bin/',
}
# Restart nginx
exec{'nginx-restart'
  #Restart nginx service
  command => '/etc/init.d/nginx restart',
  #specify the path for the init.d script
  path => '/etc/init.d/',
}
