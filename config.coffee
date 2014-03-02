exports.config =
  conventions:
    assets: /(assets|vendor\/assets|font)/
  paths:
    public: 'public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app\/scripts/
        'js/static.js': /^app\/.*.jade$/
        'js/vendor.js': /^(bower_components|app)/
      order:
        before: [
        ]
    stylesheets:
      defaultExtension: 'sass'
      joinTo:
        'css/app.css' : /^(vendor|bower_components|app)/
      order:
        before: [
          'reset.css',
          'helpers.css'
        ]
    templates:
      joinTo: 
        'js/templates.js': /.+\.jade$/
  plugins:
    jade:
      options:
        pretty: yes
      locals:
        nav: [
          {title: 'Home', path: ''},
          {title: 'Docs', path: 'https://github.com/brunch/brunch/tree/stable/docs'},
          {title: 'Plugins', path: 'plugins'},
          {title: 'Skeletons', path: 'skeletons'},
          {title: 'Examples', path: 'examples'},
          {title: 'Compare', path: 'compare'},
          {title: 'Support', path: 'support'},
          {title: 'Blog', path: 'https://brunch.roon.io/'},
        ]
        social:[
          {classname: 'github', width: 160, src: 'http://ghbtns.com/github-btn.html?user=brunch&repo=brunch&type=watch&count=true&size=large'},
          {classname: 'twitter', width: 260, src: 'https://platform.twitter.com/widgets/follow_button.html?screen_name=brunch&show_count=true&size=l'},
          {classname: 'twitter', width: 130, src: 'http://platform.twitter.com/widgets/tweet_button.html?count=horizontal&id=twitter-widget-0&lang=en&original_referer=http%3A%2F%2Flocalhost%3A3333%2F&related=brunch&size=l&text=Brunch%20%7C%20HTML5%20application%20assembler&url=http%3A%2F%2Fbrunch.io&via=brunch" class="twitter-share-button twitter-tweet-button twitter-count-horizontal'}
        ]
    autoReload:
      enabled:
        css: on
        js: off
        assets: on
    static_jade:
      extension: ".jade"
      path:       [ /app/ ] 