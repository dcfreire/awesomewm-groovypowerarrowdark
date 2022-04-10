local theme = require("themes.powerarrow-dark.settings")
local wibox = require("wibox")
local lain  = require("lain")
local markup = lain.util.markup



local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup("#7AC82E", " " .. net_now.received)
                          .. " " ..
                          markup("#46A8C3", " " .. net_now.sent .. " ")))
    end
})

local net_widget = {
    neticon,
    net.widget,
}

return net_widget