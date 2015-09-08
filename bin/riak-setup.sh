#!/usr/bin/env bash

IP_ADDRESS=$(ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

# Ensure correct ownership and permissions on volumes
chown -R riak:riak /var/lib/riak /var/log/riak /etc/riak/riak.conf
chmod -R 755 /var/lib/riak /var/log/riak /etc/riak/riak.conf

# Ensure the Erlang node name is set correctly
sed -i.bak "s/riak@127.0.0.1/riak@${IP_ADDRESS}/" /etc/riak/riak.conf

# rm old ring files before starting
rm -rf /var/lib/riak/ring/*

# Start supervisord
exec /usr/bin/supervisord
