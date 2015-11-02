module.exports = (robot) ->
  robot.respond /hi/, (msg) ->
    msg.send "hi"

  robot.enter (res) ->
    msg.send "enter"

  robot.leave (res) ->
    msg.send "leave"
