#!/bin/bash
CGO_ENABLED=0 GOOS=linux GOARCH=$1 go build -ldflags="-s -w"
mv node_exporter node_exporter.$1
upx node_exporter.$1
