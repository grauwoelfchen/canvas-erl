var sys = require('sys');

var gulp  = require('gulp')
  , bower = require('gulp-bower')
  ;
var sequence = require('run-sequence')
  ;

gulp.task('bower', function() {
  return bower('./priv/vendor/assets/components');
});

gulp.task('default', function(callback) {
  sequence('bower', callback);
});
