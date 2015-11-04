module.exports = (robot) ->
  robot.respond /pull/, (msg) ->
    @exec = require('child_process').exec
    command = "sh /home/makky/makky.io/tasks/gitpull.sh"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
    return

  robot.respond /restart/, (msg) ->
    @exec = require('child_process').exec
    command = "sh /home/makky/makky.io/hubot/bin/restart"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
    return

  robot.respond /home/, (msg) ->
    msg.http('http://home.makky.io')
      .path('api/v1/logs')
      .auth('on-the-makky-s-desk', process.env['HOME_IO_PASS'], false)
      .get() (err, res, body) ->
        json = JSON.parse body
        for key, val of json
          msg.send val.location.name

    # @exec = require('child_process').exec
    # command = "curl --user on-the-makky-s-desk:#{process.env['HOME_IO_PASS']} http://home.makky.io/api/v1/logs"
    # msg.send "Command: #{command}"
    # @exec command, (error, stdout, stderr) ->
    #   msg.send error if error?
    #   msg.send stdout if stdout?
    #   msg.send stderr if stderr?
    # return
