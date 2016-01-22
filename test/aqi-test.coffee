chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'aqi', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/aqi')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/aqi in\s+([\w//]*)(?:\s+speak (english|chinese))?/i)
