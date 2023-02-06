local dualsensebat_widget = require("widgets.dualsense.dualsense")
local theme = require("themes.powerarrow-dark.settings")

local dualsense = dualsensebat_widget{font=theme.font}

local dualsense_widget = {
    dualsense,
}


return dualsense_widget