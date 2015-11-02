module.exports = (robot) ->
  robot.respond /ps/, (msg) ->
    # msg.send msg
    @exec = require('child_process').exec
    command = "sudo docker ps"
    msg.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
