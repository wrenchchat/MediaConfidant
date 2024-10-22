/*

 MIT License

 Copyright (c) 2021 Looker Data Sciences, Inc.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

 */

 const excludeNodeModuleExcept = require('babel-loader-exclude-node-modules-except')

 // Our own modules are built as esm to allow for tree shaking.
 const ownModules = [
   '@looker/components-test-utils',
   '@looker/components',
   '@looker/icons',
   '@looker/design-tokens',
   'react-syntax-highlighter',
   'd3-color'
 ]

 const excludeNodeModulesExceptRegExp = excludeNodeModuleExcept([...ownModules])

 module.exports = {
   automock: false,
   moduleDirectories: ['./node_modules'],
   moduleFileExtensions: ['js', 'jsx', 'ts', 'tsx', 'json', 'node'],
   moduleNameMapper: {
    "\\.(jpg|jpeg|png|gif|eot|otf|webp|svg|ttf|woff|woff2|mp4|webm|wav|mp3|m4a|aac|oga)$": "<rootDir>/src/__mocks__/fileMock.js",
    "\\.(css|less)$": "<rootDir>/src/__mocks__/styleMock.js"
   },
   restoreMocks: true,
   testMatch: ['**/?(*.)(spec|test).(ts|js)?(x)'],
   transform: {
     '^.+\\.(js|jsx|ts|tsx)$': 'ts-jest',
   },
   transformIgnorePatterns: [
     excludeNodeModulesExceptRegExp.toString().slice(1, -2),
   ],
   testPathIgnorePatterns: [
    "<rootDir>/src/__tests__/MockData"
   ],
   setupFilesAfterEnv: [
    // "<rootDir>/src/__tests__/test_setup.js"
    '@testing-library/jest-dom/extend-expect',
    'regenerator-runtime/runtime',
  ],
  globals: {
     'ts-jest': {
       isolatedModules: true,
       diagnostics: false,
     },
   },
 }
