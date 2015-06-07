#!/usr/bin/env coffee

dump = require( '/Users/the/_codes/[ WEB SCRAPING ]/[ JS ]/[ CasperJS ]/lib/utils.js' ).dump

require( 'wiredep' ) {
  directory: 'bower_components' # default: '.bowerrc'.directory || bower_components
  bowerJson: 'bower.json' # default: require('./bower.json')
  src: [
    'src/jade/partial/_scripts.jade'
    'src/jade/partial/_styles.jade'
  ]


  # ADVANCED CONFIGURATION:
  cwd: './'
  dependencies: true # default: true
  # devDependencies: true # default: false
  # includeSelf: true # default: false
  # exclude: [ /jquery/, 'bower_components/modernizr/modernizr.js' ]
  # ignorePath: /string or regexp to ignore from the injected filepath/
  # overrides: {}
  onError: (err) ->
    dump err
  onFileUpdated: (filePath) ->
  onPathInjected: (fileObject) ->
  onMainNotFound: (pkg) ->
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
        js: 'script(src=\'{{filePath}}\')'
        css: 'link(rel=\'stylesheet\', href=\'{{filePath}}\')'
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
