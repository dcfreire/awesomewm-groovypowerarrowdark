local theme = require("themes.powerarrow-dark.settings")
local wibox = require("wibox")
local lain  = require("lain")
local markup = lain.util.markup

local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    tempfile = "/sys/class/hwmon/hwmon2/temp2_input",
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})


local temp_widget = {
    tempicon,
    temp.widget,
}

return temp_widget