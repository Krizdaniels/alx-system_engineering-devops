#!/usr/bin/env bash
# File for manifest.pp

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Configure Nginx server block
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => template('nginx/default.erb'),
  notify  => Service['nginx'],
}

# Create a custom index page
file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Set up a redirect for /redirect_me
nginx::resource::location { 'redirect_me':
  location => '/redirect_me',
  ensure   => present,
  rewrite  => 'https://example.com/new-location permanent',
  require  => Package['nginx'],
}
