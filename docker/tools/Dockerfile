# Reverse-engineering toolbox (disassembler + x86 emulator for the reference traces).
# Not needed to build or test the library.
FROM python:3.12-slim
RUN pip install --no-cache-dir capstone==5.0.3 setuptools unicorn==2.1.1
WORKDIR /work
ENTRYPOINT ["python3"]
