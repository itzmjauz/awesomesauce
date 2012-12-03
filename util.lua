require('naughty')

function say(title, text)
    if text == nil then
        naughty.notify({
            text = tostring(title)
        })
    else
        naughty.notify({
            title = tostring(title),
            text = tostring(text)
        })
    end
end
