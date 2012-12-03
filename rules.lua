require('awful.rules')

awful.rules.rules = {
    -- All clients will match this rule.
    {
        rule = {},
        properties = {
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = true,
            keys = clientkeys,
            buttons = clientbuttons,
            size_hints_honor = false
        }
    },
    {
        rule = {
            class='MPlayer'
        },
        properties = {
            floating=true
        }
    },
    {
        rule = {
            class = 'pinentry'
        },
        properties = {
            floating=true
        }
    },
    {
        rule = {
            class='gimp'
        },
        properties = {
            floating = true
        }
    },
}
