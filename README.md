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
user1>> hubot aqi beijing
hubot>> http://wgt.aqicn.org/aqiwgt/20160129/1MzIwNDMwNLI0NNF3Ss3MysxL10_OAwA.png&ralateUid=&language=cn
```

Output:

[`img/1MzIwNDMwNLI0NNF3Ss3MysxL10_OAwA.png`](img/1MzIwNDMwNLI0NNF3Ss3MysxL10_OAwA.png)

And you can set languange. It have en|cn|jp|es|kr|ru|hk|fr|pl.

``` 
user1>> hubot aqi munich en
hubot>> http://wgt.aqicn.org/aqiwgt/20160129/1MzIwNDMwNLI0MNP3Lc3LTM7QT80DAA.png&ralateUid=&language=en
```

Output:

[`img/1MzIwNDMwNLI0MNP3Lc3LTM7QT80DAA.png`](img/1MzIwNDMwNLI0MNP3Lc3LTM7QT80DAA.png)
