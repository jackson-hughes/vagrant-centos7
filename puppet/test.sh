#!/bin/bash

# Bring up test VM - Vagrantfile takes care of puppet bootstrap
vagrant up

# Execute test suite
inspec exec $1 -t ssh://vagrant@127.0.0.1:2222 -i /Users/jhughes/vagrant-centos7/puppet/.vagrant/machines/default/virtualbox/private_key

# Cleanup and remove environment
vagrant destroy -f
