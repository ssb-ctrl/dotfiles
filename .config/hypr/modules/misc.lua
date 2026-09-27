-- ┏┏ ┛┏━┛┏━┛┏━┛┃  ┃  ┏━┃┏━ ┏━┛┏━┃┃ ┃┏━┛
-- ┃┃┃┃━━┃┃  ┏━┛┃  ┃  ┏━┃┃ ┃┏━┛┃ ┃┃ ┃━━┃
-- ┛┛┛┛━━┛━━┛━━┛━━┛━━┛┛ ┛┛ ┛━━┛━━┛━━┛━━┛
hl.config({
	misc = {
		disable_autoreload = false, -- if true then use hyprctl reload manually
		enable_anr_dialog = true, -- whether to enable (app not responding) dialog when your apps hang
		middle_click_paste = false,
		key_press_enables_dpms = true,
		mouse_move_enables_dpms = true,
		-- mouse_move_focuses_monitor = true,
		font_family = "CaskaydiaCove Nerd Font", -- global default font for Hyprland-rendered text
		splash_font_family = "CaskaydiaCove Nerd Font",
		col = {
			splash = 0xafffffff,
		},
		force_default_wallpaper = -1, -- Enforce any of the 3 default wallpapers. 0 - disables the anime background, 1 - disables the anime background, 2 - enables anime background, -1 - random
		vrr = 0, -- controls the VRR (Adaptive Sync) of your monitors. 0 - off, 1 - on, 2 - fullscreen only, 3 - fullscreen with video or game content
		focus_on_activate = false,
		animate_manual_resizes = false,
		animate_mouse_windowdragging = false,
		disable_hyprland_logo = true, -- Disables the random Hyprland logo/anime girl background
		background_color = 0x111111, -- Change the background color (requires enabled disable_hyprland_logo)
	},
})
