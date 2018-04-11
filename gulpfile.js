const gulp  = require('gulp');
const merge = require('gulp-merge-json');
const json5 = require('gulp-json5-to-json');

const vars = {
  codeUserSettings: "/Users/clay/Library/Application Support/Code - Insiders/User",
  codeUserSettingsEsc: "/Users/clay/Library/Application\\ Support/Code\\ -\\ Insiders/User",
};

gulp.task('default', () => { });

gulp.task('code:compile-settings', () =>
  gulp.src('./editors/vscode/settings/*.json5')
    .pipe(merge({
      fileName: "settings.json",
      json5: true,
    }))
    .pipe(json5({beautify:true}))
    .pipe(gulp.dest(vars.codeUserSettings))
);
