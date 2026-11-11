# Headless Ghidra for decompiling the 16-bit NE code segment.
FROM eclipse-temurin:21-jdk
RUN apt-get update && apt-get install -y --no-install-recommends unzip curl && rm -rf /var/lib/apt/lists/*
ARG GHIDRA_URL=https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.2.1_build/ghidra_11.2.1_PUBLIC_20241105.zip
RUN curl -fsSL -o /tmp/g.zip "$GHIDRA_URL" && unzip -q /tmp/g.zip -d /opt && rm /tmp/g.zip && ln -s /opt/ghidra_* /opt/ghidra
WORKDIR /work
ENTRYPOINT ["/opt/ghidra/support/analyzeHeadless"]
