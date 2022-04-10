local theme = require("themes.powerarrow-dark.settings")
local lain  = require("lain")
local wibox = require("wibox")
local markup = lain.util.markup


local mailicon = wibox.widget.imagebox(theme.widget_mail)
--[[ commented because it needs to be set before use--]]

--mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn("mailspring") end)))

theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "",
    mail     = "",
    is_plain = true,
    password = "",
    settings = function()
        if mailcount > 0 then
            widget:set_markup(markup.font(theme.font, " " .. mailcount .. " "))
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})
