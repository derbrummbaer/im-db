############################################################
# Dockerfile zum erstellen eines Dockercontainers für
# adminer
###########################################################

FROM eclipse-mosquitto:1.5.4

# File Author / Maintainer
MAINTAINER Sven Berger


############################################################
# don't ask for stupid things
############################################################

############################################################
# Environment Variables
############################################################

ENV USER admin
ENV PASSWD admin

############################################################
# Update Repository and upgrade Software
############################################################

############################################################
# Konfigure timezone and locale
############################################################

############################################################
# User anlegen
############################################################

############################################################
# HomeVerzeichnis mit Sticky Bit versehen
############################################################

############################################################
# Update Apt and Upgrade Software
############################################################

############################################################
# Remove Apt Data
############################################################

############################################################
# Start Config hinzufügen
############################################################

COPY config/mosquitto.conf /mosquitto.conf

############################################################
# Start Scipt hinzufügen
############################################################

COPY scripte/entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

############################################################
############################################################
# USE CROSS-BUILD for Raspberry PI Images
############################################################
############################################################

############################################################
# Container Start
############################################################

ENTRYPOINT [ "./entrypoint.sh" ]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto.conf"]