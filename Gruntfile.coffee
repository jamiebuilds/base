# global module: false
module.exports = (grunt) ->

  # Modules
  grunt.loadNpmTasks 'grunt-init'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Grunt Tasks
  grunt.initConfig
    meta: version: '0.0.1'

    # Sass
    sass: dist:
      options:
        style: 'expanded'
      files: './dist/base.css': './dist/base.scss'

    # Watch
    watch: dist:
      files: ['./dist/**/*.scss']
      tasks: ['sass']

  # Tasks
  grunt.registerTask 'default', ['sass', 'watch']
  grunt.registerTask 'test',    ['sass']
