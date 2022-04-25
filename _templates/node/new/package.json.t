---
to: package.json
---
<%
  is_public = locals.data && locals.data.is_public
  is_private = !is_public
  has_description = locals.description != null
%>{
  "name": "<%= name %>",
  "private": "<%= is_private %>",
<% if (is_private) { -%>
  "is_private": true,
<% } -%>
  "version": "<%= version %>",
<% if (has_description) { -%>
  "description": "<%= description %>",
<% } -%>
  "main": "build/index.js",
  "types": "build/index.d.ts",
<% if (is_public) { -%>
  "license": "Apache-2.0",
<% } -%>
  "files": [
    "build/"
  ],
  "scripts": {
    "clean": "rimraf build",
    "build": "npm run clean && tsc",
    "lint": "balena-lint --typescript lib test",
    "lint-fix": "balena-lint --typescript --fix lib test",
    "test": "jest",
    "test:fast": "npm run build && npm run test",
    "prepack": "npm run build"
  },
  "devDependencies": {
    "@balena/lint": "^5.4.2",
    "@types/jest": "^27.4.1",
    "husky": "^4.2.5",
    "jest": "^27.5.1",
    "lint-staged": "^11.0.0",
    "rimraf": "^3.0.2",
    "ts-jest": "^27.1.4",
    "ts-node": "^9.1.1",
    "typescript": "^4.2.4"
  },
  "dependencies": {

  }
}

