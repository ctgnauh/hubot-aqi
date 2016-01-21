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
hubot>> beijing AQI: 212
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
