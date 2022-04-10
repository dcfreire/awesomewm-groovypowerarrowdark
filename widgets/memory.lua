local theme = require("themes.powerarrow-dark.settings")
local wibox = require("wibox")
local lain  = require("lain")
local markup = lain.util.markup


local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. mem_now.used .. "MB "))
    end
})

local memory_widget = {
    memicon,
    mem.widget,
}

return memory_widget