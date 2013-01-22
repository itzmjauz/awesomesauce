require('errorhandler')
require('beautiful').init(os.getenv('HOME') .. '/.configs/theme/awesome.lua')

require('rules')
root.keys(require('bindings.global').keys)

require('wiboxes')
require('wallpaper')

do
  local awful = require('awful')
  awful.util.spawn('wmname LG3D')
  awful.util.spawn(os.getenv('HOME') .. '/.configs/autostart')
end
