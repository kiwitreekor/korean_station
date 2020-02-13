define(CLASS_WAYPOINT, "WAYP")
define(CLASS_PLATFORMS, "KWS0")
define(CLASS_CROSSINGS, "KWS1")
define(CLASS_MODULAR, "KWS2")
define(CLASS_FACILITIES, "KWS3")
define(CLASS_PSD, "KWS4")
define(CLASS_NONTRACK, "KWS5")
define(CLASS_BUILDINGS, "KWS6")
define(CLASS_BUFFERS, "KWS7")

define(spr_ground, 1011)
define(spr_ground_snow, 1037)

define(spr_ground_nontrack, 3981)
define(spr_ground_nontrack_concrete, 1420)
define(spr_ground_nontrack_snow, 4550)
define(spr_ground_road_concrete, 1313)

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

define(TRACK_CR, 0x2D)
define(CROSSING_END, 0x2D)

define(MODULAR_START, 0x2E)
define(MODULAR_LOW, 0x2E)
define(MODULAR_HIGH, 0x2F)
define(MODULAR_LOW_ENTRANCE, 0x30)
define(MODULAR_HIGH_ENTRANCE, 0x31)

define(MODULAR_LOW_HP_A, 0x32)
define(MODULAR_LOW_HP_B, 0x33)
define(MODULAR_LOW_HP_C, 0x34)
define(MODULAR_HIGH_HP_A, 0x35)
define(MODULAR_HIGH_HP_B, 0x36)
define(MODULAR_HIGH_HP_C, 0x37)
define(MODULAR_LOW_LP_A, 0x38)
define(MODULAR_LOW_LP_B, 0x39)
define(MODULAR_LOW_LP_C, 0x3A)
define(MODULAR_HIGH_LP_A, 0x3B)
define(MODULAR_HIGH_LP_B, 0x3C)
define(MODULAR_HIGH_LP_C, 0x3D)
define(MODULAR_LOW_LAP_A, 0x3E)
define(MODULAR_LOW_LAP_B, 0x3F)
define(MODULAR_LOW_LAP_C, 0x40)
define(MODULAR_HIGH_LAP_A, 0x41)
define(MODULAR_HIGH_LAP_B, 0x42)
define(MODULAR_HIGH_LAP_C, 0x43)
define(MODULAR_LOW_TRACK, 0x44)
define(MODULAR_HIGH_TRACK, 0x45)
define(MODULAR_END, 0x51)

define(NONTRACK_START, 0x52)
define(HP_NONTRACK, 0x52)
define(HP_NONTRACK_RF_A, 0x53)
define(HP_NONTRACK_RF_B, 0x54)
define(LP_NONTRACK, 0x55)
define(LP_NONTRACK_RF_A, 0x56)
define(LP_NONTRACK_RF_B, 0x57)
define(LAP_NONTRACK, 0x58)
define(LAP_NONTRACK_RF_A, 0x59)
define(LAP_NONTRACK_RF_B, 0x5A)
define(NONTRACK_END, 0x5A)

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

define(HIGH_PLATFORM_A_PART1, {HP_A, HP_A_RF_A, HP_A_RF_B, OVERPASS_HP_A, OVERPASS_HP_A_RF_A, OVERPASS_HP_A_RF_B})
define(HIGH_PLATFORM_B_PART1, {HP_B, HP_B_RF_A, HP_B_RF_B, OVERPASS_HP_B, OVERPASS_HP_B_RF_A, OVERPASS_HP_B_RF_B})
define(HIGH_PLATFORM_C_PART1, {HP_C, HP_C_RF_A, HP_C_RF_B, OVERPASS_HP_C, OVERPASS_HP_C_RF_A, OVERPASS_HP_C_RF_B})

