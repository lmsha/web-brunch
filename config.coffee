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
          email: "lmsha.alternativa@gmail.com"
          phone: "+7 495 100 20 30"
        nav: [
          {title: 'О НАС', path: 'about'},
          {title: 'СМЕНА', path: 'smeny'},
          {title: 'КОМАНДА', path: 'science/teachers'},
          {title: 'МЕДИА', path: 'media'},
          {title: 'РОДИТЕЛЯМ', path: 'parents'},
          {title: 'КОНТАКТЫ', path: 'contacts'}
        ]
        social:[
          {type: 'vk', url: 'http://vk.com/lmsha'},
          {type: 'twitter', url: 'http://twitter.com/lmshalt'},
          {type: 'youtube', url: 'http://www.youtube.com/user/TulaSummerSchool'}
        ]
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8"]
    static_jade:
      extension: ".jade"
      path:       [ /app/ ] 