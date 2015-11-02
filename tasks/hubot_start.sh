#!/bin/sh

set -e

npm install
export PATH="hubot/node_modules/.bin:node_modules/hubot/node_modules/.bin:$PATH"

# exec node_modules/.bin/hubot --name "bot" "$@"
forever start --uid "hubot" -c coffee node_modules/.bin/hubot --adapter \slack
