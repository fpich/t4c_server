# Serveur T4C Python (réimplémentation du dépôt) — Debian 13, stdlib pure.
# Aucune dépendance, aucun Wine : c'est le conteneur trivial.
# Build :  docker compose -f compose.python.yaml build
# Run :    docker compose -f compose.python.yaml up -d
FROM debian:trixie-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3 \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /data

COPY t4c/ /opt/t4c-server/t4c/
COPY run_server.py /opt/t4c-server/run_server.py

WORKDIR /opt/t4c-server
VOLUME ["/data"]
EXPOSE 11677/udp

ENTRYPOINT ["python3", "/opt/t4c-server/run_server.py"]
CMD ["--host", "0.0.0.0", "--port", "11677", "--database", "/data/t4c.sqlite3", "--debug"]
