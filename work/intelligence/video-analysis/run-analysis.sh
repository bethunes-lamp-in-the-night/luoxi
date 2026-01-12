#!/bin/bash
# Convenience script to run video analysis with venv
# Automatically activates virtual environment and runs analysis

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV_PYTHON="$SCRIPT_DIR/.venv/bin/python"

# Check if venv exists
if [ ! -f "$VENV_PYTHON" ]; then
    echo "✗ Virtual environment not found!"
    echo ""
    echo "Please run setup first:"
    echo "  ./work/intelligence/video-analysis/setup-gemini.sh"
    exit 1
fi

# Check for API key
if [ -z "$GOOGLE_API_KEY" ]; then
    echo "✗ GOOGLE_API_KEY not set!"
    echo ""
    echo "Please set your API key:"
    echo "  export GOOGLE_API_KEY='your-key-here'"
    echo ""
    echo "Get API key: https://aistudio.google.com/apikey"
    exit 1
fi

# Run analysis with venv Python
echo "Starting video analysis with Gemini 2.5 Flash..."
echo ""
"$VENV_PYTHON" "$SCRIPT_DIR/analyze-videos-gemini.py"
