request = require 'request'

module.exports = (robot) ->
  robot.hear /温度/, (msg) ->
    request 'http://home.makky.io/api/v1/logs', (res) ->
      msg.send res
