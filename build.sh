#!/bin/bash
CGO_ENABLED=0 go build -ldflags "-X main.version $(git describe --tags --long)" -a -v
upx --lzma ./kirisurf
