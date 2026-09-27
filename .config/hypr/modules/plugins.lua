-- ┏━┃┃  ┃ ┃┏━┛┛┏━ ┏━┛
-- ┏━┛┃  ┃ ┃┃ ┃┃┃ ┃━━┃
-- ┛  ━━┛━━┛━━┛┛┛ ┛━━┛

hl.config({
	plugin = {
		scrolloverview = {
			scale = 0.5, -- preferred overview scale
			workspace_gap = 60,
			layout = "horizontal", -- vertical or horizontal
			wallpaper = 0, -- 0: global only, 1: per-workspace only, 2: both
			blur = false, -- blur only the main overview wallpaper
			cross_monitor_drag = true, -- to drag windows between monitors
			shadow = {
				enabled = false,
				range = 40,
				render_power = 4,
				color = 0xee1a1a1a,
			},
		},
	},
})
