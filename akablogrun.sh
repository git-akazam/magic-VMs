#!/bin/bash


PID=$!
echo "update" && cd dutyblog/ && bundle exec jekyll serve & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait








