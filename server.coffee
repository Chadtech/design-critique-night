fs          = require 'fs'
express     = require 'express'
app         = express()
http        = require 'http'
{join}      = require 'path'
bodyParser  = require 'body-parser'
exec        = require('child_process').exec


app.use bodyParser.json()
app.use bodyParser({limit: '50mb'})
app.use bodyParser.urlencoded {extended: true}

PORT = Number process.env.PORT or 2013

app.use express.static join __dirname, 'public'

app.get '/', (request, response, next) ->
  indexPage = join __dirname, 'public/index.html'
  response.status 200
    .sendFile indexPage

httpServer = http.createServer app

httpServer.listen PORT, ->
  console.log 'SERVER RUNNING ON ' + PORT