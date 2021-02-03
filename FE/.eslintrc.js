module.exports = {
  root: true,
  env: {
    node: true
  },
  extends: [
    'plugin:vue/essential',
    '@vue/standard'
  ],
  parserOptions: {
    parser: 'babel-eslint'
  },
  rules: {
    'no-console': 'off',
    'no-debugger': 0,
    'no-tabs': 0, // 允许
    eqeqeq: 0,
    camelcase: 0,
    'no-array-constructor': 0,
    'no-unused-vars': 0,
    'no-constant-condition': 0,
    'no-cond-assign': 0,
    'no-unmodified-loop-condition': 0,
    'no-useless-escape': 0,
    'vue/return-in-computed-property': 0,
    'no-useless-return': 0,
    'prefer-promise-reject-errors': 0,
    'vue/no-parsing-error': [2, { 'x-invalid-end-tag': false }],
    'no-redeclare': 0,
    'no-prototype-builtins': 0
  }
}
