module.exports = {
  'root':    true,
  'parser':  'babel-eslint',
  'plugins': [],
  'env': {
    'es6':     true,
    "browser": true,
    "node":    true,
  },
  'parserOptions': {
    'ecmaVersion': 2018,
    // 'sourceType': 'module',
    'ecmaFeatures': {
      'impliedStrict': true,
      'globalReturn': false,
      'experimentalObjectRestSpread': true,  // Deprecated
    },
  },
  'rules': {
    'arrow-body-style':      ['error', 'as-needed', {'requireReturnForObjectLiteral': true}],
    'array-bracket-spacing': ['off'],
    // 'array-bracket-spacing': [ 'error', 'always', {
      // 'singleValue': true,
      // 'arraysInArrays': false,
      // 'objectsInArrays': false,
    // }],
    'arrow-parens':  ['error', 'as-needed', {'requireForBlockBody': true}],
    'arrow-spacing': ['error', {'before': true, 'after': true}],
    'block-spacing': ['error', 'always'],
    'brace-style':   ['error', '1tbs',  {'allowSingleLine': true}],  // Or allman
    'comma-style':   ['error', 'last'],
    'comma-dangle':  ['error', 'always-multiline'],
    'complexity':    ['error', 5],  // Defaults to 20
    'computed-property-spacing': ['error', 'never'],
    'consistent-this': ['error', 'that'],
    'constructor-super': 'error',
    'curly': ['error', 'all'],
    'eqeqeq': ['error', 'smart'],
    'func-call-spacing': ['error', 'never'],
    // 'function-paren-newline': ['error', {'minItems': 5}],
    // 'generator-star-spacing': [
    //   'error',
    //   {
    //     'before': true,
    //     'after': true,
    //   }
    // ],
    'handle-callback-err': 'error',
    'id-length': ['warn', {
      'min': 3,
      'exceptions': ['i', 'x', 'fs'],
    }],
    'implicit-arrow-linebreak': ['error', 'beside'],
    'jsx-quotes': ['error', 'prefer-double'],
    // 'keyword-spacing': [ 'error', {
    //   'overrides': {
    //     'if':    { 'after': false },
    //     'for':   { 'after': false },
    //     'while': { 'after': false },
    //   },
    // }],
    // 'key-spacing': ['error', {
    //   // 'align': {
    //   //   'beforeColon': true,
    //   //   'afterColon': true,
    //   //   'on': 'colon',
    //   //   'mode': 'strict',
    //   // },
    //   'multiLine': {
    //     'beforeColon': false,
    //     'afterColon':  true,
    //     'align':       'value',
    //   },
    //   'singleLine': {
    //     'beforeColon': false,
    //     'afterColon':  true,
    //   },
    // }],
    'lines-between-class-members': ['error', 'always'],
    'max-depth': ['error', 3],
    'max-nested-callbacks': ['error', 3],  // Default is 10
    'newline-per-chained-call': ['error', {'ignoreChainWithDepth': 2}],
    'new-parens': 'error',  // Remember they're just functions.
    'no-array-constructor': 'error',
    'no-class-assign': 'error',
    'no-confusing-arrow': ['error', {'allowParens': true}],
    'no-console': 'off',
    'no-constant-condition': ['error', {'checkLoops': false}],
    'no-div-regex': 'error',
    'no-dupe-class-members': 'error',
    'no-inline-comments': 'off',
    'no-this-before-super': 'error',
    'no-unused-vars': 'warn',   // Look into exceptions
    'no-use-before-define': ['error', {
      'functions': true,
      'classes':   true,
      'variables': true,
    }],
    'no-useless-computed-key': 'error',
    'no-useless-concat': 'error',
    'no-useless-rename': ['error', {
      'ignoreDestructuring': false,
      'ignoreImport':        false,
      'ignoreExport':        false,
    }],
    'no-whitespace-before-property': 'error',
    // 'nonblock-statement-body-position': ['error', 'beside', {'overrides': {'while': 'below', 'do': 'any'}}],
    // 'object-curly-spacing': [
    //   'error', 'always', {
    //     'arraysInObjects': true,
    //   },
    // ],
    'object-shorthand': ['error', 'consistent-as-needed'],
    // 'object-shorthand': ['error', 'always', {
    //   'avoidQuotes': true,
    //   'avoidExplicitReturnArrows': true,
    // }],
    'operator-assignment': ['error', 'always'],  // No hard feelings on this one.
    'operator-linebreak':  ['error', 'before', {
      'overrides': {
        '?': 'none',
        ':': 'none',
      },
    }],
    // 'padded-blocks': ['error', {'classes': 'always'}],
    'padding-line-between-statements': ['error',
      {'blankLine': 'always',  'prev': ['directive'],           'next': ['*']},
      {'blankLine': 'always',  'prev': ['directive'],           'next': ['*']},
      {'blankLine': 'always',  'prev': ['class'],               'next': ['*']},
    ],
    'prefer-arrow-callback': ['error', {'allowUnboundThis': false}],
    'prefer-const': 1,
    'prefer-destructuring': ['error', {
      'array':  true,
      'object': true,
      }, {
      'enforceForRenamedProperties': false,
    }],
    'prefer-numeric-literals': 'error',
    'prefer-rest-params': 'error',
    'prefer-spread': 'error',
    'prefer-template': 'error',
    'quote-props': ['error', 'consistent'],
    'require-await': 'error',
    'require-yield': 'error',
    'rest-spread-spacing': ['error', 'never'],
    // 'quotes': [ 'warn', 'single' ],
    'semi': ['error', 'always'],
    // 'sort-imports': ['error', {
    //     'ignoreCase':            false,
    //     'ignoreMemberSort':      false,
    //     'memberSyntaxSortOrder': ['none', 'all', 'multiple', 'single']
    // }],
    // 'sort-vars': ['error', {'ignoreCase': true}],
    'space-before-blocks': ['error', 'always'],
    'space-infix-ops': ['error', {'int32Hint': false}],
    // 'space-in-parens': [
    //   'error', 'never', {
    //     'exceptions': [
    //       '{}',
    //       '[]',
    //       '()',
    //       'empty'
    //     ]
    //   }
    // ],
    // 'spaced-comment': ["error", "always", {
    //   'line': {
    //     'markers': ["/"],
    //     'exceptions': ["-", "="],
    //   },
    //   'block': {
    //     'markers': ["!"],
    //     'exceptions': ["*"],
    //     'balanced': true,
    //   }
    // }],
    'template-tag-spacing':   ['error', 'never'],
    'template-curly-spacing': ['error', 'never'],
    // 'indent': [
    //   'error', 2,
    //   {
    //     'VariableDeclarator': {
    //       'var': 2,
    //       'let': 2,
    //       'const': 3,
    //     },
    //     'FunctionDeclaration': {
    //       'parameters': 'first',
    //     },
    //     'FunctionExpression': {
    //       'parameters': 'first',
    //     },
    //     'CallExpression': {
    //       'arguments': 'first',
    //     },
    //     'ArrayExpression': 'first',
    //     'ObjectExpression': 1,
    //     'ImportDeclaration': 'first',
    //     'flatTernaryExpressions': true,
    //     'ignoreComments': true,
    //   },
    // ],
    'valid-jsdoc': ["error", {
      'requireParamDescription':  false,
      'requireReturn':            false,
      'requireReturnType':        true,
      'requireReturnDescription': true,
      'prefer': {
        'arg':      'param',
        'argument': "param",
        'class':    'constructor',
        'return':   'returns',
        'virtual':  'abstract',
      },
    }],
  },
};



/**
 * Configuring Rules:
 *     'off' or 0 - turn the rule off
 *    'warn' or 1 - turn the rule on as a warning (doesn’t affect exit code)
 *   'error' or 2 - turn the rule on as an error  (exit code is 1 when triggered)
 */
