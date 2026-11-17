#!/bin/bash
echo "Stopping old container..."
docker compose down
echo "Building and Starting..."
docker compose up -d --build
echo "Deployed! Check: http://localhost:8080"
docker ps