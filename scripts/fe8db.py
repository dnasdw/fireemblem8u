EVENT_COMMANDS = {
    0x00: "EV_CMD_NOP",
    0x01: "EV_CMD_END",
    0x02: "EV_CMD_EVSET",
    0x03: "EV_CMD_EVCHECK",
    0x04: "EV_CMD_RANDOMNUMBER",
    0x05: "EV_CMD_SVAL",
    0x06: "EV_CMD_SLOT_OPS",
    0x07: "EV_CMD_QUEUE_OPS",
    0x08: "EV_CMD_LABEL",
    0x09: "EV_CMD_GOTO",
    0x0A: "EV_CMD_CALL",
    0x0B: "EV_CMD_ENQUEUE_CALL",
    0x0C: "EV_CMD_BRANCH",
    0x0D: "EV_CMD_ASMC",
    0x0E: "EV_CMD_STALL",
    0x0F: "EV_CMD_COUNTER",
    0x10: "EV_CMD_EVBITMODIFY",
    0x11: "EV_CMD_IGNOREKEYS",
    0x12: "EV_CMD_BGMCHANGE_12",
    0x13: "EV_CMD_BGMCHANGE_13",
    0x14: "EV_CMD_BGMOVERWRITE",
    0x15: "EV_CMD_BGMVOLUMECHANGE",
    0x16: "EV_CMD_PLAYSE",
    0x17: "EV_CMD_FADE",
    0x18: "EV_CMD_COLORFADE",
    0x19: "EV_CMD_CHECKVARIOUS",
    0x1A: "EV_CMD_SETTEXTTYPE",
    0x1B: "EV_CMD_DISPLAYTEXT",
    0x1C: "EV_CMD_CONTINUETEXT",
    0x1D: "EV_CMD_ENDTEXT",
    0x1E: "EV_CMD_DISPLAYFACE",
    0x1F: "EV_CMD_MOVEFACE",
    0x20: "EV_CMD_CLEARTEXTBOX",
    0x21: "EV_CMD_SHOWBG",
    0x22: "EV_CMD_CLEARSCREEN",
    0x23: "EV_CMD_23",
    0x24: "EV_CMD_24",
    0x25: "EV_CMD_LOMA",
    0x26: "EV_CMD_CAMERACONTROL",
    0x27: "EV_CMD_TILE_CHANGE",
    0x28: "EV_CMD_CHANGEWEATHER",
    0x29: "EV_CMD_CHANGEFOGVISION",
    0x2A: "EV_CMD_CHANGECHAPTER",
    0x2B: "EV_CMD_LOAD_PRECONF",
    0x2C: "EV_CMD_LOADUNIT",
    0x2D: "EV_CMD_CHANGE_PAL",
    0x2E: "EV_CMD_GET_PID",
    0x2F: "EV_CMD_MOVEUNIT",
    0x30: "EV_CMD_ENUN",
    0x31: "EV_CMD_TOGGLERANGE",
    0x32: "EV_CMD_LOADSINGLEUNIT",
    0x33: "EV_CMD_CHECKSTATE",
    0x34: "EV_CMD_CHANGESTATE",
    0x35: "EV_CMD_CHANGECLASS",
    0x36: "EV_CMD_CHECKINAREA",
    0x37: "EV_CMD_GIVEITEM",
    0x38: "EV_CMD_CHANGEACTIVEUNIT",
    0x39: "EV_CMD_CHANGEAI",
    0x3A: "EV_CMD_DISPLAYPOPUP",
    0x3B: "EV_CMD_DISPLAYCURSOR",
    0x3C: "EV_CMD_MOVE_CURSOR",
    0x3D: "EV_CMD_MENUOVERRIDE",
    0x3E: "EV_CMD_PREPSCREEN",
    0x3F: "EV_CMD_SCRIPT_BATTLE",
    0x40: "EV_CMD_PROM",
    0x41: "EV_CMD_WARP",
    0x42: "EV_CMD_EARTHQUAKE",
    0x43: "EV_CMD_SUMMONUNIT",
    0x44: "EV_CMD_BREAKSTONE",
    0x45: "EV_CMD_GLOWING_CROSS",
}

