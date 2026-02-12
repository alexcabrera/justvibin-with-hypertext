#!/usr/bin/env bash
# Simple local development server

PORT="${PORT:-8000}"

echo "Starting server at http://localhost:$PORT"
echo "Press Ctrl+C to stop"
echo ""

# Try Python 3 first (most common)
if command -v python3 &> /dev/null; then
    python3 -m http.server "$PORT"
# Try Python 2
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer "$PORT"
# Try Node.js serve
elif command -v npx &> /dev/null; then
    npx serve -l "$PORT"
# Try PHP
elif command -v php &> /dev/null; then
    php -S "localhost:$PORT"
else
    echo "Error: No suitable server found."
    echo "Install one of: python3, node, or php"
    exit 1
fi
