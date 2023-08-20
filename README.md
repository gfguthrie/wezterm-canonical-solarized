# Canonical Solarized Color Scheme for Wezterm
[Wezterm](https://wezfurlong.org/wezterm/) is a terminal emulator that supports true color via CSS Color 4. The [Solarized](https://ethanschoonover.com/solarized/) color palette is defined with L\*a\*b values, and so we have the opportunity to define a color scheme in Wezterm using the canonical color space of Solarized.

This repo is not strictly a color scheme for Wezterm, but rather a Lua module that defines the Solarized schemes to be applied to your Wezterm config. This is mainly because of the need to specify `bold_brightens_ansi_colors = false` as part of the scheme – the way that Solarized defines its terminal colors is not compatible with this option. Additionally, we can define the light theme, the dark theme, and the terminal colors just once and refer to them as necessary.

Also included is an optional module that will automatically switch between the light & dark themes depending upon the system gui appearance.

## Installation
1. Clone this repo
2. Copy the files to `~/.config/wezterm/`, or wherever you keep your wezterm modules (or create a symbolic link)

## Usage
Add the following lines to your `.wezterm.lua` file to define the schemes "Canonical Solarized Light" and "Canoncial Solarized Dark":
```lua
local canonical_solarized = require "canonical_solarized"
canonical_solarized.apply_to_config(config)
```

You can then use one of the themes specifically:
```lua
config.color_scheme = "Canonical Solarized Light"
```

OR

Use the auto appearance module:
```lua
local canonical_solarized_auto_appearance = require "canonical_solarized_auto_appearance"
canonical_solarized_auto_appearance.apply_to_config(config)
```
