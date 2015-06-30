# hubot-letthehate

[![NPM][npm-image] ][npm-url]

[![Build status][ci-image] ][ci-url]

[npm-image]:https://nodei.co/npm/hubot-letthehate.png?downloads=true
[npm-url]:https://npmjs.com/package/hubot-letthehate
[ci-image]:https://api.travis-ci.org/peelman/hubot-letthehate.png?branch=master
[ci-url]:https://travis-ci.org/peelman/hubot-letthehate

A hubot script that serves as a conduit for hating things

See [`src/letthehate.coffee`](src/letthehate.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-letthehate --save`

Then add **hubot-letthehate** to your `external-scripts.json`:

```json
[
  "hubot-letthehate"
]
```

## Sample Interaction

```
user1>> man, I hate it when I find a missing comma AFTER I push code...
hubot>> http://i.imgur.com/lH0cWKb.jpg
```
