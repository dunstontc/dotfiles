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
      break;
    case 'linux':
      return `${process.env.HOME}/.config/Code/User`;
      break;
    // case 'win32':
    //   return "FIXME: code settings folder on windows?"
    //   break;

    default:
      console.log('unconfigured os');
      return '';
      break;
  }
}
