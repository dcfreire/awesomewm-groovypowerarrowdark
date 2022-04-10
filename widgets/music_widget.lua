
local theme_settings = require("themes.powerarrow-dark.settings")
local playerctl_widget = require("widgets.playerctl.playerctl")
local awful = require("awful")
local wibox = require("wibox")


local musicicon = wibox.widget.imagebox(theme_settings.widget_music)
musicicon:connect_signal("button::press", function(_, _, _, button)
        if (button == 1) then
            awful.spawn.with_shell("spotify.sh")
        end
    end)

local playerctl = playerctl_widget{font=theme_settings.font, bg=theme_settings.bg_normal, fg=theme_settings.fg_normal}

local music_widget = {
    musicicon,
    playerctl,
    playerctl.widget,
    theme_settings.spr,
}

return music_widget