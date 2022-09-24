#!/usr/bin/env bash

set -e

cd lib

rustdoc --crate-name nanopub_rs src/lib.rs -o docs/target/doc -L dependency=docs/target/debug/deps

python3 -m webbrowser ./docs/target/doc/nanopub_rs/index.html

# file:///home/vemonet/develop/perso/nanopub-rs/lib/docs/target/doc/nanopub_rs/index.html


mdbook serve docs --dest-dir target/book --open
