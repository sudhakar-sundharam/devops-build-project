#!/bin/bash
echo "=== Monitoring ==="
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"
curl -s -o /dev/null -w "Site Status: %{http_code}\n" http://localhost:8082
