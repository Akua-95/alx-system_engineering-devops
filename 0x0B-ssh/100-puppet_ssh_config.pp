#!/usr/bin/env bash
# using Puppet to make changes to our configuration file

file { '/etc/ssh/ssh_config':
           ensure  => present,
content => "
         #SSH client configuration
         host
             HostName 100.25.137.173
             User ubuntu
             IdentityFile ~/.ssh/school
             PasswordAuthentication no
}
