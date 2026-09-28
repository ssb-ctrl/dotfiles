-- ┏┏ ┏━┃┏━ ┃ ┃┃  ┏━┛┏━┛
-- ┃┃┃┃ ┃┃ ┃┃ ┃┃  ┏━┛━━┃
-- ┛┛┛━━┛━━ ━━┛━━┛━━┛━━┛
require("modules.env")
require("modules.monitors")
require("modules.input")
require("modules.rules")
require("modules.misc")
require("animations.anim") -- 4, 7, 10, 11 and 12, 14, 15,
require("modules.keybinds")
require("modules.plugins")
require("modules.autostart")

hl.config({

	-- ┏━ ┃┃┃┛┏━ ┏━ ┃  ┏━┛
	-- ┃ ┃┃┃┃┃┃ ┃┃ ┃┃  ┏━┛
	-- ━━ ━━┛┛┛ ┛━━ ━━┛━━┛
	dwindle = {
		force_split = 2, --  0 - split follows mouse, 1 - always split to the left (new = left or top), 2 - always split to the right (new = right or bottom)
		preserve_split = false,
	},

	-- ┏━┛┏━┛┏━┃┏━┃┃  ┃  ┛┏━ ┏━┛
	-- ━━┃┃  ┏┏┛┃ ┃┃  ┃  ┃┃ ┃┃ ┃
	-- ━━┛━━┛┛ ┛━━┛━━┛━━┛┛┛ ┛━━┛
	scrolling = {
		fullscreen_on_one_column = false,
		column_width = 0.65,
		follow_min_visible = 0.2,
		focus_fit_method = 0,
		direction = "right",
	},

	-- ┏━┛┏━┛┏━ ┏━┛┏━┃┏━┃┃
	-- ┃ ┃┏━┛┃ ┃┏━┛┏┏┛┏━┃┃
	-- ━━┛━━┛┛ ┛━━┛┛ ┛┛ ┛━━┛
	general = {
		border_size = 2,
		gaps_in = 5,
		gaps_out = 8,
		-- gaps_workspaces = 0, -- [0,100] stacks with gaps_out
		layout = "dwindle", -- Which layout to use. Options: "dwindle"/"master"/"scrolling"/"monocle"
		col = {
			active_border = 0xff82aaff,
			inactive_border = 0xff182323,
		},
	},

	-- ┏━ ┏━┛┏━┛┏━┃┏━┃┏━┃━┏┛┛┏━┃┏━ ┏━┛
	-- ┃ ┃┏━┛┃  ┃ ┃┏┏┛┏━┃ ┃ ┃┃ ┃┃ ┃━━┃
	-- ━━ ━━┛━━┛━━┛┛ ┛┛ ┛ ┛ ┛━━┛┛ ┛━━┛
	decoration = {
		active_opacity = 1,
		inactive_opacity = 0.92,
		fullscreen_opacity = 1,
		-- rounding = 9,
		-- rounding_power = 5,
		dim_inactive = 1,
		dim_strength = 0.14,

		blur = {
			enabled = true,
			ignore_opacity = false, -- Make the blur layer ignore the opacity of the window
			size = 9,
			passes = 3,
			brightness = 0.8172,
			vibrancy = 0.1696,
			popups = true,
			xray = true, -- lighter on gpu as it considers only the wallpaper as reference for floating windows
			-- variant = "acrylic", -- kawase, acrylic, aurora, drops, fluid_jar, frost, haze, heat_shimmer, prism, ripple, water
		},

		shadow = {
			enabled = false,
			range = 10,
			render_power = 8,
			color = 0xee1a1a1a,
			scale = 1, -- [0.05,2.0]
		},

		glow = {
			enabled = false,
			range = 20,
			render_power = 6,
			color = 0xee72aaff,
		},

		motion_blur = {
			enabled = false,
			samples = 8, -- [1-64] More will mean clearer blur, at the cost of more compute
		},

		wobble = {
			enabled = false,
			mesh = 12,
			stiffness = 200, -- [0.0001, 1000]
			mass = 1, -- [0.0001, 1000]
			intensity = 0.4, -- [0,3]
			value_epsilon = 0.25, -- [0,100]
			velocity_epsilon = 2, -- [0,1000]
		},
	},

	-- ┏━┛┏━┛┏━┛━┏┛┃ ┃┏━┃┏━┛┏━┛
	-- ┃ ┃┏━┛━━┃ ┃ ┃ ┃┏┏┛┏━┛━━┃
	-- ━━┛━━┛━━┛ ┛ ━━┛┛ ┛━━┛━━┛
	gestures = {
		workspace_swipe_cancel_ratio = 0.6,
		workspace_swipe_invert = false,
	},

	-- ┃ ┃━┃ ━┃
	--  ┛  ┃  ┃
	-- ┛ ┛━━┛━━┛
	xwayland = {
		enabled = true, -- Allow running applications using X11
		force_zero_scaling = true, -- Forces a scale of 1 on Xwayland windows on scaled displays, as Xorg cant scale properly which cause pixelated text
	},

	-- ┏━ ┛┏━ ┏━ ┏━┛
	-- ┏━┃┃┃ ┃┃ ┃━━┃
	-- ━━ ┛┛ ┛━━ ━━┛
	binds = {
		-- workspace_back_and_forth = true
		workspace_center_on = 1, -- Whether switching workspaces should center the cursor on the workspace 0 or on the last active window for that workspace 1
	},

	--┏━┛┏━┃┏━┃┃ ┃┏━┃┏━┛
	--┃ ┃┏┏┛┃ ┃┃ ┃┏━┛━━┃
	--━━┛┛ ┛━━┛━━┛┛  ━━┛
	-- group = {
	-- 	groupbar = {},
	-- },

	-- ┏━┛┃ ┃┏━┃┏━┛┏━┃┏━┃
	-- ┃  ┃ ┃┏┏┛━━┃┃ ┃┏┏┛
	-- ━━┛━━┛┛ ┛━━┛━━┛┛ ┛
	cursor = {
		invisible = false,
		hotspot_padding = 0, -- [0,20] The padding, in logical px, between screen edges and the cursor
		inactive_timeout = 8, -- [0,20]
	},

	--┏━ ┏━┛┏━ ┃ ┃┏━┛
	--┃ ┃┏━┛┏━┃┃ ┃┃ ┃
	--━━ ━━┛━━ ━━┛━━┛
	debug = {
		error_limit = 5,
		error_position = 0, -- 0 - top, 1 bottom
		suppress_errors = true,
	},
	--┏━┃ ┃ ┃┛┏━┃┃ ┃┏━┛
	--┃ ┃ ┃ ┃┃┏┏┛┏┛ ━━┃
	--━━━┛━━┛┛┛ ┛┛ ┛━━┛
	quirks = {
		prefer_hdr = 1, -- 0 - disabled, 1 - always, 2 - gamescope only
	},

	--┏━┛┏━┛┏━┃┏━┛┃ ┃┏━┛━┏┛┏━┛┏┏
	--┏━┛┃  ┃ ┃━━┃━┏┛━━┃ ┃ ┏━┛┃┃┃
	--━━┛━━┛━━┛━━┛ ┛ ━━┛ ┛ ━━┛┛┛┛
	ecosystem = {
		enforce_permissions = false, -- enable to use hyprland permission control
		no_donation_nag = true,
	},
})
