module.exports = (robot) ->
  robot.router.get "/version", (req, res) ->
    res.end robot.version

  robot.router.post "/docker", (req, res) ->
    robot.send {room: 'general'}, req
    res.end req
