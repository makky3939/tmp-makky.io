module.exports = (robot) ->
  robot.respond /home/, (msg) ->
    msg.http('http://home.makky.io')
      .path('api/v1/logs')
      .auth('on-the-makky-s-desk', process.env['HOME_IO_PASS'], false)
      .get() (err, res, body) ->
        json = JSON.parse body
        for key, val of json
          msg.send ">#{val.location.name}"
          msg.send "温度: #{val.temperature.value}℃, 湿度: #{val.humidity.value}%, 気圧: #{val.atmosphere.value}hPa"
