# Description
#   Hubot script to show Air Quality Index for some city
#
# Configuration:
#   None
#
# Commands:
#   hubot aqi in <city> speak <language> - Show AQI for city.
#
# Notes:
#   This is an experimental script.
#
# Author:
#   ctgnauh <huangtc@outlook.com>

aqicn = require 'aqicn'

labels = {
  en: ['AQI', 'Level', 'Health Implications', 'Cautionary Statement', 'PM2.5', 'PM10', 'O3', 'NO2', 'SO2', 'CO'],
  cn: ['AQI', '等级', '对健康的影响', '建议采取的措施', 'PM2.5', 'PM10', 'O3', 'NO2', 'SO2', 'CO', '更新']
}

module.exports = (robot) ->
  robot.respond /aqi in\s+([\w//]*)(?:\s+speak (english|chinese))?/i, (msg) ->
    city = msg.match[1]
    lang = msg.match[2]
    # console.log msg.match
    if lang == 'chinese'
      lang = 'cn'
    else
      lang = 'en'
    if city
      msg.send "fetching #{city} page. beo beo beo beo beep beep..."
      aqicn.getAQIs city, lang, (err, res) ->
        if err
          msg.send "sorry, there has something wrong..."
        else
          result = [res.aqi, res.level.name, res.level.implication, res.level.statement, res.pm25,
          res.pm10, res.o3, res.no2, res.so2, res.co, res.time]
          message = "#{res.city}\n"
          for label in labels[lang]
            message = "#{message}#{label}: #{result[labels[lang].indexOf label]}\n"
          msg.send message
    else
      msg.send 'sorry, i cannot found it...'
