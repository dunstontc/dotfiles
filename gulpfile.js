const gulp  = require('gulp');
const merge = require('gulp-merge-json');
const json5 = require('gulp-json5-to-json');

gulp.task('default', () => { });

gulp.task('code:compile-settings', () =>
  gulp.src('./editors/vscode/settings/*.json5')
    .pipe(merge({
      fileName: "settings.json",
      json5: true,
    }))
    .pipe(json5({beautify:true}))
    .pipe(gulp.dest(codeFolder()))
);

let codeFolder = () => {
  switch (process.platform) {
    case 'darwin':
      return `${process.env.HOME}/Library/Application Support/Code - Insiders/User`;
    case 'linux':
      return `${process.env.HOME}/.config/Code/User`;
    case 'win32':
      return `${process.env.APPDATA}\\Code\\User`;
    default:
      console.log('unconfigured os');
      return '';
  }
}
