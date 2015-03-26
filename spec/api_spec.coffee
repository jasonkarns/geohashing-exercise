api = require "../api.js"
request = require "superagent"

describe "/geohash", ->
  Given -> @agent = request.agent()

  Then (done) ->
    @agent
      .get('http://127.0.0.1:8000/geohash?lat=37.421542&lon=-122.085589')
      .end (err, res) ->
        expect(res.body).toEqual({ lat : '37.494306175276221060', lon : '-122.928944044718859400' })
        done()


