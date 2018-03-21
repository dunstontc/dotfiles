module.exports = {
  'root': true,
  'parser': 'babel-eslint',
  'plugins': [],
  'env': {
    'es6': true,
  },
  'parserOptions': {
    'ecmaVersion': 2017,
    // 'sourceType': 'module',
    'ecmaFeatures': {
      'impliedStrict': false,
      'experimentalObjectRestSpread': true,
    },
  },
  'rules': {
    'array-bracket-spacing': [ 'error', 'always', {
      'singleValue': true,
      'arraysInArrays': false,
      'objectsInArrays': false,
    }],
    'arrow-parens': [ 'error', 'as-needed', {
      'requireForBlockBody': true,
    }],
    'comma-style': [ 'error', 'last' ],
    'comma-dangle': [ 'error', 'always-multiline',
      // 'arrays': 'always-multiline',
      // 'objects': 'always-multiline',
      // 'imports': 'always-multiline',
      // 'exports': 'always-multiline',
      // 'functions': 'ignore',
      // }
    ],
    'computed-property-spacing': [ 'error', 'never' ],
    'curly': 'error',
    'eqeqeq': 'error',
    'id-length': [ 'error', {
      'min': 3,
    }],
    // 'generator-star-spacing': [
    //   'error',
    //   {
    //     'before': true,
    //     'after': true,
    //   }
    // ],
    'keyword-spacing': [
      'error',
      {
        'overrides': {
          'if': {
            'after': false,
          },
          'for': {
            'after': false,
          },
          'while': {
            'after': false,
          },
        },
      },
    ],
    // 'key-spacing': [
    //   "warn", {
    //     "align": "colon",
    //   }
    // ],
    'no-inline-comments': 'off',
    'no-console': 'off',
    'object-curly-spacing': [
      'error', 'always', {
        'arraysInObjects': true,
      },
    ],
    'operator-linebreak': [
      'error', 'before', {
        'overrides': {
          '?': 'none',
          ':': 'none',
        },
      },
    ],
    'quotes': [ 'warn', 'single' ],
    'semi': [ 'error', 'always' ],
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
    'no-use-before-define': [ 2, {
      'functions': false,
    }],
    'prefer-const': 1,
    'complexity': [ 1, 5 ],
    'indent': [
      'error', 2,
      {
        'VariableDeclarator': {
          'var': 2,
          'let': 2,
          'const': 3,
        },
        'FunctionDeclaration': {
          'parameters': 'first',
        },
        'FunctionExpression': {
          'parameters': 'first',
        },
        'CallExpression': {
          'arguments': 'first',
        },
        'ArrayExpression': 'first',
        'ObjectExpression': 1,
        'ImportDeclaration': 'first',
        'flatTernaryExpressions': true,
        'ignoreComments': true,
      },
    ],
  },
};



/**
 * Configuring Rules:
 *     'off' or 0 - turn the rule off
 *    'warn' or 1 - turn the rule on as a warning (doesn’t affect exit code)
 *   'error' or 2 - turn the rule on as an error  (exit code is 1 when triggered)
 */