define(LOW_PLATFORM_A_PART1, {LP_A, LP_A_RF_A, LP_A_RF_B, LP_A_CR, LP_A_CR_RF_A, LP_A_CR_RF_B, OVERPASS_LP_A, OVERPASS_LP_A_RF_A, OVERPASS_LP_A_RF_B})
define(LOW_PLATFORM_B_PART1, {LP_B, LP_B_RF_A, LP_B_RF_B, LP_B_CR, LP_B_CR_RF_A, LP_B_CR_RF_B, OVERPASS_LP_B, OVERPASS_LP_B_RF_A, OVERPASS_LP_B_RF_B})
define(LOW_PLATFORM_C_PART1, {LP_C, LP_C_RF_A, LP_C_RF_B, LP_C_CR, LP_C_CR_RF_A, LP_C_CR_RF_B, OVERPASS_LP_C, OVERPASS_LP_C_RF_A, OVERPASS_LP_C_RF_B})

define(LOW_ASPHALT_PLATFORM_A_PART1, {LAP_A, LAP_A_RF_A, LAP_A_RF_B, LAP_A_CR, LAP_A_CR_RF_A, LAP_A_CR_RF_B, OVERPASS_LAP_A, OVERPASS_LAP_A_RF_A, OVERPASS_LAP_A_RF_B})
define(LOW_ASPHALT_PLATFORM_B_PART1, {LAP_B, LAP_B_RF_A, LAP_B_RF_B, LAP_B_CR, LAP_B_CR_RF_A, LAP_B_CR_RF_B, OVERPASS_LAP_B, OVERPASS_LAP_B_RF_A, OVERPASS_LAP_B_RF_B})
define(LOW_ASPHALT_PLATFORM_C_PART1, {LAP_C, LAP_C_RF_A, LAP_C_RF_B, LAP_C_CR, LAP_C_CR_RF_A, LAP_C_CR_RF_B, OVERPASS_LAP_C, OVERPASS_LAP_C_RF_A, OVERPASS_LAP_C_RF_B})

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
define(UNDERPASS_LP_C_RF_B, 0xE9)
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

define(VOID_TILE, 0xF9)

define(CROSSING_HIGH_START, 0x00)
define(HP_A_CR, 0x00)
define(HP_B_CR, 0x01)
define(HP_C_CR, 0x02)
define(HP_A_CR_RF_A, 0x03)
define(HP_B_CR_RF_A, 0x04)
define(HP_C_CR_RF_A, 0x05)
define(HP_A_CR_RF_B, 0x06)
define(HP_B_CR_RF_B, 0x07)
define(HP_C_CR_RF_B, 0x08)
define(CROSSING_HIGH_END, 0x08)

define(PSD_ADDITIONAL_START, 0x09)
define(PSD_OVERPASS_START, 0x09)
define(PSD_OVERPASS_HP_A, 0x09)
define(PSD_OVERPASS_HP_B, 0x0A)
define(PSD_OVERPASS_HP_C, 0x0B)
define(PSD_OVERPASS_HP_A_RF_A, 0x0C)
define(PSD_OVERPASS_HP_B_RF_A, 0x0D)
define(PSD_OVERPASS_HP_C_RF_A, 0x0E)
define(PSD_OVERPASS_HP_A_RF_B, 0x0F)
define(PSD_OVERPASS_HP_B_RF_B, 0x10)
define(PSD_OVERPASS_HP_C_RF_B, 0x11)
define(PSD_OVERPASS_END, 0x11)
define(PSD_MODULAR_START, 0x12)
define(PSD_MODULAR_LOW_HP_A, 0x12)
define(PSD_MODULAR_LOW_HP_B, 0x13)
define(PSD_MODULAR_LOW_HP_C, 0x14)
define(PSD_MODULAR_HIGH_HP_A, 0x15)
define(PSD_MODULAR_HIGH_HP_B, 0x16)
define(PSD_MODULAR_HIGH_HP_C, 0x17)
define(PSD_MODULAR_END, 0x17)
define(PSD_UNDERPASS_START, 0x18)
define(PSD_UNDERPASS_HP_A_RF_A, 0x18)
define(PSD_UNDERPASS_HP_B_RF_A, 0x19)
define(PSD_UNDERPASS_HP_C_RF_A, 0x1A)
define(PSD_UNDERPASS_HP_A_RF_B, 0x1B)
define(PSD_UNDERPASS_HP_B_RF_B, 0x1C)
define(PSD_UNDERPASS_HP_C_RF_B, 0x1D)
define(PSD_UNDERPASS_END, 0x1D)
define(PSD_ADDITIONAL_END, 0x1D)

