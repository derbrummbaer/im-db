#!/bin/ash
set -e


echo "Benutzername: " $USER
echo "Password:     " $PASSWD

exec "$@"