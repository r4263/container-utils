FROM alpine:latest
# Uncomment the line below to use with Debian(or edit and choose your own distro);
#FROM debian:latest

# Project's specific environment variables
ENV CONTENT-EQ=""
ENV CONTENT-SEP=""

WORKDIR /opt

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]