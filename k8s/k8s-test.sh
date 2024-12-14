#!/bin/bash

echo "Test start"

for i in {1..100}; do
  curl -s http://localhost:8080 | grep -o 'my-app-[^ ]*'  # pod 이름만 추출
done | sort | uniq -c | sort -nr

echo "Test done"
