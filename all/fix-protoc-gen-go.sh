#!/usr/bin/env sh

if [ -z $1 ]; then
    echo "You must specify a protoc-gen-go version."
    exit 1
fi


GIT_TAG="$1" # change as needed
go get -d -u github.com/golang/protobuf/protoc-gen-go
git -C "$(go env GOPATH)"/src/github.com/golang/protobuf checkout $GIT_TAG
go install github.com/golang/protobuf/protoc-gen-go