/***
 * Load balena.yml as input
 */
const path = require('path')
const fs = require('fs/promises')
const yaml = require('js-yaml')

module.exports = {
    prompt: async () => {
        return yaml.load(await fs.readFile(path.join(process.cwd(), 'balena.yml')))
    }
}
