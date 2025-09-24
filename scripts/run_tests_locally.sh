#!/bin/bash
set -e

export ENV=${1:-dev}
echo "▶️ Running tests against environment: $ENV"

robot --variable ENV:$ENV --outputdir reports tests/