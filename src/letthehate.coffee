# Description
#   A hubot script that serves as a conduit for hating things
#
# Commands:
#   (let the hate) - responds with image
#
# Author:
#   Nick Peelman <nick@peelman.us>

module.exports = (robot) ->
  robot.hear /i hate|i( really)? .* hate/i, (msg) ->
    msg.send('http://i.imgur.com/lH0cWKb.jpg')


