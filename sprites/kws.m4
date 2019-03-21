define(CLASS_WAYPOINT, "WAYP")
define(CLASS_PLATFORMS, "KSS0")
define(CLASS_CROSSINGS, "KSS1")
define(CLASS_BUILDINGS, "KSS2")
define(CLASS_FACILITIES, "KSS3")
define(CLASS_PSD, "KSS4")

define(spr_ground, 1011)
define(spr_ground_snow, 1037)

define(PLATFORM_START, 0x00)
define(HP_A, 0x00)
define(HP_B, 0x01)
define(HP_C, 0x02)
define(HP_A_RF_A, 0x03)
define(HP_B_RF_A, 0x04)
define(HP_C_RF_A, 0x05)
define(HP_A_RF_B, 0x06)
define(HP_B_RF_B, 0x07)
define(HP_C_RF_B, 0x08)
define(LP_A, 0x09)
define(LP_B, 0x0A)
define(LP_C, 0x0B)
define(LP_A_RF_A, 0x0C)
define(LP_B_RF_A, 0x0D)
define(LP_C_RF_A, 0x0E)
define(LP_A_RF_B, 0x0F)
define(LP_B_RF_B, 0x10)
define(LP_C_RF_B, 0x11)
define(LAP_A, 0x12)
define(LAP_B, 0x13)
define(LAP_C, 0x14)
define(LAP_A_RF_A, 0x15)
define(LAP_B_RF_A, 0x16)
define(LAP_C_RF_A, 0x17)
define(LAP_A_RF_B, 0x18)
define(LAP_B_RF_B, 0x19)
define(LAP_C_RF_B, 0x1A)
define(PLATFORM_END, 0x1A)

define(CROSSING_START, 0x1B)
define(LP_A_CR, 0x1B)
define(LP_B_CR, 0x1C)
define(LP_C_CR, 0x1D)
define(LP_A_CR_RF_A, 0x1E)
define(LP_B_CR_RF_A, 0x1F)
define(LP_C_CR_RF_A, 0x20)
define(LP_A_CR_RF_B, 0x21)
define(LP_B_CR_RF_B, 0x22)
define(LP_C_CR_RF_B, 0x23)
define(LAP_A_CR, 0x24)
define(LAP_B_CR, 0x25)
define(LAP_C_CR, 0x26)
define(LAP_A_CR_RF_A, 0x27)
define(LAP_B_CR_RF_A, 0x28)
define(LAP_C_CR_RF_A, 0x29)
define(LAP_A_CR_RF_B, 0x2A)
define(LAP_B_CR_RF_B, 0x2B)
define(LAP_C_CR_RF_B, 0x2C)

define(CRS, 0x2D)
define(CROSSING_END, 0x2D)

define(BUILDING_START, 0x2E)
define(BUILDING_LOW, 0x2E)
define(BUILDING_HIGH, 0x2F)
define(BUILDING_LOW_ENTRANCE, 0x30)
define(BUILDING_HIGH_ENTRANCE, 0x31)

define(BUILDING_LOW_HP_A, 0x32)
define(BUILDING_LOW_HP_B, 0x33)
define(BUILDING_LOW_HP_C, 0x34)
define(BUILDING_HIGH_HP_A, 0x35)
define(BUILDING_HIGH_HP_B, 0x36)
define(BUILDING_HIGH_HP_C, 0x37)
define(BUILDING_LOW_LP_A, 0x38)
define(BUILDING_LOW_LP_B, 0x39)
define(BUILDING_LOW_LP_C, 0x3A)
define(BUILDING_HIGH_LP_A, 0x3B)
define(BUILDING_HIGH_LP_B, 0x3C)
define(BUILDING_HIGH_LP_C, 0x3D)
define(BUILDING_LOW_LAP_A, 0x3E)
define(BUILDING_LOW_LAP_B, 0x3F)
define(BUILDING_LOW_LAP_C, 0x40)
define(BUILDING_HIGH_LAP_A, 0x41)
define(BUILDING_HIGH_LAP_B, 0x42)
define(BUILDING_HIGH_LAP_C, 0x43)
define(BUILDING_LOW_TRACK, 0x44)
define(BUILDING_HIGH_TRACK, 0x45)
define(BUILDING_END, 0x51)

define(PLATFORM_D_START, 0x52)
define(HP_D, 0x52)
define(LP_D, 0x53)
define(LAP_D, 0x54)
define(HP_D_RF_A, 0x55)
define(LP_D_RF_A, 0x56)
define(LAP_D_RF_A, 0x57)
define(HP_D_RF_B, 0x58)
define(LP_D_RF_B, 0x59)
define(LAP_D_RF_B, 0x5A)
define(PLATFORM_D_END, 0x5A)

