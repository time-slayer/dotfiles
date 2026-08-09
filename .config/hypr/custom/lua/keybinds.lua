----------------------------------------------------
-- General Variables
----------------------------------------------------
local mainMod = "SUPER"


----------------------------------------------------
-- Programs
----------------------------------------------------
local terminal = "kitty"
hl.bind(mainMod .. "+ RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. "+ C", hl.dsp.exec_cmd("vscodium"))
hl.bind(mainMod .. "+ T", hl.dsp.exec_cmd("Telegram"))


----------------------------------------------------
-- Window Management
----------------------------------------------------
hl.bind(mainMod .. "+ Q", hl.dsp.window.close())
hl.bind(mainMod .. "+ SHIFT + Q", hl.dsp.window.kill())
hl.bind(mainMod .. "+ F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(mainMod .. "+ SHIFT + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind("ALT + TAB", function()
  hl.dispatch(hl.dsp.window.cycle_next())
  hl.dispatch(hl.dsp.window.bring_to_top())
end)


----------------------------------------------------
-- Layout
----------------------------------------------------
hl.bind(mainMod .. "+ J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. "+ SHIFT + J", hl.dsp.layout("swapsplit"))


----------------------------------------------------
-- Language Profiles
----------------------------------------------------
local layout_profiles = require("custom.lua.layout_profiles")
hl.bind(mainMod .. "+ SHIFT + K", function()
  layout_profiles.toggle()
end)


----------------------------------------------------
-- Global
----------------------------------------------------
hl.bind("SUPER + F10", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" }))