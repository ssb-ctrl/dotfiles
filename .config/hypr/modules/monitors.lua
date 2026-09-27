-- ┏┏ ┏━┃┏━ ┛━┏┛┏━┃┏━┃┏━┛
-- ┃┃┃┃ ┃┃ ┃┃ ┃ ┃ ┃┏┏┛━━┃
-- ┛┛┛━━┛┛ ┛┛ ┛ ━━┛┛ ┛━━┛

hl.monitor({
	output = "eDP-1",
	position = "0x0",
	scale = 2.0,
	mode = "2880x1800@90", -- "highrr" or "highres" or "preferred"
	transform = 0, -- 0 to 7, 0 to 3 rotates anti-clockwise and then it is inverted
	cm = "hdr",
	supports_hdr = 1, -- force HDR support, -1 = off, 0 = auto, 1 = on
})
