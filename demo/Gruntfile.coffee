# Wrapper
module.exports = (grunt) ->

  # Project configuration
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    # Task configuration
    coffee:
      compile:
        expand: true
        cwd: "coffee/"
        src: ["**/*.coffee"]
        dest: "js/"
        ext: ".js"

    watch:
      coffee:
        files: ["coffee/**/*.coffee"]
        tasks: ["coffee"]
        options:
          interrupt: true

  # Load plugins
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Custom tasks
  grunt.registerTask 'default', ['watch']
