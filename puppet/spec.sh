#!/bin/bash

# Super simple wrapper for inspec exec with vagrant config

inspec exec $1 -t ssh://vagrant@127.0.0.1:2222 -i /Users/jhughes/vagrant-centos7/puppet/.vagrant/machines/default/virtualbox/private_key
