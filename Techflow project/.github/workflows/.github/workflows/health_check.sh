#!/bin/bash

# Check if the app is responding
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" http://localhost)

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "Health check passed"
    exit 0
else
    echo "Health check FAILED with status $STATUS_CODE"
    exit 1
fi
