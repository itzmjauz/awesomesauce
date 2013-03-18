local awful = require('awful')

local keys = awful.util.table.join({}
  ,  awful.key({ }, "XF86AudioMute",       function () awful.util.spawn('amixer set Master togglemute') end)
  ,  awful.key({ }, "XF86Tools",           function () awful.util.spawn('amixer set Master unmute') end)
  ,  awful.key({ }, "XF86AudioRaiseVolume",function () awful.util.spawn('amixer set Master 10%+') end)
  ,  awful.key({ }, "XF86AudioLowerVolume",function () awful.util.spawn('amixer set Master 10%-') end)
  )

return { keys = keys }
