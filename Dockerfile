FROM debian:bookworm-slim
COPY config/lldpd.conf /etc/lldpd.conf
RUN apt-get update && apt-get install -y --no-install-recommends lldpd&& rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["lldpd", "-dd", "-l"]
