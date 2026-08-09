local M = {}

local layout_profiles = {
  { name = "US, RU",          layout = "us, ru",     variant = "" },
  { name = "US, RU, UA",      layout = "us, ru, ua", variant = "" },
  { name = "US, SK", layout = "us, sk",     variant = ", qwerty" }
}

local current_kb_profile = 1

function M.toggle()
  current_kb_profile = (current_kb_profile % #layout_profiles) + 1
  local profile = layout_profiles[current_kb_profile]

  hl.config({
    input = {
      kb_layout = profile.layout,
      kb_variant = profile.variant
    }
  })

  local notify_cmd = string.format(
    'notify-send -t 1500 "Keyboard Layout" "Group: %s"',
    profile.name
  )

  hl.exec_cmd(notify_cmd)
end

return M
