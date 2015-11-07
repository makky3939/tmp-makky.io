module.exports = (robot) ->
  robot.router.get "/version", (req, res) ->
    res.end robot.version

  robot.router.post /\/container\/(.*)/, (req, res) ->
    console.log req.originalUrl.split("/")
    robot.send {room: 'general'}, req.originalUrl.split("/")[2]
    res.end 200
