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

  robot.respond /aqi in\s+([\w//]*)(?:\s+(en|cn|jp|kr|fr|pl|hk|ru|es))?/i, (msg) ->
    city = msg.match[1]
    lang = msg.match[2]
    if not lang
      lang = 'cn'
    if city
      robot.http("http://aqicn.org/city/#{city}/#{lang}/m/").get() (err, res, body) ->
        imageURL = body.match /(http:\/\/wgt.aqicn.org\/aqiwgt\/\d+\/[a-zA-Z0-9_]+.png)/i
        if imageURL.length > 0
          msg.send "#{imageURL[0]}&ralateUid=&language=#{lang}"
        else
          msg.send "sorry, there has something wrong..."
    else
      msg.send 'please give me a city.'
