-- ┃┃┃┛┏━ ┏━ ┏━┃┃┃┃┏━┛
-- ┃┃┃┃┃ ┃┃ ┃┃ ┃┃┃┃━━┃
-- ━━┛┛┛ ┛━━ ━━┛━━┛━━┛
hl.window_rule({
	name = "Ignore maximize requests from apps",
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})
hl.window_rule({
	name = "Fix some dragging issues with XWayland",
	match = {
		class = "^&",
		title = "^&",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})
