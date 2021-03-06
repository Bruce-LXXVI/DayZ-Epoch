/*
Description:
Checks whether the player already has the tool on their toolbelt and then adds it. Useful for batch crafting tools.
1. If they don't then it adds it to their toolbelt. If the toolbelt is full it is dropped on the floor.
2. If they do then it adds it to their backpack. If their backpack is full it spills out on the floor.
3. If they have no backpack it spawns on the floor as a last resort.
The player is given an appropriate systemChat message in each case.

Parameter: 
_this: string - toolbelt item classname to check and add
    
How to use:
"ItemSledge" call player_addDuplicateTool;
*/
private ["_bag","_dropOnFloor"];

_dropOnFloor = {
	private ["_location","_object"];
	systemChat format[localize "str_epoch_player_314",_this];
	_location = player modeltoworld [0,0.3,0];
	if ((_location select 2) < 0) then {_location set [2,0];};
	_object = createVehicle ["WeaponHolder",_location,[],0,"CAN_COLLIDE"];
	if (surfaceIsWater _location) then {_object setPosASL (getPosASL player);} else {_object setPosATL _location;};
	_object setVariable ["permaLoot",true];
	_object addWeaponCargoGlobal [_this,1];
};

if (_this in items player) then {
	_bag = unitBackpack player;
	if (!isNull _bag) then {
		systemChat format[localize "str_epoch_player_313",_this];
		_bag addWeaponCargoGlobal [_this,1];
	} else {
		_this call _dropOnFloor;
	};
} else {
	if !([player,_this] call BIS_fnc_invAdd) then {
		systemChat localize "str_epoch_player_107";
		_this call _dropOnFloor;
	};
};