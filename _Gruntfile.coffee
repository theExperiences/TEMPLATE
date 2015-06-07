module.exports = ( grunt ) ->
  # grunt.loadNpmTasks( '' ) # Loading Grunt plugins and tasks
  grunt.loadNpmTasks('grunt-wiredep')
  # grunt.loadNpmTasks( 'grunt-bower-install' ) # Loading Grunt plugins and tasks
  # grunt.loadNpmTasks( 'grunt-contrib-uglify' ) # Load the plugin that provides the "uglify" task.

  grunt.initConfig { # Project configuration.
    pkg: grunt.file.readJSON( 'package.json' )

    wiredep: {
      task: {
        src: [
          'src/jade/partial/_scripts.jade'
          'src/jade/partial/_styles.jade'
        ]
        exclude: []
        # exclude: ['jquery','bootstrap']
        ignorePath: ''
        # ignorePath: 'assets/'
        fileTypes: {
          jade: {
            block: /(([\s\t]*)\/\/\s*bower:*(\S*)\s*)(|\r|.)*?(\/\/\s*endbower\s*)/gi
            detect: {
              js: /script\(.*src=['"](.+)['"]/gi
              css: /link\(.*href=['"](.+)['"]/gi
            }
            replace: {
              js: 'script(type="text/javascript", src="js/lib/{{filePath}}")'
              css: 'link(rel="stylesheet", href="css/lib/{{filePath}}")'
            }
          }
        }
      }
    }

    # 'wiredep': {
    #   target: {
    #     src: [] # Point to the files that should be updated when you run `grunt bower-install`
    #     cwd: '',
    #     dependencies: true,
    #     devDependencies: false,
    #     exclude: [],
    #     fileTypes: {},
    #     ignorePath: '',
    #     overrides: {}
    #   }
    # }

    # uglify: {
    #   options: {
    #     banner: '/*! <%= pkg.name %> <%= grunt.template.today( "yyyy-mm-dd" ) %> */\n'
    #   }
    #   build: {
    #     src: 'src/<%= pkg.name %>.js'
    #     dest: 'build/<%= pkg.name %>.min.js'
    #   }
    # }

    # TASK_NAME: { OPS }
  }

  # grunt.registerTask( 'default', ['uglify'] ) # Default task( s ).
  grunt.registerTask( 'default', ['wiredep'] ) # Default task( s ).

  # a simplest default task definition:
  # grunt.registerTask 'default', 'Log some stuff.', () ->
  #   grunt.log.write('Logging some stuff...').ok()
