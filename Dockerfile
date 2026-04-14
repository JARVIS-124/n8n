FROM n8nio/n8n:latest

USER root

# safer install
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

ENV N8N_ENABLE_EXECUTE_COMMAND=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

USER node
