for _, leaf in ipairs({ "workspaces", "workspacesIn", "workspacesOut" }) do
  hl.animation({ leaf = leaf, enabled = true, speed = 3, bezier = "default", style = "slidefade 20%" })
end
