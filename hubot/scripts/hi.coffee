module.exports = (robot) ->
  robot.respond /hi/, (msg) ->
    msg.send "hi"