EVENT_SLOTS = {
    0x00: "EVT_SLOT_0",
    0x01: "EVT_SLOT_1",
    0x02: "EVT_SLOT_2",
    0x03: "EVT_SLOT_3",
    0x04: "EVT_SLOT_4",
    0x05: "EVT_SLOT_5",
    0x06: "EVT_SLOT_6",
    0x07: "EVT_SLOT_7",
    0x08: "EVT_SLOT_8",
    0x09: "EVT_SLOT_9",
    0x0A: "EVT_SLOT_A",
    0x0B: "EVT_SLOT_B",
    0x0C: "EVT_SLOT_C",
    0x0D: "EVT_SLOT_D",
    0x0E: "EVT_SLOT_E",
    0x0F: "EVT_SLOT_F",
}

EVENT0B_TRIGGER_TYPE = {
    0: "TUTORIAL_EVT_TYPE_PHASECHANGE",
    1: "TUTORIAL_EVT_TYPE_POSTACTION",
    2: "TUTORIAL_EVT_TYPE_ONSELECT",
    3: "TUTORIAL_EVT_TYPE_DESTSELECTED",
    4: "TUTORIAL_EVT_TYPE_AFTERMOVE",
    5: "TUTORIAL_EVT_TYPE_FORECAST",
    6: "TUTORIAL_EVT_TYPE_PLAYERPHASE",
}

FACTION_IDX = {
    0: 'FACTION_ID_BLUE',
    1: 'FACTION_ID_GREEN',
    2: 'FACTION_ID_RED',
    3: 'FACTION_ID_PURPLE',
}

FACTION_NAMES = {
    0x00: 'FACTION_BLUE',
    0x40: 'FACTION_GREEN',
    0x80: 'FACTION_RED',
    0xC0: 'FACTION_PURPLE'}

BOOL_NAMES = { 0: 'FALSE', 1: 'TRUE' }

_PID_IDX = {
    0x01: "CHARACTER_EIRIKA",
    0x02: "CHARACTER_SETH",
    0x03: "CHARACTER_GILLIAM",
    0x04: "CHARACTER_FRANZ",
    0x05: "CHARACTER_MOULDER",
    0x06: "CHARACTER_VANESSA",
    0x07: "CHARACTER_ROSS",
    0x08: "CHARACTER_NEIMI",
    0x09: "CHARACTER_COLM",
    0x0A: "CHARACTER_GARCIA",
    0x0B: "CHARACTER_INNES",
    0x0C: "CHARACTER_LUTE",
    0x0D: "CHARACTER_NATASHA",
    0x0E: "CHARACTER_CORMAG",
    0x0F: "CHARACTER_EPHRAIM",
    0x10: "CHARACTER_FORDE",
    0x11: "CHARACTER_KYLE",
    0x12: "CHARACTER_AMELIA",
    0x13: "CHARACTER_ARTUR",
    0x14: "CHARACTER_GERIK",
    0x15: "CHARACTER_TETHYS",
    0x16: "CHARACTER_MARISA",
    0x17: "CHARACTER_SALEH",
    0x18: "CHARACTER_EWAN",
    0x19: "CHARACTER_LARACHEL",
    0x1A: "CHARACTER_DOZLA",
    0x1C: "CHARACTER_RENNAC",
    0x1D: "CHARACTER_DUESSEL",
    0x1E: "CHARACTER_MYRRH",
    0x1F: "CHARACTER_KNOLL",
    0x20: "CHARACTER_JOSHUA",
    0x21: "CHARACTER_SYRENE",
    0x22: "CHARACTER_TANA",
    0x23: "CHARACTER_LYON_CC",
    0x24: "CHARACTER_ORSON_CC",
    0x25: "CHARACTER_GLEN_CC",
    0x26: "CHARACTER_SELENA_CC",
    0x27: "CHARACTER_VALTER_CC",
    0x28: "CHARACTER_RIEV_CC",
    0x29: "CHARACTER_CAELLACH_CC",
    0x2A: "CHARACTER_FADO_CC",
    0x2B: "CHARACTER_ISMAIRE_CC",
    0x2C: "CHARACTER_HAYDEN_CC",

    # Summoned Characters
    0x3B: "CHARACTER_SUMMON_LYON",
    0x3E: "CHARACTER_SUMMON_KNOLL",
    0x3F: "CHARACTER_SUMMON_EWAN",

    # Boss/Unique Enemy Characters
    0x40: "CHARACTER_LYON",
    0x41: "CHARACTER_MORVA",
    0x42: "CHARACTER_ORSON_CH5X",
    0x43: "CHARACTER_VALTER",
    0x44: "CHARACTER_SELENA",
    0x45: "CHARACTER_VALTER_PROLOGUE",
    0x46: "CHARACTER_BREGUET",
    0x47: "CHARACTER_BONE",
    0x48: "CHARACTER_BAZBA",
    0x49: "CHARACTER_ENTOUMBED_CH4",
    0x4A: "CHARACTER_SAAR",
    0x4B: "CHARACTER_NOVALA",
    0x4C: "CHARACTER_MURRAY",
    0x4D: "CHARACTER_TIRADO",
    0x4E: "CHARACTER_BINKS",
    0x4F: "CHARACTER_PABLO",
    0x50: "CHARACTER_MAELDUIN_CHUnk",
    0x51: "CHARACTER_AIAS",
    0x52: "CHARACTER_CARLYLE",
    0x53: "CHARACTER_CAELLACH",
    0x54: "CHARACTER_PABLO_2",
    0x56: "CHARACTER_GORGON_CHUnk",
    0x57: "CHARACTER_RIEV",
    0x5A: "CHARACTER_GHEB",
    0x5B: "CHARACTER_BERAN",
    0x5C: "CHARACTER_CYCLOPS_CHUnk",
    0x5D: "CHARACTER_WIGHT_CHUnk",
    0x5E: "CHARACTER_DEATHGOYLE_CHUnk",
    0x66: "CHARACTER_BANDIT_CH5",
    0x68: "CHARACTER_ONEILL",
    0x69: "CHARACTER_GLEN",
    0x6A: "CHARACTER_ZONTA",
    0x6B: "CHARACTER_VIGARDE",
    0x6C: "CHARACTER_LYON_FINAL",
    0x6D: "CHARACTER_ORSON",

    0x83: "CHARACTER_SOLDIER_83",

    0xBA: "CHARACTER_MONSTER_BA",
    0xBE: "CHARACTER_FOMORTIIS",

    0xC0: "CHARACHER_FRELIAN",
    0xC5: "CHARACTER_FADO",

    0xC7: "CHARACTER_HAYDEN",
    0xC8: "CHARACTER_MANSEL",
    0xC9: "CHARACTER_KLIMT",
    0xCA: "CHARACTER_DARA",
    0xCB: "CHARACTER_ISMAIRE",
    0xCC: "CHARACTER_MESSENGER",

    0xFC: "CHARACTER_CITIZEN",
    0xFD: "CHARACTER_ARENA_OPPONENT",
}

