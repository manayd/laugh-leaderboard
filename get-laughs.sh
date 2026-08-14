#!/bin/bash
# One-command export for non-coders.
# Usage: ./get-laughs.sh

set -e
cd "$(dirname "$0")"

echo ""
echo "========================================"
echo "  iMessage Laugh Board — export"
echo "========================================"
echo ""
echo "This reads your local Messages database on this Mac."
echo "Nothing is uploaded. Files stay on your computer."
echo ""

if ! command -v python3 >/dev/null 2>&1; then
  echo "error: python3 not found."
  echo "On a new Mac, open Terminal and run: xcode-select --install"
  echo "Then re-run ./get-laughs.sh"
  exit 1
fi

chmod +x export_laughs.py 2>/dev/null || true
python3 export_laughs.py

echo ""
echo "Open the board with:"
echo "  open index.html"
echo ""