define(OVERPASS_START, 0x5B)
define(OVERPASS_HP_A, 0x5B)
define(OVERPASS_HP_B, 0x5C)
define(OVERPASS_HP_C, 0x5D)
define(OVERPASS_HP_A_RF_A, 0x5E)
define(OVERPASS_HP_B_RF_A, 0x5F)
define(OVERPASS_HP_C_RF_A, 0x60)
define(OVERPASS_HP_A_RF_B, 0x61)
define(OVERPASS_HP_B_RF_B, 0x62)
define(OVERPASS_HP_C_RF_B, 0x63)
define(OVERPASS_LP_A, 0x64)
define(OVERPASS_LP_B, 0x65)
define(OVERPASS_LP_C, 0x66)
define(OVERPASS_LP_A_RF_A, 0x67)
define(OVERPASS_LP_B_RF_A, 0x68)
define(OVERPASS_LP_C_RF_A, 0x69)
define(OVERPASS_LP_A_RF_B, 0x6A)
define(OVERPASS_LP_B_RF_B, 0x6B)
define(OVERPASS_LP_C_RF_B, 0x6C)
define(OVERPASS_LAP_A, 0x6D)
define(OVERPASS_LAP_B, 0x6E)
define(OVERPASS_LAP_C, 0x6F)
define(OVERPASS_LAP_A_RF_A, 0x70)
define(OVERPASS_LAP_B_RF_A, 0x71)
define(OVERPASS_LAP_C_RF_A, 0x72)
define(OVERPASS_LAP_A_RF_B, 0x73)
define(OVERPASS_LAP_B_RF_B, 0x74)
define(OVERPASS_LAP_C_RF_B, 0x75)
define(OVERPASS_TRACK, 0x76)
define(OVERPASS_TRACK_WAYP, 0x77)
define(OVERPASS_END, 0x77)

