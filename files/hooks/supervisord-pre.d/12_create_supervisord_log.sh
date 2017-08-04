#!/bin/sh
# Create supervisord log directory if it does not exist.

if [ ! -d "/var/log/supervisor" ]; then
  mkdir /var/log/supervisor/
fi

# Create supervisord log file if it doesn't exist.

if [ ! -f "/var/log/supervisor/supervisord.log" ]; then
  touch /var/log/supervisor/supervisord.log
fi

# Ensure the correct ownership and permissions for /var/log.

chown root:syslog /var/log

chmod 770 /var/log
