#!/bin/sh

echo "$RESTIC_PASSWORD" > $RESTIC_PASSWORD_FILE

echo "This container is designed to run indefinitely for later executions."
echo "Place your rclone configuration in $RCLONE_CONF_DIR/rclone.conf"

# this is needed because root ssh won't be allow until password is set
rootpass=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 64)
echo "root:$passwd" | chpasswd

/usr/sbin/sshd

while true then; do
    sleep 60
done
