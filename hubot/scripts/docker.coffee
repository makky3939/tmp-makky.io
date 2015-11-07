module.exports = (robot) ->
  robot.respond /ps/, (msg) ->
    @exec = require('child_process').exec
    command = "docker ps | awk '{print $1, $(NF-1), $(NF)}'"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?

  robot.respond /docker deploy (.*)/, (msg) ->
    msg.send "docker deploy #{msg.match[1]}"
