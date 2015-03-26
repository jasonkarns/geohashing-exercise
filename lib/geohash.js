var request = require('request');


module.exports = function(lat, lon, callback) {
  var today = new Date();
  var query = 'http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22%5ENDX%22%2C%22INDU%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
  //query.results.quote[0].Open
};
