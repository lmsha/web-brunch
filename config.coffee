exports.config =
  conventions:
    assets: /(assets|vendor\/assets|font)/
  paths:
    public: 'public'
  modules:
    definition: false
    wrapper: false
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'js/app.js': /^app\/scripts/
        'js/static.js': /^app\/.*.jade$/
        'js/vendor.js': /^(bower_components|vendor)/
      order:
        before: [
        ]
    stylesheets:
      defaultExtension: 'sass'
      joinTo:
        'css/app.css' : /^(vendor|bower_components|app)/
      order:
        before: [
          'app/styles/reset.css',
          'app/styles/helpers.css'
        ]
    templates:
      joinTo: 
        'js/templates.js': /.+\.jade$/
  plugins:
    jade:
      options:
        pretty: yes
      locals:
        site:
          baseurl: "/"
        nav: [
          {title: 'О НАС', path: 'about'},
          {title: 'СМЕНА', path: 'smeny'},
          {title: 'КОМАНДА', path: 'science/teachers'},
          {title: 'МЕДИА', path: 'media'},
          {title: 'РОДИТЕЛЯМ', path: 'parents'},
          {title: 'КОНТАКТЫ', path: 'contacts'}
        ]
        social:[
          {classname: 'github', width: 160, src: 'http://ghbtns.com/github-btn.html?user=brunch&repo=brunch&type=watch&count=true&size=large'},
          {classname: 'twitter', width: 260, src: 'https://platform.twitter.com/widgets/follow_button.html?screen_name=brunch&show_count=true&size=l'},
          {classname: 'twitter', width: 130, src: 'http://platform.twitter.com/widgets/tweet_button.html?count=horizontal&id=twitter-widget-0&lang=en&original_referer=http%3A%2F%2Flocalhost%3A3333%2F&related=brunch&size=l&text=Brunch%20%7C%20HTML5%20application%20assembler&url=http%3A%2F%2Fbrunch.io&via=brunch" class="twitter-share-button twitter-tweet-button twitter-count-horizontal'}
        ]
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8"]
    static_jade:
      extension: ".jade"
      path:       [ /app/ ] 