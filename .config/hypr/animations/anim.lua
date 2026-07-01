-- ┏━┃┏━ ┛┏┏ ┏━┃━┏┛┛┏━┃┏━ ┏━┛
-- ┏━┃┃ ┃┃┃┃┃┏━┃ ┃ ┃┃ ┃┃ ┃━━┃
-- ┛ ┛┛ ┛┛┛┛┛┛ ┛ ┛ ┛━━┛┛ ┛━━┛
hl.config({
	animations = {
		enabled = true,
	},
})

-- The more “stiffness”, the more speed, and the more “dampening”, the less bounce => for type = Spring
hl.curve("default", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("quar", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })
hl.curve("wind", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("winIn", { type = "bezier", points = { { 0.1, 1.1 }, { 0.1, 1.1 } } })
hl.curve("winOut", { type = "bezier", points = { { 0.3, -0.3 }, { 0, 1 } } })
hl.curve("smoothOut", { type = "bezier", points = { { 0.5, 0 }, { 0.99, 0.99 } } })
hl.curve("bounce", { type = "bezier", points = { { 0.4, 0.9 }, { 0.6, 1.0 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "quart", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, bezier = "smoothOut", style = "slide" })
hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "bounce", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 5, bezier = "bounce", style = "slide" })
hl.animation({ leaf = "fade", enabled = true, speed = 6, bezier = "quart" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "wind" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "quart", style = "slidevert" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 5, bezier = "bounce" })

-- animation = windows, 1, 6, quart, slide
-- animation = windowsIn, 1, 5, winIn, slide
-- animation = windowsOut, 1, 4, smoothOut, slide
--
-- animation = layers, 1, 4, bounce, slide
-- animation = layersOut, 1, 5, bounce, slide
--
-- animation = fade, 1, 6, quart
-- animation = fadeLayers, 1, 10, default
--
-- animation = border, 1, 6, wind
--
-- animation = workspaces, 1, 6, quart, slidevert
--
-- animation = zoomFactor, 1, 5, bounce
