-- Register your custom bezier or use default paths
-- Note: 'borderangle' handles the rotation loop
-- 1. Create a perfectly straight, linear pacing path
hl.curve("linear_loop", {
    type = "bezier",
    points = { {0, 0}, {1, 1} }
})

-- 2. Bind the loop to the borderangle using the new linear curve
hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 20,                  -- Lower numbers = slower, smoother spin
    bezier = "linear_loop",      -- Forces constant movement instead of freezing
    style = "loop"               -- Keeps it moving infinitely
})

hl.config({
  debug = {
    vfr = true,
  },
})

hl.config({
  decoration = {
    shadow = {
      enabled = false,
    },
    blur = {
      enabled = false,
    },
  },
})


-- Configure the screen with integer scaling
hl.monitor({
  output = "eDP-1",
  mode = "preferred",
  position = "auto",
  scale = 1,
})



hl.config({
    general = {
        border_size = 3,
        col = {
            active_border = {
                colors = { "#c5836b","#f1b672", "#ffde94"  }, -- Your Sherbet colors
                angle = 0                        -- Must have an initial angle!
            },
            inactive_border = "#45475a"
        }
    }
})
