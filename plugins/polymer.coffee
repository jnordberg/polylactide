### Simple plugin that treats the entire polymer directory as static. ###
module.exports = (env, callback) ->
  env.registerContentPlugin 'polymer', 'polymer/**', env.plugins.StaticFile
  callback()