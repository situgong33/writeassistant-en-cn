provider = require './provider'

module.exports =
  activate: ->
      provider.loadEnglishCnDict()
      atom.commands.add 'atom-workspace', 'writeassistant-en-cn:toggle': => provider.toggle()
  getProvider: ->
      provider
