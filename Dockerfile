FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y ffmpeg

ENV N8N_ENABLE_EXECUTE_COMMAND=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

USER node
