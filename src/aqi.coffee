# Description
#   Hubot script to show Air Quality Index for some city
#
# Configuration:
#   None
#
# Commands:
#   hubot aqi in <city> - Show AQI for city.
#
# Notes:
#   This is an experimental script.
#
# Author:
#   ctgnauh <huangtc@outlook.com>

aqicn = require 'aqicn'

module.exports = (robot) ->
  robot.respond /aqi in (.*)/i, (msg) ->
    city = msg.match[1]
    aqicn.getAQIs city, 'en', (err, res) ->
      if err
        msg.send "sorry, there has something wrong..."
      else
        msg.send "#{res.city} AQI: #{res.aqi}\nLevel: #{res.level.name}\nHealth Implications: #{res.level.implication}\nCautionary Statement(for PM2.5): #{res.level.statement}\nPM2.5: #{res.pm25}\nPM10: #{res.pm10}\nO3: #{res.o3}\nNO2: #{res.no2}\nSO2: #{res.so2}\nCO: #{res.co}\nUpdated on #{res.time}"
