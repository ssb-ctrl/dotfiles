-- ┃ ┃┏━┛┃ ┃┏━ ┛┏━ ┏━ ┏━┛
-- ┏┛ ┏━┛━┏┛┏━┃┃┃ ┃┃ ┃━━┃
-- ┛ ┛━━┛ ┛ ━━ ┛┛ ┛━━ ━━┛

-- format = hl.bind(keys, dispatcher, { flag1 = true, flag2 = true })

local mainMod = "SUPER" -- sets "Windows" key as main modifier

-- General
hl.bind(mainMod .. "+ALT+RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. "+RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. "+F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" })) -- mode can be “maximized” and “fullscreen”
hl.bind(mainMod .. "+SHIFT+F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })) -- mode can be “maximized” and “fullscreen”
hl.bind(mainMod .. "+V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("CTRL+Q", hl.dsp.window.close())
hl.bind("CTRL+ALT+Q", hl.dsp.window.kill())
hl.bind(mainMod .. "+L", hl.dsp.exec_cmd("$HOME/.local/bin/scripts/wlogout.sh"))
hl.bind("ALT+SPACE", hl.dsp.exec_cmd("fuzzel"))

-- Switch workspaces with mainMod
hl.bind("CTRL+1", hl.dsp.focus({ workspace = 1 }))
hl.bind("CTRL+2", hl.dsp.focus({ workspace = 2 }))
hl.bind("CTRL+3", hl.dsp.focus({ workspace = 3 }))
hl.bind("CTRL+4", hl.dsp.focus({ workspace = 4 }))
hl.bind("CTRL+5", hl.dsp.focus({ workspace = 5 }))
hl.bind("CTRL+6", hl.dsp.focus({ workspace = 6 }))
hl.bind("CTRL+7", hl.dsp.focus({ workspace = 7 }))
hl.bind("CTRL+8", hl.dsp.focus({ workspace = 8 }))
hl.bind("CTRL+9", hl.dsp.focus({ workspace = 9 }))
hl.bind("CTRL+0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace
hl.bind("CTRL+ALT+1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("CTRL+ALT+2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("CTRL+ALT+3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("CTRL+ALT+4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("CTRL+ALT+5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("CTRL+ALT+6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("CTRL+ALT+7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("CTRL+ALT+8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("CTRL+ALT+9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("CTRL+ALT+0", hl.dsp.window.move({ workspace = 10 }))

-- Windows movement
-- 1) cycle tabs
hl.bind(mainMod .. "+Tab", hl.dsp.window.cycle_next({ next = true }))
-- 2) Move focus
hl.bind("ALT+H", hl.dsp.focus({ direction = "left" }))
hl.bind("ALT+L", hl.dsp.focus({ direction = "right" }))
hl.bind("ALT+J", hl.dsp.focus({ direction = "down" }))
hl.bind("ALT+K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. "+ALT+U", hl.dsp.focus({ urgent_or_last = true }))
-- -- 3) Swap active window
hl.bind(mainMod .. "+ALT+H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. "+ALT+L", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. "+ALT+J", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. "+ALT+K", hl.dsp.window.swap({ direction = "up" }))
-- 4) Centre floating window
hl.bind(mainMod .. "+ALT+C", hl.dsp.window.center())

-- Drag and Resize
hl.bind(mainMod .. "+mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. "+mouse:273", hl.dsp.window.resize())

-- #hypridle
hl.bind("CTRL+ALT+L", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/hypridle_kill")
end)
hl.bind("CTRL+SHIFT+ALT+L", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/hypridle_start")
end)

-- Waybar
hl.bind("CTRL+ALT+R", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/waybar_rel")
end)

-- Plugins
hl.bind(mainMod .. "+ I", function()
	hl.plugin.scrolloverview.overview("toggle all")
end, { description = "Toggle ScrollOverview with SUPER+g" })

-- cliphist
hl.bind(mainMod .. "+C", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/cliphist")
end)
hl.bind(mainMod .. "+SHIFT+C", function()
	hl.exec_cmd("cliphist wipe")
end)

-- Awww wallpaper switcher
hl.bind("CTRL+ALT+W", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/awww_selector")
end)

-- Hyprpicker
hl.bind("CTRL+ALT+P", function()
	hl.exec_cmd("hyprpicker -a")
end)

-- Zoom
-- hl.bind(mainMod .. "+Down", function()
-- 	local value = hl.exec_cmd("hyprctl getoption cursor:zoom_factor -j | jq '.float*1.1'")
-- 	hl.exec_cmd("hyprctl -q keyword cursor:zoom_factor" .. value)
-- end)
-- hl.bind(mainMod .. "+Up", function()
-- 	hl.exec_cmd(
-- 		"hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float*0.9) | if . < 1 then .=1 else . end')"
-- 	)
-- end)
-- hl.bind(mainMod .. "+mouse:274", function()
-- 	hl.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1")
-- end)

-- Capslock toggle
-- hl.bind("Caps_Lock", function()
-- 	hl.exec_cmd("$HOME/.local/bin/scripts/capslock")
-- end)

-- Bat conservation mode
hl.bind(mainMod .. "+B", function()
	hl.exec_cmd("sudo $HOME/.local/bin/scripts/conservation_mode")
end)

-- Power-profile daemon
hl.bind(mainMod .. "+Delete", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/performance")
end)
hl.bind(mainMod .. "+Prior", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/balanced")
end)
hl.bind(mainMod .. "+Next", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/power_saving")
end)

-- Screenshot utility (hyprshot+satty)
hl.bind(mainMod .. "+O", function()
	hl.exec_cmd("hyprshot -z --raw -m region | satty -f '-' --resize 600x600")
end)
hl.bind(mainMod .. "+P", function()
	hl.exec_cmd("hyprshot -z --raw -m active -m window | satty -f '-' --resize 600x600")
end)

-- hyprsunset
hl.bind(mainMod .. "+BackSpace", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/hyprsunset_start")
end)
hl.bind(mainMod .. "+ALT+BackSpace", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/hyprsunset_kill")
end)

-- Audio and brightness
hl.bind("XF86MonBrightnessDown", function()
	hl.exec_cmd("brightnessctl s 5%-")
end, { repeating = true })
hl.bind("XF86MonBrightnessUp", function()
	hl.exec_cmd("brightnessctl s 5%+")
end, { repeating = true })
hl.bind("F1", function()
	hl.exec_cmd("brightnessctl s 5%-")
end, { repeating = true })
hl.bind("F2", function()
	hl.exec_cmd("brightnessctl s 5%+")
end, { repeating = true })
hl.bind("XF86AudioLowerVolume", function()
	hl.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%")
end, { repeating = true })
hl.bind("XF86AudioRaiseVolume", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/max_vol")
end, { repeating = true })
hl.bind("F11", function()
	hl.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%")
end, { repeating = true })
hl.bind("F12", function()
	hl.exec_cmd("$HOME/.local/bin/scripts/max_vol")
end, { repeating = true })
hl.bind("XF86AudioMute", function()
	hl.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
end)
hl.bind("F10", function()
	hl.exec_cmd("wpctl set-mute @DEFAULT_SINK@ toggle")
end)
