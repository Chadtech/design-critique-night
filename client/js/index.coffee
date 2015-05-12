React  = require 'react'


# DOM Elements
{p, div, input, iframe, img, span} = React.DOM

IndexClass = React.createClass


  getInitialState: ->
    null

  render: ->


    div null,
      div className: 'spacer'
      div className: 'indent',

        div className: 'container',
          div 
            className: 'row'
            style:
              width: '100%'

            p
              className: 'header'
              'Design Critique Night'


          div className: 'break'
          div className: 'row',

            div className: 'indent',

              p
                className: 'point'
                'This is Design Critique Night at Local Motors; a night where you can get helpful feedback on your designs, whatever they may be of (vehicles, buildings, websites, resumes..). Each willing participant presents on their design for about 10 minutes, after which they engage in a free conversation with their audience. Bring your designs and meet the wider Phoenix Design Community.'


          div className: 'break'
          div className: 'row',

            div className: 'indent',

              p
                className: 'point'
                'Note for presenters: we have speakers and a projector in the labs space where the event is held.'


          div className: 'break'
          div 
            className: 'row'
            style:
              width: '100%'

            div className: 'indent',

            div className: 'column',

              p
                className: 'point b'
                'When'

            div className: 'column b',

              p
                className: 'point'
                '7pm May 27th'

          div className: 'break'
          div 
            className: 'row'
            style:
              width: '100%'

            div className: 'indent',

            div className: 'column',

              p
                className: 'point b'
                'Where'


          div className: 'row',

            div className: 'indent',
              iframe
                src:          'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6671.237517818936!2d-111.9667349!3d33.2764718!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b03e42ea3b87d%3A0xceee59f30419017d!2sLocal+Motors!5e0!3m2!1sen!2sus!4v1428095023970'
                width:        300
                height:       300
                frameborder:  0
                style:
                  border:     0


# Ye

IndexPage = React.createFactory IndexClass

App = new IndexPage

element = document.getElementById 'content'

React.render App, element






