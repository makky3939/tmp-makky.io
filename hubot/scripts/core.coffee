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

  robot.hear /マジ病み/, (msg) ->
    msg.send ":goat: メェェ "

  robot.hear /疲れた/, (msg) ->
    msg.send ":goat: メェェ "

  robot.respond /df/, (msg) ->
    @exec = require('child_process').exec
    command = "dfs"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
    return
