const snippets = {
  javascript: {
    'Divider': {
      "prefix": "div",
      "body": "// =============================================================================",
      "description": "Section dividing line.",
    },
    'console.log()': {
      "prefix": "clog",
      "body": "console.log($1);$0",
      "description": "console.log();",
    },
    'Class Property': {
      "prefix": "property",
      "body": "this.$1 = $1;$0",
      "description": "this.$1 = $1;",
    },
    'Import (CommonJS)': {
      "prefix": "r3",
      "body": "const $1 = require('$1$2');$3",
      "description": "let x = require('path to x')",
    },
    'Import (ES6)': {
      "prefix": "import",
      "body": "import { $2 } from '$1';$0",
      "description": "ES6 Import Statement",
    },
    'Strict Mode': {
      "prefix": "strict",
      "body": "'use strict';\n\n$0",
    },
    'gulp:task': {
      "prefix": "gulp.task",
      "body": "gulp.task('$1', () => {\n  gulp.src('$2')\n  .pipe($0)\n  .pipe(gulp.dest('$3'))\n});",
      "description": "blank gulp task",
    },
    'gulp:watch': {
      "prefix": "gulp.watch",
      "body": "gulp.watch('$1', ['$2']);$0",
      "description": "blank gulp watch task",
    },
    'Vuex Store': {
      "prefix": "vuex-store",
      "body": "import Vue  from 'vue'\nimport Vuex from 'vuex'\n\nVue.use(Vuex)\n\nexport default new Vuex.Store({\n  state: {\n    // TODO:\n  },\n  getters: {\n    // TODO: implement getters\n  },\n  mutations: {\n    // TODO: implement mutations\n  },\n  actions: {\n    // TODO: implement actions\n  }\n});",
      "description": "Vuex store boilerplate",
    },
  },
  markdown: [],
  json: {
    'key:value,': {
      prefix: "|,",
      body: "\"${1:Key}\": \"${2:Value}\",$0",
      description: "\"key\": \"value\",",
    },
    'JSON Object': {
      prefix: "||,",
      body: "\"${1:Key}\": {\n  $0\n},",
      description: "JSON object",
    },
    'JSON Array,': {
      prefix: "|||,",
      body: "\"${1:Key}\": [\n  $0\n],",
      description: "JSON array,",
    },
  },
};
