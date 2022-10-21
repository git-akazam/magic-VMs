#!/bin/bash


echo "removeneed" && sudo apt-get install ruby-full & sleep 1 &
wait $PID
echo "Process 0 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && gem install jekyll bundler & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && jekyll new dutyblog & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait

PID=$!
echo "update" && cd dutyblog/ && bundle add webrick && bundle exec jekyll serve & sleep 1 &
wait $!
echo "Process 1 ended at time $(date +%T) with exit status $?"
wait