def PID_IDX(pid):
    if pid in _PID_IDX:
        return _PID_IDX[pid]

    if pid == 0:
        return "CHAR_EVT_PLAYER_LEADER"

    if pid == -1:
        return "CHAR_EVT_ACTIVE_UNIT"

    if pid == -2:
        return "CHAR_EVT_POSITION_AT_SLOTB"

    if pid == -3:
        return "CHAR_EVT_SLOT2"

    return hex(pid)

_JID_IDX = {
    0x00: "CLASS_NONE",
    0x01: "CLASS_EPHRAIM_LORD",
    0x02: "CLASS_EIRIKA_LORD",
    0x03: "CLASS_EPHRAIM_MASTER_LORD",
    0x04: "CLASS_EIRIKA_MASTER_LORD",
    0x05: "CLASS_CAVALIER",
    0x06: "CLASS_CAVALIER_F",
    0x07: "CLASS_PALADIN",
    0x08: "CLASS_PALADIN_F",
    0x09: "CLASS_ARMOR_KNIGHT",
    0x0A: "CLASS_ARMOR_KNIGHT_F",
    0x0B: "CLASS_GENERAL",
    0x0C: "CLASS_GENERAL_F",
    0x0D: "CLASS_THIEF",
    0x0E: "CLASS_MANAKETE",
    0x0F: "CLASS_MERCENARY",
    0x10: "CLASS_MERCENARY_F",
    0x11: "CLASS_HERO",
    0x12: "CLASS_HERO_F",
    0x13: "CLASS_MYRMIDON",
    0x14: "CLASS_MYRMIDON_F",
    0x15: "CLASS_SWORDMASTER",
    0x16: "CLASS_SWORDMASTER_F",
    0x17: "CLASS_ASSASSIN",
    0x18: "CLASS_ASSASSIN_F",
    0x19: "CLASS_ARCHER",
    0x1A: "CLASS_ARCHER_F",
    0x1B: "CLASS_SNIPER",
    0x1C: "CLASS_SNIPER_F",
    0x1D: "CLASS_RANGER",
    0x1E: "CLASS_RANGER_F",
    0x1F: "CLASS_WYVERN_RIDER",
    0x20: "CLASS_WYVERN_RIDER_F",
    0x21: "CLASS_WYVERN_LORD",
    0x22: "CLASS_WYVERN_LORD_F",
    0x23: "CLASS_WYVERN_KNIGHT",
    0x24: "CLASS_WYVERN_KNIGHT_F",
    0x25: "CLASS_MAGE",
    0x26: "CLASS_MAGE_F",
    0x27: "CLASS_SAGE",
    0x28: "CLASS_SAGE_F",
    0x29: "CLASS_MAGE_KNIGHT",
    0x2A: "CLASS_MAGE_KNIGHT_F",
    0x2B: "CLASS_BISHOP",
    0x2C: "CLASS_BISHOP_F",
    0x2D: "CLASS_SHAMAN",
    0x2E: "CLASS_SHAMAN_F",
    0x2F: "CLASS_DRUID",
    0x30: "CLASS_DRUID_F",
    0x31: "CLASS_SUMMONER",
    0x32: "CLASS_SUMMONER_F",
    0x33: "CLASS_ROGUE",
    0x34: "CLASS_GORGONEGG2",
    0x35: "CLASS_GREAT_KNIGHT",
    0x36: "CLASS_GREAT_KNIGHT_F",
    0x37: "CLASS_RECRUIT_T1",
    0x38: "CLASS_JOURNEYMAN_T2",
    0x39: "CLASS_PUPIL_T2",
    0x3A: "CLASS_RECRUIT_T2",
    0x3B: "CLASS_MANAKETE_2",
    0x3C: "CLASS_MANAKETE_MYRRH",
    0x3D: "CLASS_JOURNEYMAN",
    0x3E: "CLASS_PUPIL",
    0x3F: "CLASS_FIGHTER",
    0x40: "CLASS_WARRIOR",
    0x41: "CLASS_BRIGAND",
    0x42: "CLASS_PIRATE",
    0x43: "CLASS_BERSERKER",
    0x44: "CLASS_MONK",
    0x45: "CLASS_PRIEST",
    0x46: "CLASS_BARD",
    0x47: "CLASS_RECRUIT",
    0x48: "CLASS_PEGASUS_KNIGHT",
    0x49: "CLASS_FALCON_KNIGHT",
    0x4A: "CLASS_CLERIC",
    0x4B: "CLASS_TROUBADOUR",
    0x4C: "CLASS_VALKYRIE",
    0x4D: "CLASS_DANCER",
    0x4E: "CLASS_SOLDIER",
    0x4F: "CLASS_NECROMANCER",
    0x50: "CLASS_FLEET",
    0x51: "CLASS_PHANTOM",
    0x52: "CLASS_REVENANT",
    0x53: "CLASS_ENTOUMBED",
    0x54: "CLASS_BONEWALKER",
    0x55: "CLASS_BONEWALKER_BOW",
    0x56: "CLASS_WIGHT",
    0x57: "CLASS_WIGHT_BOW",
    0x58: "CLASS_BAEL",
    0x59: "CLASS_ELDER_BAEL",
    0x5A: "CLASS_CYCLOPS",
    0x5B: "CLASS_MAUTHEDOOG",
    0x5C: "CLASS_GWYLLGI",
    0x5D: "CLASS_TARVOS",
    0x5E: "CLASS_MAELDUIN",
    0x5F: "CLASS_MOGALL",
    0x60: "CLASS_ARCH_MOGALL",
    0x61: "CLASS_GORGON",
    0x62: "CLASS_GORGONEGG",
    0x63: "CLASS_GARGOYLE",
    0x64: "CLASS_DEATHGOYLE",
    0x65: "CLASS_DRACO_ZOMBIE",
    0x66: "CLASS_DEMON_KING",
    0x67: "CLASS_BLST_REGULAR_USED",
    0x68: "CLASS_BLST_LONG_USED",
    0x69: "CLASS_BLST_KILLER_USED",
    0x6A: "CLASS_BLST_REGULAR_EMPTY",
    0x6B: "CLASS_BLST_LONG_EMPTY",
    0x6C: "CLASS_BLST_KILLER_EMPTY",
    0x6D: "CLASS_CIVILIAN_M1",
    0x6E: "CLASS_CIVILIAN_F1",
    0x6F: "CLASS_CIVILIAN_M2",
    0x70: "CLASS_CIVILIAN_F2",
    0x71: "CLASS_CIVILIAN_M3",
    0x72: "CLASS_CIVILIAN_F3",
    0x73: "CLASS_PEER",
    0x74: "CLASS_QUEEN",
    0x75: "CLASS_PRINCE",
    0x76: "CLASS_QUEEN_2",
    0x77: "CLASS_UNK78",
    0x78: "CLASS_FALLEN_PRINCE",
    0x79: "CLASS_TENT",
    0x7A: "CLASS_PONTIFEX",
    0x7B: "CLASS_FALLEN_PEER",
    0x7C: "CLASS_CYCLOPS_2",
    0x7D: "CLASS_ELDER_BAEL_2",
    0x7E: "CLASS_JOURNEYMAN_T1",
    0x7F: "CLASS_PUPIL_T1",
}

