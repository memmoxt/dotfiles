-- Memmo's custom config 2026

-- ASCII art done with:
-- https://patorjk.com/software/taag/#p=display&f=Big&t=Monitors&x=none&v=4&h=4&w=80&we=false

--  _  __          _     _           _     
-- | |/ /         | |   (_)         | |    
-- | ' / ___ _   _| |__  _ _ __   __| |___ 
-- |  < / _ \ | | | '_ \| | '_ \ / _` / __|
-- | . \  __/ |_| | |_) | | | | | (_| \__ \
-- |_|\_\___|\__, |_.__/|_|_| |_|\__,_|___/
--            __/ |                        
--           |___/                         

-- Toggle float window, use Super + Alt and arrows to resize it
hl.bind("SUPER + i", hl.dsp.window.float())

--
--     /\
--    /  \   _ __  _ __  ___
--   / /\ \ | '_ \| '_ \/ __|
--  / ____ \| |_) | |_) \__ \
-- /_/    \_\ .__/| .__/|___/
--          | |   | |
--          |_|   |_|

-- Type "hyprctl clients" in the terminal to list the current open apps in hyprland

--------------------------
----  Foot terminal  ----
--------------------------

-- Apply opacity to the foot terminal via Hyprland's native Lua API
-- ATTENTION go to ~/.config/hypr/hyprland/rules.lua
-- and remove foot from "Opaque apps" rule to apply the changes below
hl.window_rule({
    match = { class = "foot" },
    opacity = "0.92 0.88 override"
})

------------------------------
----  Other applications  ----
------------------------------
hl.window_rule({
    match = { class = "krita" },
    opacity = "1 1 override"
})
hl.window_rule({
    match = { class = "org.inkscape.Inkscape" },
    opacity = "1 1 override"
})

-----------------------------------
---- Blender App dialog sizing ----
-----------------------------------

-- Blender: make the "Open File" browser dialog readable from spawn
hl.window_rule({
    match  = { initial_title = "File Browser", class = "blender" },
    float  = true,
    size   = "(monitor_w*0.6) (monitor_h*0.7)",
    center = true,
})




--   _____                   _
--  |_   _|                 | |
--    | |  _ __  _ __  _   _| |_
--    | | | '_ \| '_ \| | | | __|
--   _| |_| | | | |_) | |_| | |_
--  |_____|_| |_| .__/ \__,_|\__|
--              | |
--              |_|

-- type: "hyprctl devices" on terminal to see the devices names available

--------------------------
---- Keyboard Layouts ----
--------------------------

hl.config({
    input = {
        kb_layout  = "us,us",
        kb_variant = " ,intl",
        -- to type "ç" enable us-intl variant layout and press (AltR + ,)
        -- to type "à" enable us-intl variant layout and press (` + a) - is the number layer with z in your Miryoku Layout
        kb_options = "fkeys:basic_13-24",

    },
})

-- Bind to rotate to the next layout on the list
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("hyprctl switchxkblayout current next"))

--------------------------
----- Tablet Config ------
--------------------------
hl.device({
    name = "wacom-intuos-pro-m-pen",
    output = "DP-1",
    active_area_size = "224 148",
    region_size = "2560 1692"
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})


--  __  __             _ _
-- |  \/  |           (_) |
-- | \  / | ___  _ __  _| |_ ___  _ __ ___
-- | |\/| |/ _ \| '_ \| | __/ _ \| '__/ __|
-- | |  | | (_) | | | | | || (_) | |  \__ \
-- |_|  |_|\___/|_| |_|_|\__\___/|_|  |___/


-- Monitor Config
-- type: "hyprctl monitors" in the terminal to see all available monitors with refresh rate
hl.monitor({
    output = "DP-1",
    mode = "2560x1440@74.92",
    position = "0x0",
    scale = 1,
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@74.92",
    position = "2560x0",
    scale = 1,
})
