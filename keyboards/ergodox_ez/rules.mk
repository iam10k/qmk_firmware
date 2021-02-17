# If you have Left LEDs (see
# https://geekhack.org/index.php?topic=22780.msg873819#msg873819 for
# details), include the following define:
# OPT_DEFS += -DLEFT_LEDS

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = no   # Enable Bootmagic Lite
MOUSEKEY_ENABLE  = yes  # Mouse keys
EXTRAKEY_ENABLE  = yes  # Audio control and System control
CONSOLE_ENABLE   = no   # Console for debug
COMMAND_ENABLE   = no   # Commands for debug and configuration
CUSTOM_MATRIX    = lite # Custom matrix file for the ErgoDox EZ
NKRO_ENABLE      = yes           # Enable N-Key Rollover
UNICODE_ENABLE   = no  # Unicode
SWAP_HANDS_ENABLE= no   # Allow swapping hands of keyboard

RGB_MATRIX_ENABLE = no # enable later
DEBOUNCE_TYPE = sym_g

# project specific files
SRC += matrix.c \
	   led_i2c.c
I2C_DRIVER_REQUIRED = yes

# Disable unsupported hardware
AUDIO_SUPPORTED = no
BACKLIGHT_SUPPORTED = no

MOUSE_SHARED_EP = no

DEFAULT_FOLDER = ergodox_ez/base
