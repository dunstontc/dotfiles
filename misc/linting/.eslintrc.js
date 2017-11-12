module.exports = {
  "root": "true",
  // "plugins": ["example"],
  "extends": "eslint:recommended",
  "env": {
    "browser": true,
    "node": true,
  },
  "settings": {
    "sharedData": "Hello"
  },
  "parserOptions": {
    "ecmaFeatures": {
        "jsx": true
    },
    "sourceType": "module"
  },
  "rules": {
    // "comma-dangle": ["error", "always"], // I don't like this one
    "comma-dangle": "off",
    "curly": "error",
    "eqeqeq": "off",
    "id-length": ["error", { "min": 4 }],
    "indent": ["error", 2],
    "linebreak-style": ["error", "unix"],
    "no-inline-comments": "off",
    "no-console": "off",
    "quotes": ["warn", "single"],
    "semi": ["error", "always"],
  }
}

/**
 *
 * Configuring Rules:
 *     "off" or 0 - turn the rule off
 *    "warn" or 1 - turn the rule on as a warning (doesn’t affect exit code)
 *   "error" or 2 - turn the rule on as an error (exit code is 1 when triggered)
 *
 */
