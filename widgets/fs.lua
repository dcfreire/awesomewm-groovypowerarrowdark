local theme = require("themes.powerarrow-dark.settings")
local wibox = require("wibox")
local lain  = require("lain")
local markup = lain.util.markup

local fsicon = wibox.widget.imagebox(theme.widget_hdd)
-- commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. fs_now["/"].percentage .. "% "))
    end
})

local fs_widget = {
    fsicon,
    theme.fs.widget,
}

return fs_widget