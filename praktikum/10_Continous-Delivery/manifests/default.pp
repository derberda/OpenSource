file { '/etc/motd':
content => "Welcome to your Vagrant-built virtual machine! Managed by Puppet.\n"
}

package { "apache2":
ensure => present
}

exec { "apt-get update":
path => "/usr/bin",
}

service { "apache2":
ensure => "running",
require => Package["apache2"]
}

 file { '/var/www/index.html':
   ensure => 'link',
   target => '/vagrant/index.html',
   require => Package["apache2"],
   notify => Service["apache2"],
}