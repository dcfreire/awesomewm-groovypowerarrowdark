local theme_settings = {}
local dpi   = require("beautiful.xresources").apply_dpi
local wibox = require("wibox")

-- Theme Settings
theme_settings.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-dark"
theme_settings.wallpaper                                 = theme_settings.dir .. "/jap1.jpg"
theme_settings.font                                      = "Iosevka 11"
theme_settings.fg_normal                                 = "#fbf1c7"
theme_settings.fg_focus                                  = "#fb4934"
theme_settings.fg_urgent                                 = "#cc241d"
theme_settings.bg_normal                                 = "#1d2021"
theme_settings.bg_focus                                  = "#303030" --#282828
theme_settings.bg_urgent                                 = "#1d2021"
theme_settings.border_width                              = dpi(1)
theme_settings.border_normal                             = "#3c3836"
theme_settings.border_focus                              = "#504945"
theme_settings.border_marked                             = "#fb4934"
theme_settings.tasklist_bg_focus                         = "#1d2021"
theme_settings.titlebar_bg_focus                         = theme_settings.bg_focus
theme_settings.titlebar_bg_normal                        = theme_settings.bg_normal
theme_settings.titlebar_fg_focus                         = theme_settings.fg_focus
theme_settings.menu_height                               = dpi(16)
theme_settings.menu_width                                = dpi(140)
theme_settings.menu_submenu_icon                         = theme_settings.dir .. "/icons/submenu.png"
theme_settings.taglist_squares_sel                       = theme_settings.dir .. "/icons/square_sel.png"
theme_settings.taglist_squares_unsel                     = theme_settings.dir .. "/icons/square_unsel.png"

-- Layout Icons
theme_settings.layout_tile                               = theme_settings.dir .. "/icons/tile.png"
theme_settings.layout_tileleft                           = theme_settings.dir .. "/icons/tileleft.png"
theme_settings.layout_tilebottom                         = theme_settings.dir .. "/icons/tilebottom.png"
theme_settings.layout_tiletop                            = theme_settings.dir .. "/icons/tiletop.png"
theme_settings.layout_fairv                              = theme_settings.dir .. "/icons/fairv.png"
theme_settings.layout_fairh                              = theme_settings.dir .. "/icons/fairh.png"
theme_settings.layout_spiral                             = theme_settings.dir .. "/icons/spiral.png"
theme_settings.layout_dwindle                            = theme_settings.dir .. "/icons/dwindle.png"
theme_settings.layout_max                                = theme_settings.dir .. "/icons/max.png"
theme_settings.layout_fullscreen                         = theme_settings.dir .. "/icons/fullscreen.png"
theme_settings.layout_magnifier                          = theme_settings.dir .. "/icons/magnifier.png"
theme_settings.layout_floating                           = theme_settings.dir .. "/icons/floating.png"

-- Widget Icons
theme_settings.widget_ac                                 = theme_settings.dir .. "/icons/ac.png"
theme_settings.widget_battery                            = theme_settings.dir .. "/icons/battery.png"
theme_settings.widget_battery_low                        = theme_settings.dir .. "/icons/battery_low.png"
theme_settings.widget_battery_empty                      = theme_settings.dir .. "/icons/battery_empty.png"
theme_settings.widget_mem                                = theme_settings.dir .. "/icons/mem.png"
theme_settings.widget_cpu                                = theme_settings.dir .. "/icons/cpu.png"
theme_settings.widget_temp                               = theme_settings.dir .. "/icons/temp.png"
theme_settings.widget_net                                = theme_settings.dir .. "/icons/net.png"
theme_settings.widget_hdd                                = theme_settings.dir .. "/icons/hdd.png"
theme_settings.widget_music                              = theme_settings.dir .. "/icons/note.png"
theme_settings.widget_music_on                           = theme_settings.dir .. "/icons/note_on.png"
theme_settings.widget_vol                                = theme_settings.dir .. "/icons/vol.png"
theme_settings.widget_vol_low                            = theme_settings.dir .. "/icons/vol_low.png"
theme_settings.widget_vol_no                             = theme_settings.dir .. "/icons/vol_no.png"
theme_settings.widget_vol_mute                           = theme_settings.dir .. "/icons/vol_mute.png"
theme_settings.widget_mail                               = theme_settings.dir .. "/icons/mail.png"
theme_settings.widget_mail_on                            = theme_settings.dir .. "/icons/mail_on.png"
theme_settings.widget_keyboard                            = theme_settings.dir .. "/icons/keyboard.png"


-- Misc
theme_settings.tasklist_plain_task_name                  = true
theme_settings.tasklist_disable_icon                     = true
theme_settings.useless_gap                               = dpi(3)
theme_settings.notification_icon_size                    = 50
theme_settings.spr = wibox.widget.textbox(' ')

return theme_settings