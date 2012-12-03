require('awful.autofocus')

client.add_signal('manage', function (c, startup)
    -- Enable sloppy focus
    c:add_signal('mouse::enter', function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus=c
        end
    end)

    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        -- awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.no_overlap(c)
            awful.placement.no_offscreen(c)
        end
    end
end)

client.add_signal('focus', function(c) c.border_color = beautiful.border_focus end)
client.add_signal('unfocus', function(c) c.border_color = beautiful.border_normal end)

-- Arrange handler
for s = 1, screen.count() do screen[s]:add_signal('arrange', function()
    local clients = awful.client.visible(s)
    local layout = awful.layout.getname(awful.layout.get(s))
    for _, c in pairs(clients) do -- Floaters are always on top
        if awful.client.floating.get(c) or layout == 'floating' then
            if not c.fullscreen then
                c.above = true
            end
            else
                c.above = false
            end
        end
    end)
end
