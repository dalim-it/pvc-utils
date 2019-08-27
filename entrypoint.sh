#!/bin/sh

echo "$RESTIC_PASSWORD" > $RESTIC_PASSWORD_FILE

echo "This container is designed to run indefinitely for later executions."
echo "Place your rclone configuration in $RCLONE_CONF_DIR/rclone.conf"

while true then; do
    sleep 60
done
