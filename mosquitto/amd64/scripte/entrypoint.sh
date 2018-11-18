#!/bin/ash
set -e

echo "Version: 0.02"
echo "Benutzername: " $USER
echo "Password:     " $PASSWD

echo "Passwort erstellen"
touch /tmp/passwd
mosquitto_passwd -b /tmp/passwd "$USER" "$PASSWD"
cat /tmp/passwd     
cat /tmp/passwd > /mosquitto/data/passwd

echo "Passwort erstellt, start Mosquitto"

exec "$@"