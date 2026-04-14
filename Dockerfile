FROM n8nio/n8n:latest

USER root

# Use Alpine package manager (apk, not apt-get)
RUN apk update && \
    apk add --no-cache ffmpeg

ENV N8N_ENABLE_EXECUTE_COMMAND=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

USER node
