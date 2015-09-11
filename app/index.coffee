fs = require 'fs'
Promise = require 'bluebird'

Fs = Promise.promisifyAll fs

module.exports = () ->

  Fs.readFileAsync 'test.json', 'utf-8'
    .then (contents) ->
      console.log contents
    .catch (ele) ->
      console.log ele.stac