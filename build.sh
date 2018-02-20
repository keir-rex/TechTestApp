#!/bin/sh

if [ -d "dist" ]; then
    rm -rf dist
fi

mkdir -p dist

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .

cp TechTestApp dist/
cp -r assets dist/
cp conf.toml dist/

rm TechTestApp

docker build -t="techtest" .
