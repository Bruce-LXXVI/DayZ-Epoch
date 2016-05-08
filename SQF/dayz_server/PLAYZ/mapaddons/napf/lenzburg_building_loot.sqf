
diag_log format["%1 Spawning lenzburg_building_loot", PLAYZ_logname];

PLAYZ_fillBuildingCrate = {
	private ["_crate"];
	_crate = _this select 0;

	diag_log format["%1 Filling crate %2", PLAYZ_logname, _crate];

	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;
	
	{_crate addWeaponCargoGlobal _x;} forEach
		[["ItemCrowbar", 5],["ItemEtool", 5],["ItemHatchet", 5],["ItemMatchbox", 5],["ItemSledge", 5],["ItemToolbox", 5]];
	
	{_crate addMagazineCargoGlobal _x;} forEach
		[["30m_plot_kit", 10],["bulk_empty", 10],["bulk_ItemTankTrap", 20],["bulk_ItemWire",  10],["CinderBlocks", 30],["cinder_door_kit", 10],["cinder_garage_kit", 10],["cinder_wall_kit", 60],["deer_stand_kit", 10],["desert_large_net_kit", 10],["desert_net_kit", 10],["forest_large_net_kit", 10],["forest_net_kit", 10],["fuel_pump_kit", 10],["ItemBurlap", 10],["ItemCanvas", 10],["ItemComboLock", 10],["ItemCorrugated", 10],["ItemFireBarrel_Kit", 10],["ItemFuelBarrelEmpty", 10],["ItemGenerator", 10],["ItemGunRackKit", 10],["ItemHotwireKit", 10],["ItemJerrycan", 10],["ItemLockbox", 10],["ItemPole", 10],["ItemSandbag", 50],["ItemSandbagExLarge", 20],["ItemSandbagExLarge5x", 20],["ItemSandbagLarge", 20],["ItemScaffoldingKit", 10],["BagFenceRound_DZ_kit",20],["ItemTankTrap", 10],["ItemTent", 5],["ItemDomeTent", 5],["ItemDesertTent", 5],["ItemVault", 10],["ItemWire", 10],["ItemWoodFloor", 30],["ItemWoodFloorHalf", 30],["ItemWoodFloorQuarter", 30],["ItemWoodLadder", 30],["ItemWoodStairs", 10],["ItemWoodStairsSupport", 10],["ItemWoodWall", 30],["ItemWoodWallDoor", 10],["ItemWoodWallDoorLg", 10],["ItemWoodWallGarageDoor", 10],["ItemWoodWallGarageDoorLocked", 10],["ItemWoodWallLg", 30],["ItemWoodWallThird", 20],["ItemWoodWallWindow", 20],["ItemWoodWallWindowLg", 30],["ItemWoodWallWithDoor", 10],["ItemWoodWallwithDoorLg", 10],["ItemWoodWallWithDoorLgLocked", 10],["ItemWoodWallWithDoorLocked", 10],["light_pole_kit", 10],["m240_nest_kit", 5],["metal_floor_kit", 60],["metal_panel_kit", 20],["MortarBucket", 5],["outhouse_kit", 5],["park_bench_kit", 5],["PartGeneric", 30],["PartPlankPack", 30],["PartPlywoodPack", 30],["PartWoodLumber", 30],["PartWoodPile", 30],["PartWoodPlywood", 30],["rusty_gate_kit", 5],["sandbag_nest_kit", 30],["stick_fence_kit", 5],["storage_shed_kit", 10],["sun_shade_kit", 10],["wooden_shed_kit", 10],["wood_ramp_kit", 10],["wood_shack_kit", 10],["workbench_kit", 5]];
	
	{_crate addBackpackCargoGlobal _x;} forEach
		[["DZ_LargeGunBag_EP1", 1]];

};


_c1 = objNull;
_c1 = createVehicle ["DZ_CardboardBox", [8238.377, 15471.233, -2.7418137e-005], [], 0, "CAN_COLLIDE"];
_c1 setDir 49.985943;
//_c1 setPos [8238.377, 15471.233, -2.7418137e-005];
[_c1] call PLAYZ_fillBuildingCrate;

