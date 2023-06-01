#!/bin/bash

set -eu

echo "=> Ensure permissions"
chown -R cloudron:cloudron /app/data

echo "=> Starting ctfreak server"
exec gosu cloudron:cloudron /app/code/ctfreak -c /app/data run

