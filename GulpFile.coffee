gulp = require('gulp')
cjsx = require( 'gulp-cjsx' )
wiredep = require('wiredep').stream

ops = {
  # directory: './public/components' # default: '.bowerrc'.directory || bower_components
  # bowerJson: './public/bower.json' # default: require('./bower.json')
  # src: [
  #   'src/jade/partial/_scripts.jade'
  #   'src/jade/partial/_styles.jade'
  # ]
  # ADVANCED ops:
  # cwd: './'
  # dependencies: true # default: true
  # devDependencies: true # default: false
  # includeSelf: true # default: false
  exclude: [
    # 'bower_components/modernizr/modernizr.js'
    'animate.css'
    'classie'
    'eventEmitter'
    'eventie'
    'get-size'
    'get-style-property'
    'unidragger'
    'unipointer'
    'videojs'
  ]
  ignorePath: [
    'assets/'
  ]
  # overrides: {}
  # onError: (err) ->
  # onFileUpdated: (filePath) ->
  # onPathInjected: (fileObject) ->
  # onMainNotFound: (pkg) ->
  fileTypes: {
    # html: {
    #   block: /(([ \t]*)<!--\s*bower:*(\S*)\s*-->)(\n|\r|.)*?(<!--\s*endbower\s*-->)/gi
    #   detect: {
    #     js: /<script.*src=['"]([^'"]+)/gi
    #     css: /<link.*href=['"]([^'"]+)/gi
    #   }
    #   replace: {
    #     js: '<script src="{{filePath}}"></script>'
    #     css: '<link rel="stylesheet" href="{{filePath}}" />'
    #   }
    # }

    jade: {
      block: /(([ \t]*)\/\/\s*bower:*(\S*))(\n|\r|.)*?(\/\/\s*endbower)/gi
      detect: {
        js: /script\(.*src=['"]([^'"]+)/gi
        css: /link\(.*href=['"]([^'"]+)/gi
      }
      replace: {
        js: 'script(src=\'../{{filePath}}\')'
        css: 'link(rel=\'stylesheet\', href=\'../{{filePath}}\')'
      }
    }

    # less: {
    #   block: /(([ \t]*)\/\/\s*bower:*(\S*))(\n|\r|.)*?(\/\/\s*endbower)/gi
    #   detect: {
    #     css: /@import\s['"](.+css)['"]/gi
    #     less: /@import\s['"](.+less)['"]/gi
    #   }
    #   replace: {
    #     css: '@import "{{filePath}}";'
    #     less: '@import "{{filePath}}";'
    #   }
    # }

    # sass: {
    #   block: /(([ \t]*)\/\/\s*bower:*(\S*))(\n|\r|.)*?(\/\/\s*endbower)/gi
    #   detect: {
    #     css: /@import\s(.+css)/gi
    #     sass: /@import\s(.+sass)/gi
    #     scss: /@import\s(.+scss)/gi
    #   }
    #   replace: {
    #     css: '@import {{filePath}}'
    #     sass: '@import {{filePath}}'
    #     scss: '@import {{filePath}}'
    #   }
    # }

    # scss: {
    #   block: /(([ \t]*)\/\/\s*bower:*(\S*))(\n|\r|.)*?(\/\/\s*endbower)/gi
    #   detect: {
    #     css: /@import\s['"](.+css)['"]/gi
    #     sass: /@import\s['"](.+sass)['"]/gi
    #     scss: /@import\s['"](.+scss)['"]/gi
    #   }
    #   replace: {
    #     css: '@import "{{filePath}}";'
    #     sass: '@import "{{filePath}}";'
    #     scss: '@import "{{filePath}}";'
    #   }
    # }

    # styl: {
    #   block: /(([ \t]*)\/\/\s*bower:*(\S*))(\n|\r|.)*?(\/\/\s*endbower)/gi
    #   detect: {
    #     css: /@import\s['"](.+css)['"]/gi
    #     styl: /@import\s['"](.+styl)['"]/gi
    #   }
    #   replace: {
    #     css: '@import "{{filePath}}"'
    #     styl: '@import "{{filePath}}"'
    #   }
    # }

    # yaml: {
    #   block: /(([ \t]*)#\s*bower:*(\S*))(\n|\r|.)*?(#\s*endbower)/gi
    #   detect: {
    #     js: /-\s(.+js)/gi
    #     css: /-\s(.+css)/gi
    #   }
    #   replace: {
    #     js: '- {{filePath}}'
    #     css: '- {{filePath}}'
    #   }
    # }
  }
}

gulp.task 'wiredep', () ->
  gulp.src [ './_scripts.jade', './_styles.jade' ]
  .pipe wiredep ops
  .pipe gulp.dest('./src/jade/partial')

# gulp.task 'cjsx', () ->
#   gulp.src './react_components/src/*.cjsx'
#     .pipe( cjsx( { bare: true } ).on( 'error', gutil.log ) )
#     .pipe( gulp.dest( './react_components/js/' ) )
