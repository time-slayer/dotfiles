for _, leaf in ipairs({ "workspaces", "workspacesIn", "workspacesOut" }) do
  hl.animation({ leaf = leaf, enabled = true, speed = 3, bezier = "default", style = "slidefade 20%" })
end


hl.animation({leaf = "border", enabled = true, speed = 10, bezier = "linear"})
hl.animation({leaf = "borderangle", enabled = true, speed = 50, bezier = "default"})
-- hl.animation({leaf = "", enabled = true, speed = 50, bezier = "default", style = "once"})