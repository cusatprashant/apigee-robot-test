#!/bin/bash
set -e

echo "🚀 Applying Kubernetes Job..."
kubectl apply -f k8s-test-job.yaml

echo "⏳ Waiting for job to complete..."
kubectl wait --for=condition=complete --timeout=300s job/apigee-api-tests

echo "📄 Fetching logs..."
kubectl logs job/apigee-api-tests

echo "🧹 Cleaning up job..."
kubectl delete job apigee-api-tests --ignore-not-found=true