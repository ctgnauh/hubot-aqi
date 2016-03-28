# Description
#   Hubot script to show Air Quality Index for some city
#
# Configuration:
#   None
#
# Commands:
#   hubot aqi <city> <language> - Show AQI for city.
#
# Notes:
#   This is an experimental script.
#
# Author:
#   ctgnauh <huangtc@outlook.com>

module.exports = (robot) ->

  robot.respond /aqi\s+([\w//]*)(?:\s+(en|cn|jp|kr|fr|pl|hk|ru|es))?/i, (msg) ->
    city = msg.match[1]
    lang = msg.match[2]
    if not lang
      lang = 'cn'
    if city
      robot.http("http://aqicn.org/city/#{city}/#{lang}/m/").get() (err, res, body) ->
        imageURL = body.match /(http:\/\/wgt.aqicn.org\/aqiwgt\/\d+\/[a-zA-Z0-9_-]+.png)/i
        if imageURL.length > 0
          msg.send "#{imageURL[0]}&ralateUid=&language=#{lang}"
        else
          msg.send "sorry, there has something wrong..."
    else
      msg.send 'please give me a city.'
