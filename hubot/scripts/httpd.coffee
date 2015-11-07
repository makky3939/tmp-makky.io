module.exports = (robot) ->
  robot.router.get "/version", (req, res) ->
    res.end robot.version

  robot.router.post /\/container\/(.*)/, (req, res) ->
    console.log req.originalUrl
    robot.send {room: 'general'}, req.originalUrl
    res.end 200