def JID_IDX(jid):
    if jid in _JID_IDX:
        return _JID_IDX[jid]

    return hex(jid)

_ITEM_IDX = {
	0x00: "ITEM_NONE",
	0x01: "ITEM_SWORD_IRON",
	0x02: "ITEM_SWORD_SLIM",
	0x03: "ITEM_SWORD_STEEL",
	0x04: "ITEM_SWORD_SILVER",
	0x05: "ITEM_BLADE_IRON",
	0x06: "ITEM_BLADE_STEEL",
	0x07: "ITEM_BLADE_SILVER",
	0x08: "ITEM_SWORD_VENIN",
	0x09: "ITEM_SWORD_RAPIER",
	0x0A: "ITEM_SWORD_MKATTI",
	0x0B: "ITEM_SWORD_BRAVE",
	0x0C: "ITEM_SWORD_SHAMSIR",
	0x0D: "ITEM_SWORD_KILLER",
	0x0E: "ITEM_SWORD_ARMORSLAYER",
	0x0F: "ITEM_SWORD_WYRMSLAYER",
	0x10: "ITEM_SWORD_LIGHTBRAND",
	0x11: "ITEM_SWORD_RUNESWORD",
	0x12: "ITEM_SWORD_LANCEREAVER",
	0x13: "ITEM_SWORD_ZANBATO",
	0x14: "ITEM_LANCE_IRON",
	0x15: "ITEM_LANCE_SLIM",
	0x16: "ITEM_LANCE_STEEL",
	0x17: "ITEM_LANCE_SILVER",
	0x18: "ITEM_LANCE_VENIN",
	0x19: "ITEM_LANCE_BRAVE",
	0x1A: "ITEM_LANCE_KILLER",
	0x1B: "ITEM_LANCE_HORSESLAYER",
	0x1C: "ITEM_LANCE_JAVELIN",
	0x1D: "ITEM_LANCE_SPEAR",
	0x1E: "ITEM_LANCE_AXEREAVER",
	0x1F: "ITEM_AXE_IRON",
	0x20: "ITEM_AXE_STEEL",
	0x21: "ITEM_AXE_SILVER",
	0x22: "ITEM_AXE_VENIN",
	0x23: "ITEM_AXE_BRAVE",
	0x24: "ITEM_AXE_KILLER",
	0x25: "ITEM_AXE_HALBERD",
	0x26: "ITEM_AXE_HAMMER",
	0x27: "ITEM_AXE_DEVIL",
	0x28: "ITEM_AXE_HANDAXE",
	0x29: "ITEM_AXE_TOMAHAWK",
	0x2A: "ITEM_AXE_SWORDREAVER",
	0x2B: "ITEM_AXE_SWORDSLAYER",
	0x2C: "ITEM_AXE_HATCHET",
	0x2D: "ITEM_BOW_IRON",
	0x2E: "ITEM_BOW_STEEL",
	0x2F: "ITEM_BOW_SILVER",
	0x30: "ITEM_BOW_VENIN",
	0x31: "ITEM_BOW_KILLER",
	0x32: "ITEM_BOW_BRAVE",
	0x33: "ITEM_BOW_SHORTBOW",
	0x34: "ITEM_BOW_LONGBOW",
	0x35: "ITEM_BALLISTA_REGULAR",
	0x36: "ITEM_BALLISTA_LONG",
	0x37: "ITEM_BALLISTA_KILLER",
	0x38: "ITEM_ANIMA_FIRE",
	0x39: "ITEM_ANIMA_THUNDER",
	0x3A: "ITEM_ANIMA_ELFIRE",
	0x3B: "ITEM_ANIMA_BOLTING",
	0x3C: "ITEM_ANIMA_FIMBULVETR",
	0x3D: "ITEM_ANIMA_FORBLAZE",
	0x3E: "ITEM_ANIMA_EXCALIBUR",
	0x3F: "ITEM_LIGHT_LIGHTNING",
	0x40: "ITEM_LIGHT_SHINE",
	0x41: "ITEM_LIGHT_DIVINE",
	0x42: "ITEM_LIGHT_PURGE",
	0x43: "ITEM_LIGHT_AURA",
	0x44: "ITEM_LIGHT_LUCE",
	0x45: "ITEM_DARK_FLUX",
	0x46: "ITEM_DARK_LUNA",
	0x47: "ITEM_DARK_NOSFERATU",
	0x48: "ITEM_DARK_ECLIPSE",
	0x49: "ITEM_DARK_FENRIR",
	0x4A: "ITEM_DARK_GLEIPNIR",
	0x4B: "ITEM_STAFF_HEAL",
	0x4C: "ITEM_STAFF_MEND",
	0x4D: "ITEM_STAFF_RECOVER",
	0x4E: "ITEM_STAFF_PHYSIC",
	0x4F: "ITEM_STAFF_FORTIFY",
	0x50: "ITEM_STAFF_RESTORE",
	0x51: "ITEM_STAFF_SILENCE",
	0x52: "ITEM_STAFF_SLEEP",
	0x53: "ITEM_STAFF_BERSERK",
	0x54: "ITEM_STAFF_WARP",
	0x55: "ITEM_STAFF_RESCUE",
	0x56: "ITEM_STAFF_TORCH",
	0x57: "ITEM_STAFF_REPAIR",
	0x58: "ITEM_STAFF_UNLOCK",
	0x59: "ITEM_STAFF_BARRIER",
	0x5A: "ITEM_AXE_DRAGON",
	0x5B: "ITEM_BOOSTER_HP",
	0x5C: "ITEM_BOOSTER_POW",
	0x5D: "ITEM_BOOSTER_SKL",
	0x5E: "ITEM_BOOSTER_SPD",
	0x5F: "ITEM_BOOSTER_LCK",
	0x60: "ITEM_BOOSTER_DEF",
	0x61: "ITEM_BOOSTER_RES",
	0x62: "ITEM_BOOSTER_MOV",
	0x63: "ITEM_BOOSTER_CON",
	0x64: "ITEM_HEROCREST",
	0x65: "ITEM_KNIGHTCREST",
	0x66: "ITEM_ORIONSBOLT",
	0x67: "ITEM_ELYSIANWHIP",
	0x68: "ITEM_GUIDINGRING",
	0x69: "ITEM_CHESTKEY",
	0x6A: "ITEM_DOORKEY",
	0x6B: "ITEM_LOCKPICK",
	0x6C: "ITEM_VULNERARY",
	0x6D: "ITEM_ELIXIR",
	0x6E: "ITEM_PUREWATER",
	0x6F: "ITEM_ANTITOXIN",
	0x70: "ITEM_TORCH",
	0x71: "ITEM_DELPHISHIELD",
	0x72: "ITEM_MEMBERCARD",
	0x73: "ITEM_SILVERCARD",
	0x74: "ITEM_WHITEGEM",
	0x75: "ITEM_BLUEGEM",
	0x76: "ITEM_REDGEM",
	0x77: "ITEM_GOLD",
	0x78: "ITEM_LANCE_REGINLEIF",
	0x79: "ITEM_CHESTKEY_BUNDLE",
	0x7A: "ITEM_MINE",
	0x7B: "ITEM_LIGHTRUNE",
	0x7C: "ITEM_HOPLON_SHIELD",
	0x7D: "ITEM_FILLAS_MIGHT",
	0x7E: "ITEM_NINISS_GRACE",
	0x7F: "ITEM_THORS_IRE",
	0x80: "ITEM_SETS_LITANY",
	0x81: "ITEM_SWORD_SHADOWKILLR",
	0x82: "ITEM_LANCE_BRIGHTLANCE",
	0x83: "ITEM_AXE_FIENDCLEAVER",
	0x84: "ITEM_BOW_BEACONBOW",
	0x85: "ITEM_SWORD_SIEGLINDE",
	0x86: "ITEM_AXE_BATTLEAXE",
	0x87: "ITEM_LIGHT_IVALDI",
	0x88: "ITEM_MASTERSEAL",
	0x89: "ITEM_METISSTOME",
	0x8A: "ITEM_HEAVENSEAL",
	0x8B: "ITEM_MONSTER_SHARPCLAW",
	0x8C: "ITEM_STAFF_LATONA",
	0x8D: "ITEM_LANCE_DRAGON",
	0x8E: "ITEM_LANCE_VIDOFNIR",
	0x8F: "ITEM_DARK_NAGLFAR",
	0x90: "ITEM_MONSTER_WRETCHAIR",
	0x91: "ITEM_SWORD_AUDHULMA",
	0x92: "ITEM_LANCE_SIEGMUND",
	0x93: "ITEM_AXE_GARM",
	0x94: "ITEM_BOW_NIDHOGG",
	0x95: "ITEM_LANCE_HEAVYSPEAR",
	0x96: "ITEM_LANCE_SHORTSPEAR",
	0x97: "ITEM_OCEANSEAL",
	0x98: "ITEM_LUNARBRACE",
	0x99: "ITEM_SOLARBRACE",
	0x9A: "ITEM_1G",
	0x9B: "ITEM_5G",
	0x9C: "ITEM_10G",
	0x9D: "ITEM_50G",
	0x9E: "ITEM_100G",
	0x9F: "ITEM_3000G",
	0xA0: "ITEM_5000G",
	0xA1: "ITEM_SWORD_WINDSWORD",
	0xA2: "ITEM_VULNERARY_2",
	0xA3: "ITEM_UNK_GREENNOTE",
	0xA4: "ITEM_UNK_REDNOTE",
	0xA5: "ITEM_DANCE",
	0xA6: "ITEM_NIGHTMARE",
	0xA7: "ITEM_DEMONSTONE",
	0xA8: "ITEM_DEMONLIGHT",
	0xA9: "ITEM_RAVAGER",
	0xAA: "ITEM_DIVINESTONE",
	0xAB: "ITEM_MONSTER_DEMONSURG",
	0xAC: "ITEM_MONSTER_SHADOWSHT",
	0xAD: "ITEM_MONSTER_ROTTENCLW",
	0xAE: "ITEM_MONSTER_FETIDCLW",
	0xAF: "ITEM_MONSTER_VENINCLW",
	0xB0: "ITEM_MONSTER_LTHLTALON",
	0xB1: "ITEM_MONSTER_FIREFANG",
	0xB2: "ITEM_MONSTER_HELLFANG",
	0xB3: "ITEM_MONSTER_EVILEYE",
	0xB4: "ITEM_MONSTER_CRIMSNEYE",
	0xB5: "ITEM_MONSTER_STONE",
	0xB6: "ITEM_ANIMA_AIRCALIBUR",
	0xB7: "ITEM_JUNAFRUIT",
	0xB8: "ITEM_150G",
	0xB9: "ITEM_200G",
	0xBA: "ITEM_BLACKGEM",
	0xBB: "ITEM_GOLDGEM",
	0xBC: "ITEM_UNK_BC",
	0xBD: "ITEM_UNK_BD",
	0xBE: "ITEM_UNK_BE",
	0xBF: "ITEM_UNK_BF",
	0xC0: "ITEM_UNK_C0",
	0xC1: "ITEM_UNK_C1",
	0xC2: "ITEM_UNK_C2",
	0xC3: "ITEM_UNK_C3",
	0xC4: "ITEM_UNK_C4",
	0xC5: "ITEM_UNK_C5",
	0xC6: "ITEM_UNK_C6",
	0xC7: "ITEM_UNK_C7",
	0xC8: "ITEM_UNK_C8",
	0xC9: "ITEM_UNK_C9",
	0xCA: "ITEM_UNK_CA",
	0xCB: "ITEM_UNK_CB",
	0xCC: "ITEM_UNK_CC",
	0xCD: "ITEM_UNK_CD",
}

def ITEM_IDX(iid):
    if iid in _ITEM_IDX:
        return _ITEM_IDX[iid]

    return iid

DIRECTION_IDX = {
    0: "FACING_LEFT",
    1: "FACING_RIGHT",
    2: "FACING_DOWN",
    3: "FACING_UP",
}

POSITION_IDX = {
    0: "POS_L",
    1: "POS_R",
}