_c2 = objNull;
_c2 = createVehicle ["DZ_CardboardBox", [8237.8418, 15471.866, 6.0319901e-005], [], 0, "CAN_COLLIDE"];
_c2 setDir 51.031193;
_c2 setPos [8237.8418, 15471.866, 6.0319901e-005];
[_c2] call PLAYZ_fillBuildingCrate;

_c3 = objNull;
_c3 = createVehicle ["DZ_CardboardBox", [8237.3018, 15472.503, -1.0967255e-005], [], 0, "CAN_COLLIDE"];
_c3 setDir 51.976101;
_c3 setPos [8237.3018, 15472.503, -1.0967255e-005];
[_c3] call PLAYZ_fillBuildingCrate;
/*
_c4 = objNull;
_c4 = createVehicle ["DZ_CardboardBox", [8236.7881, 15473.166, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
_c4 setDir 51.031193;
_c4 setPos [8236.7881, 15473.166, 3.3378601e-006];
[_c4] call PLAYZ_fillBuildingCrate;

_c5 = objNull;
_c5 = createVehicle ["DZ_CardboardBox", [8237.5732, 15472.153, 0.48345298], [], 0, "CAN_COLLIDE"];
_c5 setDir 47.458885;
_c5 setPos [8237.5732, 15472.153, 0.48345298];
[_c5] call PLAYZ_fillBuildingCrate;

_c6 = objNull;
_c6 = createVehicle ["DZ_CardboardBox", [8237.0195, 15472.78, 0.49769256], [], 0, "CAN_COLLIDE"];
_c6 setDir 51.379803;
_c6 setPos [8237.0195, 15472.78, 0.49769256];
[_c6] call PLAYZ_fillBuildingCrate;

_c7 = objNull;
_c7 = createVehicle ["DZ_CardboardBox", [8238.1602, 15471.54, 0.47688612], [], 0, "CAN_COLLIDE"];
_c7 setDir 49.206959;
_c7 setPos [8238.1602, 15471.54, 0.47688612];
[_c7] call PLAYZ_fillBuildingCrate;
*/


_c=objNull;
_c = createVehicle ["Land_Ind_BoardsPack1", [8239.2334, 15469.235, 2.2411346e-005], [], 0, "CAN_COLLIDE"];
_c setDir -128.46417;
_c setPos [8239.2334, 15469.235, 2.2411346e-005];
//[_c] call PLAYZ_fillBuildingCrate;


_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_BoardsPack2", [8236.7764, 15467.326, 9.2744827e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir -127.34739;
  _this setPos [8236.7764, 15467.326, 9.2744827e-005];
};

_vehicle_25 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [8234.2451, 15474.494, 1.8358231e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_25 = _this;
  _this setPos [8234.2451, 15474.494, 1.8358231e-005];
};

_vehicle_26 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled_heap", [8228.1914, 15476.052, 1.0728836e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_26 = _this;
  _this setPos [8228.1914, 15476.052, 1.0728836e-005];
};

_vehicle_27 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [8236.3135, 15474.121, 0.0001013279], [], 0, "CAN_COLLIDE"];
  _vehicle_27 = _this;
  _this setPos [8236.3135, 15474.121, 0.0001013279];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [8232.166, 15474.442, 0.00010037422], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setPos [8232.166, 15474.442, 0.00010037422];
};

_vehicle_31 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [8229.5947, 15469.011, 4.6014786e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_31 = _this;
  _this setDir -34.218567;
  _this setPos [8229.5947, 15469.011, 4.6014786e-005];
};

_vehicle_32 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [8229.6514, 15466.465, 0.00016617775], [], 0, "CAN_COLLIDE"];
  _vehicle_32 = _this;
  _this setPos [8229.6514, 15466.465, 0.00016617775];
};

_vehicle_33 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [8229.166, 15470.838, 5.1736832e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_33 = _this;
  _this setPos [8229.166, 15470.838, 5.1736832e-005];
};

/*
_vehicle_36 = objNull;
if (true) then
{
  _this = createVehicle ["DZ_MedBox", [8230.9189, 15467.796, 1.7404556e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_36 = _this;
  _this setDir 57.120049;
  _this setPos [8230.9189, 15467.796, 1.7404556e-005];
};
*/

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_EP1", [8230.0283, 15469.4, 0.31226411], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir -11.484895;
  _this setPos [8230.0283, 15469.4, 0.31226411];
};

//processInitCommands;


