local wezterm = require "wezterm"

local module = {}

-- Define the colors just once
-- https://ethanschoonover.com/solarized/#the-values
local base03 = "lab(15% -12 -12)"  -- #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
local base02 = "lab(20% -12 -12)"  -- #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
local base01 = "lab(45% -07 -07)"  -- #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
local base00 = "lab(50% -07 -07)"  -- #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
local base0 = "lab(60% -06 -03)"   -- #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
local base1 = "lab(65% -05 -02)"   -- #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
local base2 = "lab(92% -00  10)"   -- #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
local base3 = "lab(97%  00  10)"   -- #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
local yellow = "lab(60%  10  65)"  -- #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
local orange = "lab(50%  50  55)"  -- #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
local red = "lab(50%  65  45)"     -- #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
local magenta = "lab(50%  65 -05)" -- #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
local violet = "lab(50%  15 -45)"  -- #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
local blue = "lab(55% -10 -45)"    -- #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
local cyan = "lab(60% -35 -05)"    -- #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
local green = "lab(60% -20  65)"   -- #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

local ansi = {
  base02,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  base2
}
local brights = {
  base03,
  orange,
  base01,
  base00,
  base0,
  violet,
  base1,
  base3
}

function module.apply_to_config(config)
  config.color_schemes = {
    -- https://ethanschoonover.com/solarized/#usage-development
    -- "none" for selection_fg since the solarized selection_bg is designed to work without it
    ["Canonical Solarized Light"] = {
      foreground = base00,
      background = base3,
      cursor_fg = base2,
      cursor_bg = base01,
      cursor_border = base01,
      selection_fg = "none",
      selection_bg = base2,
      ansi = ansi,
      brights = brights,
      scrollbar_thumb = base01,
      split = base01,
      visual_bell = base00,
      compose_cursor = orange,
      copy_mode_active_highlight_fg = { Color = orange },
      copy_mode_active_highlight_bg = { Color = base2 },
      copy_mode_inactive_highlight_fg = { Color = base1 },
      copy_mode_inactive_highlight_bg = { Color = base2 },
      quick_select_label_fg = { Color = orange },
      quick_select_label_bg = { Color = base2 },
      quick_select_match_fg = { Color = base1 },
      quick_select_match_bg = { Color = base2 }
    },
    ["Canonical Solarized Dark"] = {
      foreground = base0,
      background = base03,
      cursor_fg = base00,
      cursor_bg = base3,
      cursor_border = base3,
      selection_fg = "none",
      selection_bg = base02,
      ansi = ansi,
      brights = brights,
      scrollbar_thumb = base3,
      split = base3,
      visual_bell = base0,
      compose_cursor = orange,
      copy_mode_active_highlight_fg = { Color = orange },
      copy_mode_active_highlight_bg = { Color = base02 },
      copy_mode_inactive_highlight_fg = { Color = base01 },
      copy_mode_inactive_highlight_bg = { Color = base02 },
      quick_select_label_fg = { Color = orange },
      quick_select_label_bg = { Color = base02 },
      quick_select_match_fg = { Color = base01 },
      quick_select_match_bg = { Color = base02 }
    }
  }

  -- Solarized is incompatible with this option
  config.bold_brightens_ansi_colors = "No"
end

return module
