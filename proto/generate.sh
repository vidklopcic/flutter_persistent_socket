#!/bin/zsh

rm -rf ../lib/proto/*
protoc --dart_out=../lib/proto **/*.proto
git add ../lib/proto