define(PSD_PLATFORM_A_PART1, {PSD_HP_A, PSD_HP_A_RF_A, PSD_HP_A_RF_B})
define(PSD_PLATFORM_B_PART1, {PSD_HP_B, PSD_HP_B_RF_A, PSD_HP_B_RF_B})
define(PSD_PLATFORM_C_PART1, {PSD_HP_C, PSD_HP_C_RF_A, PSD_HP_C_RF_B})

define(PSD_PLATFORM_A_PART2, {PSD_OVERPASS_HP_A, PSD_OVERPASS_HP_A_RF_A, PSD_OVERPASS_HP_A_RF_B, PSD_MODULAR_LOW_HP_A, PSD_MODULAR_HIGH_HP_A, PSD_UNDERPASS_HP_A_RF_A, PSD_UNDERPASS_HP_A_RF_B})
define(PSD_PLATFORM_B_PART2, {PSD_OVERPASS_HP_B, PSD_OVERPASS_HP_B_RF_A, PSD_OVERPASS_HP_B_RF_B, PSD_MODULAR_LOW_HP_B, PSD_MODULAR_HIGH_HP_B, PSD_UNDERPASS_HP_B_RF_A, PSD_UNDERPASS_HP_B_RF_B})
define(PSD_PLATFORM_C_PART2, {PSD_OVERPASS_HP_C, PSD_OVERPASS_HP_C_RF_A, PSD_OVERPASS_HP_C_RF_B, PSD_MODULAR_LOW_HP_C, PSD_MODULAR_HIGH_HP_C, PSD_UNDERPASS_HP_C_RF_A, PSD_UNDERPASS_HP_C_RF_B})

define(PLATFORM_BUFFER_START, 0x1E)
define(BUFFER_HP_A, 0x1E)
define(BUFFER_HP_B, 0x1F)
define(BUFFER_HP_C, 0x20)
define(BUFFER_HP_A_RF_A, 0x21)
define(BUFFER_HP_B_RF_A, 0x22)
define(BUFFER_HP_C_RF_A, 0x23)
define(BUFFER_HP_A_RF_B, 0x24)
define(BUFFER_HP_B_RF_B, 0x25)
define(BUFFER_HP_C_RF_B, 0x26)
define(BUFFER_LP_A, 0x27)
define(BUFFER_LP_B, 0x28)
define(BUFFER_LP_C, 0x29)
define(BUFFER_LP_A_RF_A, 0x2A)
define(BUFFER_LP_B_RF_A, 0x2B)
define(BUFFER_LP_C_RF_A, 0x2C)
define(BUFFER_LP_A_RF_B, 0x2D)
define(BUFFER_LP_B_RF_B, 0x2E)
define(BUFFER_LP_C_RF_B, 0x2F)
define(BUFFER_LAP_A, 0x30)
define(BUFFER_LAP_B, 0x31)
define(BUFFER_LAP_C, 0x32)
define(BUFFER_LAP_A_RF_A, 0x33)
define(BUFFER_LAP_B_RF_A, 0x34)
define(BUFFER_LAP_C_RF_A, 0x35)
define(BUFFER_LAP_A_RF_B, 0x36)
define(BUFFER_LAP_B_RF_B, 0x37)
define(BUFFER_LAP_C_RF_B, 0x38)
define(PLATFORM_BUFFER_END, 0x38)

