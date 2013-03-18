local awful = require('awful')
local naughty = require('naughty')

function say(text) naughty.notify({ text = text }) end
function sayShell(cmd) say(awful.util.pread(cmd)) end

local keys = awful.util.table.join({}
  ,    awful.key({ }, "XF86AudioMute",         function () sayShell('amixer set Master togglemute') end)
  ,    awful.key({ }, "XF86Tools",             function () sayShell('amixer set Master unmute') end)
  ,    awful.key({ }, "XF86AudioRaiseVolume",  function () sayShell('amixer set Master 10%+')  end)
  ,    awful.key({ }, "XF86AudioLowerVolume",  function () sayShell('amixer set Master 10%-') end)
)
return { keys = keys }
