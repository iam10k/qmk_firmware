bool pressed_up = false;
bool pressed_down = false;

bool pressed_left = false;
bool pressed_right = false;



bool process_record_user(uint16_t keycode, keyrecord_t *record) {
	switch (keycode) {
		case GC_W:
			if (record->event.pressed) {
				pressed_up = true;
				if (pressed_down) {
					unregister_code(KC_S);
				}
				register_code(KC_W);
			} else {
				pressed_up = false;
				unregister_code(KC_W);
				if (pressed_down) {
					register_code(KC_S);
				}
			}
			return false;
		case GC_S:
			if (record->event.pressed) {
				pressed_down = true;
				if (pressed_up) {
					register_code(KC_NO);
				}
				register_code(KC_S);
			} else {
				pressed_down = false;
				unregister_code(KC_S);
				if (pressed_up) {
				    register_code(KC_W);
				}
			}
			return false;
		case GC_A:
			if (record->event.pressed) {
				pressed_left = true;
				if (pressed_right) {
					unregister_code(KC_D);
				}
				register_code(KC_A);
			} else {
				pressed_left = false;
				unregister_code(KC_A);
				if (pressed_right) {
					register_code(KC_D);
				}
			}
			return false;
		case GC_D:
			if (record->event.pressed) {
				pressed_right = true;
				if (pressed_left) {
					unregister_code(KC_A);
				}
				register_code(KC_D);
			} else {
				pressed_right = false;
				unregister_code(KC_D);
				if (pressed_left) {
					register_code(KC_A);
				}
			}
			return false;

        case EPRM:
            eeconfig_init();
            return false;
        case VRSN:
            SEND_STRING (QMK_KEYBOARD "/" QMK_KEYMAP " @ " QMK_VERSION);
            return false;
        case RGB_SLD:
            #ifdef RGBLIGHT_ENABLE
                rgblight_mode(1);
                return false;
            #endif
		default:
			return true;
	}
};