define(BUFFER_PLATFORM_A_PART2, {BUFFER_HP_A, BUFFER_HP_A_RF_A, BUFFER_HP_A_RF_B, BUFFER_LP_A, BUFFER_LP_A_RF_A, BUFFER_LP_A_RF_B, BUFFER_LAP_A, BUFFER_LAP_A_RF_A, BUFFER_LAP_A_RF_B})
define(BUFFER_PLATFORM_B_PART2, {BUFFER_HP_B, BUFFER_HP_B_RF_A, BUFFER_HP_B_RF_B, BUFFER_LP_B, BUFFER_LP_B_RF_A, BUFFER_LP_B_RF_B, BUFFER_LAP_B, BUFFER_LAP_B_RF_A, BUFFER_LAP_B_RF_B})
define(BUFFER_PLATFORM_C_PART2, {BUFFER_HP_C, BUFFER_HP_C_RF_A, BUFFER_HP_C_RF_B, BUFFER_LP_C, BUFFER_LP_C_RF_A, BUFFER_LP_C_RF_B, BUFFER_LAP_C, BUFFER_LAP_C_RF_A, BUFFER_LAP_C_RF_B})

define(SEOUL_STATION_START, 0x39)
define(SEOUL_STATION_OLD, 0x39)

define(SEOUL_STATION_BUILDING, 0x3A)
define(SEOUL_STATION_PART1_HP_A, 0x3B)
define(SEOUL_STATION_PART1_HP_B, 0x3C)
define(SEOUL_STATION_PART1_LP_A, 0x3D)
define(SEOUL_STATION_PART1_LP_B, 0x3E)
define(SEOUL_STATION_PART1_TRACK, 0x3F)
define(SEOUL_STATION_PART2, 0x40)
define(SEOUL_STATION_PART3A_HP_A, 0x41)
define(SEOUL_STATION_PART3A_HP_B, 0x42)
define(SEOUL_STATION_PART3A_LP_A, 0x43)
define(SEOUL_STATION_PART3A_LP_B, 0x44)
define(SEOUL_STATION_PART3A_TRACK, 0x45)
define(SEOUL_STATION_PART3B_HP_A, 0x46)
define(SEOUL_STATION_PART3B_HP_B, 0x47)
define(SEOUL_STATION_PART3B_LP_A, 0x48)
define(SEOUL_STATION_PART3B_LP_B, 0x49)
define(SEOUL_STATION_PART3B_TRACK, 0x4A)
define(SEOUL_STATION_PART3C_HP_A, 0x4B)
define(SEOUL_STATION_PART3C_HP_B, 0x4C)
define(SEOUL_STATION_PART3C_LP_A, 0x4D)
define(SEOUL_STATION_PART3C_LP_B, 0x4E)
define(SEOUL_STATION_PART3C_TRACK, 0x4F)
define(SEOUL_STATION_PART4A, 0x50)
define(SEOUL_STATION_PART4B, 0x51)
define(SEOUL_STATION_END, 0x51)

define(GANGNEUNG_HP, 0x52)
define(GANGNEUNG_LP, 0x53)

define(BUFFER_TRACK, 0x54)


define(PARAM_MODE, 1)
define(PARAM_MODE_NORMAL, 0)
define(PARAM_MODE_HIGHPLATFORM, 1)
define(PARAM_MODE_COMPAT, 2)

define(PARAM_FLAGS, 0)
define(PARAM_FLAGS_PSDSFX, 1)
define(PARAM_FLAGS_PASSENGER, 2)
define(PARAM_FLAGS_SHADOW, 3)
define(PARAM_FLAGS_BRIDGE, 4)
define(PARAM_FLAGS_SNOW, 5)

