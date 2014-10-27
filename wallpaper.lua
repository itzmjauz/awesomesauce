local wallpaper = require('beautiful').wallpaper
if not wallpaper then return end
local gears = require('gears')

for s = 1, screen.count() do
    gears.wallpaper.maximized(wallpaper, s, true)
end
