#!/bin/bash

set -ex

cd /
/bin/parity --config /home/parity/config.toml &

cd /maker-deployer

npm install
npm run build
npx run deploy

kill -TERM $(pidof parity)
