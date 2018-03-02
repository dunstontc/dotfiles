module.exports = {
  'root': true,
  // 'plugins': ['example'],
  'extends': 'eslint:recommended',
  'env': {
    'browser': true,
    'node': true,
  },
  'settings': {
    'sharedData': 'Hello'
  },
  'parserOptions': {
    'ecmaVersion': 2017,
    'ecmaFeatures': {
      'jsx': true
    },
    'sourceType': 'module'
  },
  'rules': {
    'comma-dangle': 0,
    'curly': 2,
    'eqeqeq': 'off',
    'id-length': [2, {
      'min': 4
    }],
    'indent': [2, 2],
    'no-inline-comments': 0,
    'no-console': 0,
    'quotes': [1, 'single'],
    'semi': [2, 'always'],
  }
};

/**
 * Configuring Rules:
 *     'off' or 0 - turn the rule off
 *    'warn' or 1 - turn the rule on as a warning (doesn’t affect exit code)
 *   'error' or 2 - turn the rule on as an error (exit code is 1 when triggered)
 */