define(PLATFORM_FACILITIES_START, 0x78)
define(SIGN_A_HP_A, 0x78)
define(SIGN_A_HP_B, 0x79)
define(SIGN_A_HP_C, 0x7A)
define(SIGN_A_LP_A, 0x7B)
define(SIGN_A_LP_B, 0x7C)
define(SIGN_A_LP_C, 0x7D)
define(SIGN_A_LAP_A, 0x7E)
define(SIGN_A_LAP_B, 0x7F)
define(SIGN_A_LAP_C, 0x80)
define(SIGN_B_HP_B_RF_A, 0x81)
define(SIGN_B_HP_C_RF_A, 0x82)
define(SIGN_B_HP_B_RF_B, 0x83)
define(SIGN_B_HP_C_RF_B, 0x84)
define(SIGN_B_LP_B_RF_A, 0x85)
define(SIGN_B_LP_C_RF_A, 0x86)
define(SIGN_B_LP_B_RF_B, 0x87)
define(SIGN_B_LP_C_RF_B, 0x88)
define(SIGN_B_LAP_B_RF_A, 0x89)
define(SIGN_B_LAP_C_RF_A, 0x8A)
define(SIGN_B_LAP_B_RF_B, 0x8B)
define(SIGN_B_LAP_C_RF_B, 0x8C)
define(SIGN_C_HP_A, 0x8D)
define(SIGN_C_HP_B, 0x8E)
define(SIGN_C_HP_C, 0x8F)
define(SIGN_C_HP_A_RF_A, 0x90)
define(SIGN_C_HP_B_RF_A, 0x91)
define(SIGN_C_HP_C_RF_A, 0x92)
define(SIGN_C_HP_A_RF_B, 0x93)
define(SIGN_C_HP_B_RF_B, 0x94)
define(SIGN_C_HP_C_RF_B, 0x95)
define(SIGN_C_LP_A, 0x96)
define(SIGN_C_LP_B, 0x97)
define(SIGN_C_LP_C, 0x98)
define(SIGN_C_LP_A_RF_A, 0x99)
define(SIGN_C_LP_B_RF_A, 0x9A)
define(SIGN_C_LP_C_RF_A, 0x9B)
define(SIGN_C_LP_A_RF_B, 0x9C)
define(SIGN_C_LP_B_RF_B, 0x9D)
define(SIGN_C_LP_C_RF_B, 0x9E)
define(SIGN_C_LAP_A, 0x9F)
define(SIGN_C_LAP_B, 0xA0)
define(SIGN_C_LAP_C, 0xA1)
define(SIGN_C_LAP_A_RF_A, 0xA2)
define(SIGN_C_LAP_B_RF_A, 0xA3)
define(SIGN_C_LAP_C_RF_A, 0xA4)
define(SIGN_C_LAP_A_RF_B, 0xA5)
define(SIGN_C_LAP_B_RF_B, 0xA6)
define(SIGN_C_LAP_C_RF_B, 0xA7)
define(LED_HP_A_RF_A, 0xA8)
define(LED_HP_B_RF_A, 0xA9)
define(LED_HP_C_RF_A, 0xAA)
define(LED_HP_A_RF_B, 0xAB)
define(LED_HP_B_RF_B, 0xAC)
define(LED_HP_C_RF_B, 0xAD)
define(LED_LP_A_RF_A, 0xAE)
define(LED_LP_B_RF_A, 0xAF)
define(LED_LP_C_RF_A, 0xB0)
define(LED_LP_A_RF_B, 0xB1)
define(LED_LP_B_RF_B, 0xB2)
define(LED_LP_C_RF_B, 0xB3)
define(LED_LAP_A_RF_A, 0xB4)
define(LED_LAP_B_RF_A, 0xB5)
define(LED_LAP_C_RF_A, 0xB6)
define(LED_LAP_A_RF_B, 0xB7)
define(LED_LAP_B_RF_B, 0xB8)
define(LED_LAP_C_RF_B, 0xB9)
define(WAITINGROOM_HP_A, 0xBA)
define(WAITINGROOM_HP_B, 0xBB)
define(WAITINGROOM_HP_C, 0xBC)
define(WAITINGROOM_HP_A_RF_A, 0xBD)
define(WAITINGROOM_HP_B_RF_A, 0xBE)
define(WAITINGROOM_HP_C_RF_A, 0xBF)
define(WAITINGROOM_HP_A_RF_B, 0xC0)
define(WAITINGROOM_HP_B_RF_B, 0xC1)
define(WAITINGROOM_HP_C_RF_B, 0xC2)
define(WAITINGROOM_LP_A, 0xC3)
define(WAITINGROOM_LP_B, 0xC4)
define(WAITINGROOM_LP_C, 0xC5)
define(WAITINGROOM_LP_A_RF_A, 0xC6)
define(WAITINGROOM_LP_B_RF_A, 0xC7)
define(WAITINGROOM_LP_C_RF_A, 0xC8)
define(WAITINGROOM_LP_A_RF_B, 0xC9)
define(WAITINGROOM_LP_B_RF_B, 0xCA)
define(WAITINGROOM_LP_C_RF_B, 0xCB)
define(WAITINGROOM_LAP_A, 0xCC)
define(WAITINGROOM_LAP_B, 0xCD)
define(WAITINGROOM_LAP_C, 0xCE)
define(WAITINGROOM_LAP_A_RF_A, 0xCF)
define(WAITINGROOM_LAP_B_RF_A, 0xD0)
define(WAITINGROOM_LAP_C_RF_A, 0xD1)
define(WAITINGROOM_LAP_A_RF_B, 0xD2)
define(WAITINGROOM_LAP_B_RF_B, 0xD3)
define(WAITINGROOM_LAP_C_RF_B, 0xD4)
define(LIGHT_HP_A, 0xD5)
define(LIGHT_HP_B, 0xD6)
define(LIGHT_HP_C, 0xD7)
define(LIGHT_LP_A, 0xD8)
define(LIGHT_LP_B, 0xD9)
define(LIGHT_LP_C, 0xDA)
define(LIGHT_LAP_A, 0xDB)
define(LIGHT_LAP_B, 0xDC)
define(LIGHT_LAP_C, 0xDD)
define(UNDERPASS_HP_A_RF_A, 0xDE)
define(UNDERPASS_HP_B_RF_A, 0xDF)
define(UNDERPASS_HP_C_RF_A, 0xE0)
define(UNDERPASS_HP_A_RF_B, 0xE1)
define(UNDERPASS_HP_B_RF_B, 0xE2)
define(UNDERPASS_HP_C_RF_B, 0xE3)
define(UNDERPASS_LP_A_RF_A, 0xE4)
define(UNDERPASS_LP_B_RF_A, 0xE5)
define(UNDERPASS_LP_C_RF_A, 0xE6)
define(UNDERPASS_LP_A_RF_B, 0xE7)
define(UNDERPASS_LP_B_RF_B, 0xE8)
define(UNDERPASS_LAP_C_RF_B, 0xE9)
define(UNDERPASS_LAP_A_RF_A, 0xEA)
define(UNDERPASS_LAP_B_RF_A, 0xEB)
define(UNDERPASS_LAP_C_RF_A, 0xEC)
define(UNDERPASS_LAP_A_RF_B, 0xED)
define(UNDERPASS_LAP_B_RF_B, 0xEE)
define(UNDERPASS_LAP_C_RF_B, 0xEF)
define(PLATFORM_FACILITIES_END, 0xEF)

define(PSD_START, 0xF0)
define(PSD_HP_A, 0xF0)
define(PSD_HP_B, 0xF1)
define(PSD_HP_C, 0xF2)
define(PSD_HP_A_RF_A, 0xF3)
define(PSD_HP_B_RF_A, 0xF4)
define(PSD_HP_C_RF_A, 0xF5)
define(PSD_HP_A_RF_B, 0xF6)
define(PSD_HP_B_RF_B, 0xF7)
define(PSD_HP_C_RF_B, 0xF8)
define(PSD_END, 0xF8)

define(PARAM_PSDSFX, 1)
define(PARAM_PASSENGER, 2)
define(PARAM_SHADOW, 3)
define(PARAM_BRIDGE, 4)