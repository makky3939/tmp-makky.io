module.exports = (robot) ->
  robot.router.get "/version", (req, res) ->
    res.end robot.version

  robot.router.post /\/container\/(.*)/, (req, res) ->
    console.log res
    robot.send {room: 'general'}, "aaa"
    res.end 200
