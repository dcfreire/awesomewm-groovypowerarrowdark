
local theme = require("themes.powerarrow-dark.settings")
local wibox = require("wibox")
local keyboardlayoyt_widget = require("widgets.keyboard.keyboard")


local keyboardicon = wibox.widget.imagebox(theme.widget_keyboard)
local keyboard = keyboardlayoyt_widget{font=theme.font}

local keyboard_widget = {
    keyboardicon,
    theme.spr,
    theme.spr,
    theme.spr,
    theme.spr,
    keyboard,
    theme.spr,
}

return keyboard_widget