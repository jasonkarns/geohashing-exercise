api = require "../api.js"
request = require "supertest"

describe "/geohash", ->
  Given -> @api = request(api)

  When -> @req = @api.get('http://127.0.0.1:8000/geohash?lat=37.421542&lon=-122.085589')

  Then (done) ->
      @req.expect({ lat : '37.494306175276221060', lon : '-122.928944044718859400' }, done)
