#!/bin/bash
redis-cli -h 127.0.0.1 -p 6380 --cluster create 127.0.0.1:6380 127.0.0.1:6381 127.0.0.1:6382
