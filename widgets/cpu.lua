local lain  = require("lain")
local wibox = require("wibox")
local theme = require("themes.powerarrow-dark.settings")
local markup = lain.util.markup



local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
    end
})


local cpu_widget = {
    cpuicon,
    cpu.widget,
}

return cpu_widget