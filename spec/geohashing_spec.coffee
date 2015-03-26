geohash = require "./../lib/geohash.js"

describe "GeoHashing Lib E2E test", ->

  When (done) ->
    geohash "37.421542", "-122.085589", (result) =>
      @result = result
      done()

  Then ->
    # { lat : '37.390481682527257200', lon : '-122.414098619598641500' }.
    expect(~~@result.lat).toEqual(37)
    expect(~~@result.lon).toEqual(-122)

