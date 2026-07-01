-- ┏━┃┃  ┃ ┃┏━┛┛┏━ ┏━┛
-- ┏━┛┃  ┃ ┃┃ ┃┃┃ ┃━━┃
-- ┛  ━━┛━━┛━━┛┛┛ ┛━━┛
hl.config({
	plugin = {
		scrolloverview = {
			gesture_distance = 300, -- how far is the "max" for the gesture
			scale = 0.5, -- preferred overview scale
			workspace_gap = 80,
			layout = "vertical", -- vertical or horizontal
			wallpaper = 2, -- 0: global only, 1: per-workspace only, 2: both
			blur = true, -- blur only the main overview wallpaper
			shadow = {
				enabled = true,
				range = 40,
				render_power = 4,
				color = 0xee1a1a1a,
			},
		},
	},
})
