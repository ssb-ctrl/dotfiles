-- ┏━┃┃ ┃━┏┛┏━┃┏━┛━┏┛┏━┃┏━┃━┏┛
-- ┏━┃┃ ┃ ┃ ┃ ┃━━┃ ┃ ┏━┃┏┏┛ ┃
-- ┛ ┛━━┛ ┛ ━━┛━━┛ ┛ ┛ ┛┛ ┛ ┛
hl.on("hyprland.start", function()
	-- This will make sure that xdg-desktop-portal-hyprland can get the required variables on startup
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	-- hl.exec_cmd("$HOME/.local/bin/scripts/xdp_nuclear_option.sh")

	-- uniform cursor across the system
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")

	-- status bar
	hl.exec_cmd("waybar")

	-- Notification Daemon
	hl.exec_cmd("mako")

	-- Udiskie for notifications related to mounted devices
	hl.exec_cmd("udiskie")

	-- Authentication daemon for hyprland
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Wallpaper daemon
	hl.exec_cmd("awww-daemon")

	-- hypridle listner daemon
	hl.exec_cmd("hypridle")

	-- clipboard manager
	hl.exec_cmd("wl-clip-persist -c both") -- For persistent copy of clipboard content into cliphist
	hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Pipes/sends copied text to cliphist
	hl.exec_cmd("wl-paste --type image --watch cliphist store") -- Pipes/sends copied image to cliphist

	-- X11
	hl.exec_cmd("xrdb -merge ~/.Xresources")

	-- Plugins reload
	hl.exec_cmd("hyprpm reload")

	-- Greetings
	hl.exec_cmd('notify-send "Hyprland" "Welcome Back, Satya" -u normal -i ~/Pictures/icons/hyprland.png')
end)
