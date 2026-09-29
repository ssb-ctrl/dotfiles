-- ┛┏━ ┏━┃┃ ┃━┏┛
-- ┃┃ ┃┏━┛┃ ┃ ┃
-- ┛┛ ┛┛  ━━┛ ┛
hl.config({
	input = {
		focus_on_close = 2,
		follow_mouse = 1,
		natural_scroll = false,
		sensitivity = 0, -- global mouse sensitivity setting [-1,1]
		scroll_factor = 1, -- 0 to 100
		repeat_delay = 320, -- first keystroke
		repeat_rate = 45, -- repeating a keystoke

		touchpad = {
			natural_scroll = true, -- When enabled, scrolling moves content directly
			scroll_factor = 0.4, -- 0 to 1
			clickfinger_behavior = true,
		},
	},
})

-- ┏━┃┏━┛┏━┃  ┏━ ┏━┛┃ ┃┛┏━┛┏━┛
-- ┏━┛┏━┛┏┏┛━┛┃ ┃┏━┛┃ ┃┃┃  ┏━┛
-- ┛  ━━┛┛ ┛  ━━ ━━┛ ┛ ┛━━┛━━┛
-- hl.device({
--   name = ""
-- })

-- ┏━┛┏━┛┏━┛━┏┛┃ ┃┏━┃┏━┛┏━┛
-- ┃ ┃┏━┛━━┃ ┃ ┃ ┃┏┏┛┏━┛━━┃
-- ━━┛━━┛━━┛ ┛ ━━┛┛ ┛━━┛━━┛
-- gesture = 3, horizontal, workspace
