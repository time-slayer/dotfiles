local focus_on_active_classes = "^(firefox|codium|dev\\.zed\\.Zed|osu!)$"
hl.window_rule({ match = { class = focus_on_active_classes }, focus_on_activate = true })
