globalkeys = awful.util.table.join(globalkeys,
    awful.key({ }, "XF86AudioMute",function () 
        say(awful.util.pread('amixer set Master togglemute'))
    end),
    awful.key({ }, "XF86Tools",function () 
        say(awful.util.pread('amixer set Master unmute')) 
    end),
    awful.key({ }, "XF86AudioRaiseVolume",function () 
        say(awful.util.pread('amixer set Master 10%+')) 
    end),
    awful.key({ }, "XF86AudioLowerVolume",function () 
        say(awful.util.pread('amixer set Master 10%-'))
    end)
)
