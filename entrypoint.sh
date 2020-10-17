#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

mkdir -p "$PGDATA"
    chmod 700 "$PGDATA"
    chown -R postgres "$PGDATA"

    chmod g+s /run/postgresql
    chown -R postgres /run/postgresql
