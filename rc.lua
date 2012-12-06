-- Standard awesome library
require('awful')
require('errorhandler')

home = os.getenv('HOME')
configdir = home .. '/.config/awesome/'

modkey = 'Mod4'

terminal = 'terminator'
browser = 'chromium'

layouts = {
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.max.fullscreen
}

require('beautiful')
beautiful.init(home .. '/.configs/theme/awesome.lua')
dofile(configdir .. 'util.lua');
dofile(configdir .. 'tags.lua');
dofile(configdir .. 'wibox.lua');
dofile(configdir .. 'keybindings.lua');
dofile(configdir .. 'rules.lua');
dofile(configdir .. 'signals.lua');

awful.util.spawn(home .. '/.configs/autorun')
