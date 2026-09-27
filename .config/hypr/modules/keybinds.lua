-- ┃ ┃┏━┛┃ ┃┏━ ┛┏━ ┏━ ┏━┛
-- ┏┛ ┏━┛━┏┛┏━┃┃┃ ┃┃ ┃━━┃
-- ┛ ┛━━┛ ┛ ━━ ┛┛ ┛━━ ━━┛

-- format = hl.bind(keys, dispatcher, { flag1 = true, flag2 = true })

local mainMod = "SUPER" -- sets "Windows" key as main modifier

-- General
hl.bind("CTRL+ALT+RETURN", hl.dsp.exec_cmd("kitty"))
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
