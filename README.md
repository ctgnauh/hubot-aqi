# hubot-aqi

Hubot script to show Air Quality Index for some city

See [`src/aqi.coffee`](src/aqi.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-aqi --save`

Then add **hubot-aqi** to your `external-scripts.json`:

```json
[
  "hubot-aqi"
]
```

## Sample Interaction

```
user1>> hubot aqi in beijing
hubot>> beijing
AQI: 212
Level: Very Unhealthy
Health Implications: Health warnings of emergency conditions. The entire population is more likely to be affected.
Cautionary Statement: Active children and adults, and people with respiratory disease, such as asthma, should avoid all outdoor exertion; everyone else, especially children, should limit outdoor exertion.
PM2.5: 212
PM10: 95
O3: 4
NO2: 37
SO2: 14
CO: 28
Updated on 2016-01-21T21:00:00+09:00
```

Or you can change languange. But current only English and Chinese.

``` javascript
user1>> hubot aqi in taipei speak chinese
hubot>> taipei
AQI: 53
等级: 良
对健康的影响: 空气质量可接受，但某些污染物可能对极少数异常敏感人群健康有较弱影响
建议采取的措施: 极少数异常敏感人群应减少户外活动
PM2.5: 53
PM10: 5
O3: 33
NO2: 6
SO2: 3
CO: 2
更新: 2016-01-23T01:00:00+09:00
```

