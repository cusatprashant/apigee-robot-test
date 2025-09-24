#!/bin/bash
set -e

ENV=${1:-dev}
SWAGGER_URL="https://$ENV-api.yourcompany.com/v3/api-docs"

echo "📥 Downloading Swagger spec from $SWAGGER_URL..."
curl -sfL "$SWAGGER_URL" -o config/swagger/api-spec.yaml

echo "✅ Swagger spec updated successfully."