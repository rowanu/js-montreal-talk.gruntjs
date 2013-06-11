# Wrapper
module.exports = (grunt) ->

  # Project configuration
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    # Task configuration
    jslint:
      files: [ "src/**/*.js" ]
      directives:
        devel: true
      options:
        failOnError: false

    watch:
      jslint:
        files: [ "src/**/*.js" ]
        tasks: ["jslint"]
        options:
          interrupt: true

    uglify:
      build:
        files:
          "js/index.min.js": [ "src/index.js" ]

  # Load plugins
  grunt.loadNpmTasks "grunt-jslint"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-uglify"

  # Custom tasks
  grunt.registerTask "default", ["watch"]
  grunt.registerTask "build", ["jslint", "uglify"]
