-- ┏━┛┏━ ┃ ┃
-- ┏━┛┃ ┃┃ ┃
-- ━━┛┛ ┛ ┛

-- XDG session
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Neovim as the default editor of choice
hl.env("EDITOR", "nvim")
-- Foot as the default terminal
hl.env("TERMINAL", "foot")

-- Mouse cursor
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "24")

-- Proton compatibility layer
hl.env("PROTON_ENABLE_WAYLAND", "1")
hl.env("PROTON_ENABLE_HDR", "1")

-- Rust trace logs
hl.env("RUST_BACKTRACE", "1") -- full,1 or 0

-- QT
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- GTK
hl.env("GDK_SCALE", "2")
hl.env("GDK_BACKEND", "wayland")
hl.env("GTK_THEME", "Tokyonight-Moon")

-- Other GUI toolkits backend
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
