#!/bin/sh -ex

cd $(dirname $0)

root=$(cd ..; pwd)
PATH="$root:$PATH"

protoc --rust_out . perftest_proto.proto
rustc -L $root perftest.rs
