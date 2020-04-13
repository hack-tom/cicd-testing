#!/bin/bash
set -e

if [ run ]; then
    export FLASK_APP=app && flask run
fi

exec "$@"