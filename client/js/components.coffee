React  = require 'react'


# DOM Elements
{p, div, input} = React.DOM


module.exports =

  Column: (content) ->
    div className: 'column',
      content

  Point: (content) ->
    p
      className: 'point'
      content