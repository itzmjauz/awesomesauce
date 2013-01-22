local awful = require('awful')

local prefs = require('preferences')
local modkey = prefs.modkey

local layouts = require('layouts')
local tags = require('tags')


local keys = awful.util.table.join({}
  , awful.key({ modkey, 'Control' }, 'r', awesome.restart)
  , awful.key({ modkey, 'Shift'   }, 'q', awesome.quit)
  , require('bindings.global.tags').keys
  , require('bindings.global.layout').keys
  , require('bindings.global.programs').keys
  , require('bindings.global.prompt').keys
  )

return { keys = keys }
