# Headless Chromium + Node for the browser tests and screenshots (no test libraries).
FROM node:22-bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends chromium fonts-dejavu-core \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /work
