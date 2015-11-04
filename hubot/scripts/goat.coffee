request = require 'request'

module.exports = (robot) ->
  robot.respond /home/, (msg) ->
  _msg = msg
  request
    .get('http://home.makky.io/api/v1/logs', (e, r, c) ->
      _msg.send c
    )
    .auth('on-the-makky-s-desk', process.env['HOME_IO_PASS'], false)
