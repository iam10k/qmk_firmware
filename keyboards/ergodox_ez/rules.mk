# If you have Left LEDs (see
# https://geekhack.org/index.php?topic=22780.msg873819#msg873819 for
# details), include the following define:
# OPT_DEFS += -DLEFT_LEDS

# Build Options
#   change yes to no to disable
#
CUSTOM_MATRIX    = lite # Custom matrix file for the ErgoDox EZ

DEBOUNCE_TYPE = sym_defer_g

# project specific files
SRC += matrix.c
I2C_DRIVER_REQUIRED = yes

# Disable unsupported hardware
AUDIO_SUPPORTED = no
BACKLIGHT_SUPPORTED = no

MOUSE_SHARED_EP = no

DEFAULT_FOLDER = ergodox_ez/base
