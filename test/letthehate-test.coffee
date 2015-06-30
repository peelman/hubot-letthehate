chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'letthehate', ->
  user =
    name: 'user'
    id: 'U123'
  robot =
    respond: sinon.spy()
    hear: sinon.spy()
    brain:
      on: (_, cb) ->
        cb()
      data: {}
      userForName: (who) ->
        forName =
          name: who
          id: 'U234'

  beforeEach ->
    @user = user
    @robot = robot
    @data = @robot.brain.data
    @msg =
      send: sinon.spy()
      reply: sinon.spy()
      envelope:
        user:
          @user
      message:
        user:
          @user

    require('../src/letthehate')(@robot)

  it 'listens for "i hate in various forms"', ->
    expect(@robot.hear).to.have.been.calledWith(/i hate|i( really)? .* hate/i)

  it 'responds to "i <text> hate"', ->
    utb = @robot.hear.firstCall.args[1]
    utb(@msg)
    expect(@msg.send).to.have.been.calledWithMatch("http://i.imgur.com/lH0cWKb.jpg")
