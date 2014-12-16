gulp   = require('gulp')
coffee = require('gulp-coffee')
uglify = require('gulp-uglify')

gulp.task 'js', ->
  gulp.src('main.coffee')
      .pipe coffee()
      .pipe uglify()
      .pipe gulp.dest('')

gulp.task 'watch', ->
  gulp.watch 'main.coffee', ['js']

gulp.task 'default', ->
  gulp.start 'js'
