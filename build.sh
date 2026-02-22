#!/usr/bin/env bash
# Build script for deployment (Render, Railway, etc.)
# This runs during the build/release phase before the server starts.

set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py collectstatic --noinput
python manage.py migrate --noinput

echo "Build complete - migrations applied."
