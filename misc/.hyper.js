
// See https://hyper.is#cfg for all currently supported options.


module.exports = {
  config: {
    // "stable" or "canary"
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    // fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    // fontFamily: 'FuraCode Nerd Font Mono',
    fontFamily: 'SpaceMono Nerd Font Complete Mono',


    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // set to true for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black : '#353a44',
      red: '#e88388',
      green: '#98c379',
      yellow: '#ebca8d',
      blue: '#72bef2',
      magenta: '#d291e4',
      cyan: '#65c2cd',
      white: '#e3e5e9',
      lightBlack: '#353a44',
      lightRed: '#e88388',
      lightGreen: '#98c379',
      lightYellow: '#ebca8d',
      lightBlue: '#72bef2',
      lightMagenta: '#d291e4',
      lightCyan: '#65c2cd',
      lightWhite: '#e3e5e9'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // Powershell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: 'false',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    quickEdit: true

  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  plugins: [],

  // to load it and avoid it being `npm install`ed
  // hyperBorder: {
  //   borderColors: ['#fc1da7', '#fba506'],
  //   // borderColors: ['random','random']
  //   borderWidth: '0.75px'
  // }
  // `~/.hyper_plugins/local/` and include it here
  // in development, you can create a directory under
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  }
};
