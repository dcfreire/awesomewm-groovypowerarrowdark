local awful = require("awful")
local markup  = require("lain.util.markup")
local theme = require("themes.powerarrow-dark.settings")
local lain  = require("lain")

local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = theme.font,
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

local clock_widget = {
    clock,
    theme.spr,
}

return clock_widget