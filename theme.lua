--[[
     Groovy Powerarrow Dark Awesome WM theme
     https://github.com/funnisquares
--]]

local gears             = require("gears")
local lain              = require("lain")
local awful             = require("awful")
local wibox             = require("wibox")
local dpi               = require("beautiful.xresources").apply_dpi
local theme_settings    = require("themes.powerarrow-dark.settings")

-- Widgets
local music_widget      = require("themes.powerarrow-dark.widgets.music_widget")
local clock_widget      = require("themes.powerarrow-dark.widgets.textclock")
local volume_widget     = require("themes.powerarrow-dark.widgets.volume")
local keyboard_widget   = require("themes.powerarrow-dark.widgets.keyboard")
local dualsense_widget  = require("themes.powerarrow-dark.widgets.dualsense")
local memory_widget     = require("themes.powerarrow-dark.widgets.memory")
local cpu_widget        = require("themes.powerarrow-dark.widgets.cpu")
local temp_widget       = require("themes.powerarrow-dark.widgets.temp")
local fs_widget         = require("themes.powerarrow-dark.widgets.fs")
local net_widget        = require("themes.powerarrow-dark.widgets.net")


local my_table          = awful.util.table or gears.table -- 4.{0,1} compatibility
local theme             = theme_settings


local separators        = lain.util.separators


-- Separators
local arrl_dl           = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld           = separators.arrow_left("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    local function filter(t)
        return t.name ~= "hidden"
    end
    s.mytaglist = awful.widget.taglist(s, filter, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)


    local layout_widget = {
        s.mylayoutbox,
    }

    local active_widgets = {
        dualsense_widget,
        music_widget,
        volume_widget,
        keyboard_widget,
        memory_widget,
        cpu_widget,
        temp_widget,
        fs_widget,
        net_widget,
        clock_widget,
        layout_widget
    }

    local right_widgets = {
        layout = wibox.layout.fixed.horizontal,
        wibox.widget.systray(),
        theme.spr,
    }

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(22), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add the widgets (with the right background colors and arrows)
    local function mergeTables(t1, t2)
        for k,v in ipairs(t2) do
           table.insert(t1, v)
        end
        return t1
    end

    for i, widget in ipairs(active_widgets) do
        if i % 2 == 1 then
            table.insert(right_widgets, arrl_ld)
            for _, v in ipairs(widget) do
                table.insert(right_widgets, wibox.container.background(v, theme.bg_focus))
            end
        else
            table.insert(right_widgets, arrl_dl)
            mergeTables(right_widgets, widget)
        end
    end

    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --theme.spr,
            s.mytaglist,
            s.mypromptbox,
            theme.spr,
        },
        s.mytasklist, -- Middle widget,
        right_widgets,
    }

end

return theme