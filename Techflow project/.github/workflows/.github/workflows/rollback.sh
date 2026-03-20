#!/bin/bash

echo "Rolling back to previous stable version..."

# Stop and remove the broken container
docker stop techflow_app || true
docker rm techflow_app || true

# Run the previous stable image
docker run -d --name techflow_app -p 80:5000 jkairuthi/techflow_app:previous
