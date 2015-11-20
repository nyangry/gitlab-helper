var gulp   = require('gulp');
var uglify = require('gulp-uglify');
var concat = require('gulp-concat');
var coffee = require('gulp-coffee');
var gutil  = require('gulp-util');

// default task
gulp.task('default', ['coffee', 'js'], function () {
  gulp.watch('src/js/*.coffee', ['js']);
});

// compile coffee to js
gulp.task('coffee', function() {
  // return することで実行順序を保証
  return gulp.src('src/js/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('src/js/'));
});

// minify and concat js
gulp.task('js', ['coffee'], function() {
  gulp
    .src([
      './node_modules/jquery/dist/jquery.min.js',
      './src/js/*.js',
    ])
    .pipe(uglify({
      preserveComments: 'license'
    }).on('error', gutil.log))
    .pipe(concat('app.js'))
    .pipe(gulp.dest('dist/js'));
});
