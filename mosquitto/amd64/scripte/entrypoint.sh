#!/bin/bash
set -e


echo "Benutzername: " $USER
echo "Password:     " $PASSWD

exec "$@"