define(PARAM_ROOF_COLOUR, 2)
define(PARAM_ROOF_COLOUR_DBLUE, 0)
define(PARAM_ROOF_COLOUR_PGREEN, 1)
define(PARAM_ROOF_COLOUR_PINK, 2)
define(PARAM_ROOF_COLOUR_YELLOW, 3)
define(PARAM_ROOF_COLOUR_RED, 4)
define(PARAM_ROOF_COLOUR_LBLUE, 5)
define(PARAM_ROOF_COLOUR_GREEN, 6)
define(PARAM_ROOF_COLOUR_DGREEN, 7)
define(PARAM_ROOF_COLOUR_BLUE, 8)
define(PARAM_ROOF_COLOUR_CREAM, 9)
define(PARAM_ROOF_COLOUR_MAUVE, 10)
define(PARAM_ROOF_COLOUR_PURPLE, 11)
define(PARAM_ROOF_COLOUR_ORANGE, 12)
define(PARAM_ROOF_COLOUR_BROWN, 13)
define(PARAM_ROOF_COLOUR_GREY, 14)
define(PARAM_ROOF_COLOUR_WHITE, 15)

define(PARAM_VERSION, 3)

define(REGISTER_NONE, 0)
define(REGISTER_GROUND_OFFSET, 1)
define(REGISTER_PASSENGER_OFFSET, 2)
define(REGISTER_PLATFORM_OFFSET, 3)
define(REGISTER_PASSENGER_SKIP, 4)
define(REGISTER_ROOF_OFFSET, 5)
define(REGISTER_PLATFORM_SHADOW_OFFSET, 6)
define(REGISTER_CROSSING_OFFSET, 7)
define(REGISTER_CROSSING_SHADOW_OFFSET, 8)
define(REGISTER_MODULAR_GROUND_OFFSET, 9)
define(REGISTER_MODULAR_OFFSET, 11)
define(REGISTER_MODULAR_OVERPASS_OFFSET, 13)
define(REGISTER_MODULAR_POLE_SKIP, 14)
define(REGISTER_GROUND_NONTRACK_OFFSET, 16)
define(REGISTER_OVERPASS_OFFSET, 17)
define(REGISTER_OVERPASS_GUIDE_OFFSET, 18)
define(REGISTER_OVERPASS_ROOF_OFFSET, 19)
define(REGISTER_SIGN_A_OFFSET_Y, 20)
define(REGISTER_SIGN_A_SKIP, 21)
define(REGISTER_SEOUL_OLD_SNOW_OFFSET, 22)
define(REGISTER_ROOF_RECOLOUR, 23)
define(REGISTER_BUFFER_OFFSET, 24)
define(REGISTER_BUFFER_SHADOW_OFFSET, 25)
define(REGISTER_BUFFER_END_OFFSET, 26)
define(REGISTER_CARS_OFFSET, 27)
define(REGISTER_PSD_GLASS_OFFSET, 29)
define(REGISTER_PSD_OFFSET, 31)

define(ORIENT_NE, 0)
define(ORIENT_NW, 1)

define(PLT_TYPE_HIGH, 0)
define(PLT_TYPE_LOW, 1)
define(PLT_TYPE_LOW_ASPHALT, 2)

define(PLT_TYPE_NONE, 255)

define(PLT_TYPE_A, 0)
define(PLT_TYPE_B, 1)
define(PLT_TYPE_C, 2)
define(PLT_TYPE_NONTRACK, 3)
define(PLT_TYPE_MULTI, 4)

define(MODULAR_TYPE_LOW, 0)
define(MODULAR_TYPE_HIGH, 1)

define(SHADOW_FALSE, 0)
define(SHADOW_TRUE, 255)

define(CHILDSPRITE_FALSE, 0)
define(CHILDSPRITE_TRUE, 1)

define(OVERPASS_GUIDE_FRONT, 1)
define(OVERPASS_GUIDE_BACK, 2)

define(ROOF_TYPE_NORMAL, 0)
define(ROOF_TYPE_OVERPASS, 1)

define(ROOF_TYPE_A, 1)
define(ROOF_TYPE_B, 2)
define(ROOF_TYPE_NONE, 0)

define(GRFID_KWS_PART1, "KW" 00 01)
define(GRFID_KWS_PART2, "KW" 00 02)

define(VAR_GRFID_KWS_PART1, 0x0100574B)
define(VAR_GRFID_KWS_PART2, 0x0200574B)

define(GRF_VERSION, 680)
define(GRF_MIN_VERSION, 640)