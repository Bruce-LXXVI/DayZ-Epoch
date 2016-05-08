private ["_LocalOrGlobal","_spawnCrate","_crateName","_pos","_classname","_dir","_selectDelay","_player"];
_LocalOrGlobal = _this select 0;
_player = player;

// Name of this crate
_crateName = "DayZ Base Building";

// Crate type. Possibilities: MedBox0, FoodBox0, BAF_BasicWeapons, USSpecialWeaponsBox, USSpecialWeapons_EP1, USVehicleBox, RUSpecialWeaponsBox, RUVehicleBox, etc.
_classname = "FoodBox0";

// Tool use logger
if(logMajorTool) then {
	usageLogger = format["%1 %2 -- has spawned a %3 %4",name _player,getPlayerUID _player,_LocalOrGlobal,_crateName];
	[] spawn {publicVariable "usageLogger";};
};

// Location of player and crate
_dir = getdir _player;
_pos = getposATL _player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];

if(_LocalOrGlobal == "local") then {
	_spawnCrate = _classname createVehicleLocal _pos;	
} else {
	_spawnCrate = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
};

_spawnCrate setDir _dir;
_spawnCrate setposATL _pos;

// Remove default items/weapons from current crate before adding custom gear
clearWeaponCargoGlobal _spawnCrate;
clearMagazineCargoGlobal _spawnCrate;
clearBackpackCargoGlobal _spawnCrate;

// Add weapon-slot items to crate
// Syntax: _spawnCrate addWeaponCargoGlobal ["ITEM", number-of-items];
_spawnCrate addWeaponCargoGlobal ["ItemCrowbar", 5];
_spawnCrate addWeaponCargoGlobal ["ItemDIY_metal", 5];
_spawnCrate addWeaponCargoGlobal ["ItemDIY_wood", 5];
_spawnCrate addWeaponCargoGlobal ["ItemDIY_gate", 5];
_spawnCrate addWeaponCargoGlobal ["ItemEtool", 5];
_spawnCrate addWeaponCargoGlobal ["ItemHatchet", 5];
_spawnCrate addWeaponCargoGlobal ["ItemPickaxe", 5];
_spawnCrate addWeaponCargoGlobal ["ItemToolbox", 5];
_spawnCrate addWeaponCargoGlobal ["ItemSledgeHammer", 5];
_spawnCrate addWeaponCargoGlobal ["ItemShovel", 5];

// Add magazine-slot items to crate
// Syntax: _spawnCrate addMagazineCargoGlobal ["ITEM", number-of-items];
_spawnCrate addMagazineCargoGlobal ["ItemPadlock", 5];
_spawnCrate addMagazineCargoGlobal ["ItemLog", 50];
_spawnCrate addMagazineCargoGlobal ["ItemPlank", 50];
_spawnCrate addMagazineCargoGlobal ["ItemStone", 50];
_spawnCrate addMagazineCargoGlobal ["equip_nails", 50];
_spawnCrate addMagazineCargoGlobal ["ItemSandbag", 50];
_spawnCrate addMagazineCargoGlobal ["equip_metal_sheet_rusted", 50];
_spawnCrate addMagazineCargoGlobal ["equip_metal_sheet", 50];
_spawnCrate addMagazineCargoGlobal ["ItemTent", 5];
_spawnCrate addMagazineCargoGlobal ["ItemDomeTent", 5];
_spawnCrate addMagazineCargoGlobal ["ItemRSJ", 50];
_spawnCrate addMagazineCargoGlobal ["ItemScrews", 50];
_spawnCrate addMagazineCargoGlobal ["ItemMetalSheet", 50];
_spawnCrate addMagazineCargoGlobal ["ItemConcreteBlock", 50];
_spawnCrate addMagazineCargoGlobal ["equip_2inch_metal_pipe", 50];
_spawnCrate addMagazineCargoGlobal ["equip_1inch_metal_pipe", 50];
_spawnCrate addMagazineCargoGlobal ["equip_duct_tape", 5];
_spawnCrate addMagazineCargoGlobal ["equip_rope", 5];
_spawnCrate addMagazineCargoGlobal ["equip_string", 5];

// Add only 1 backpack. The rest will fall out onto the ground. Do not use LargeGunBag here, the box will not hold it.
_spawnCrate addBackpackCargoGlobal ["DZ_CivilBackpack_EP1", 1];

// Send text to spawner only
titleText [format[_crateName + " spawned!"],"PLAIN DOWN"]; titleFadeOut 4;

selectDelay=0;
// Run delaymenu
delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["30 seconds", [], "", -5, [["expression", "selectDelay=30;"]], "1", "1"],
	["1 min", [], "", -5, [["expression", "selectDelay=60;"]], "1", "1"],
	["3 min", [], "", -5, [["expression", "selectDelay=180;"]], "1", "1"],
	["5 min", [], "", -5, [["expression", "selectDelay=300;"]], "1", "1"],
	["10 min", [], "", -5, [["expression", "selectDelay=600;"]], "1", "1"],
	["30 min", [], "", -5, [["expression", "selectDelay=1800;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["No timer", [], "", -5, [["expression", "selectDelay=0;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"]
];
showCommandingMenu "#USER:delaymenu";

WaitUntil{commandingMenu == ""};
_selectDelay = selectDelay;

if(selectDelay != 0) then {
	titleText [format[_crateName + " will disappear in %1 seconds.",selectDelay],"PLAIN DOWN"]; titleFadeOut 4;
	sleep _selectDelay;
	deletevehicle _spawnCrate;
	titleText [format[_crateName + " disappeared."],"PLAIN DOWN"]; titleFadeOut 4;
} else {
	titleText [format[_crateName + " has no timer. Shoot it to destroy."],"PLAIN DOWN"]; titleFadeOut 4;
};
