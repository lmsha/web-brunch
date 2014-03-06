 do (context = this) ->
  "use strict"
  # shortcuts
  $ = context.jQuery
  pi = context.pi  = context.pi || {}
  utils = pi.utils

  _video_count = 0

  class pi.VideoPlayer extends pi.Base
    initialize: ->
      cont = document.createElement('div')
      @player_id = "video_player_" + (++_video_count)

      cont.id = @player_id

      @nod.append cont

      setup_opts = {
            flashplayer: "/flash/player.swf",
            file: @options.file,
            wmode: "transparent",
            controlbar: "over",
            skin: "/flash/lmsh.swf",
            debug: 'none',
            width: "100%",
            height: "100%",
            plugins: {
                '/flash/timeslidertooltipplugin.swf': {
                    marginbottom: 14
                },
                '/flash/hd.swf': {
                    file: @options.hd_file
                    toggle: true
                }
            },
            events: {
            }
        }

      (setup_opts.image = @options.image) if @options.image?
      
      res = jwplayer(@player_id).setup(setup_opts)

      utils.debug res

    play: ->
      jwplayer(@player_id).play()

    pause: ->
      jwplayer(@player_id).pause()

    stop: ->
      jwplayer(@player_id).stop()