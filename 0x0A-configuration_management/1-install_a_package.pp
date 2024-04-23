#!/usr/bin/pup
# Install a especific version of flask (2.1.0)
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  creates => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
}
