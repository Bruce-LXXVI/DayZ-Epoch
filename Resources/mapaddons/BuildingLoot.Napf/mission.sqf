activateAddons [
];

activateAddons [];
initAmbientLife;

_this = createCenter west;
_center_0 = _this;

_group_0 = createGroup _center_0;

_unit_0 = objNull;
if (true) then
{
  _this = _group_0 createUnit ["USMC_Soldier_AA", [8246.3105, 15433.758, -5.0974698], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_vehicle_0 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8238.377, 15471.233, -2.7418137e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setDir 49.985943;
  _this setPos [8238.377, 15471.233, -2.7418137e-005];
};

_vehicle_2 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8237.8418, 15471.866, 6.0319901e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2 = _this;
  _this setDir 51.031193;
  _this setPos [8237.8418, 15471.866, 6.0319901e-005];
};

_vehicle_5 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8237.3018, 15472.503, -1.0967255e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5 = _this;
  _this setDir 51.976101;
  _this setPos [8237.3018, 15472.503, -1.0967255e-005];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8236.7881, 15473.166, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir 51.031193;
  _this setPos [8236.7881, 15473.166, 3.3378601e-006];
};

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8237.5732, 15472.153, 0.48345298], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir 47.458885;
  _this setPos [8237.5732, 15472.153, 0.48345298];
};

_vehicle_14 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8237.0195, 15472.78, 0.49769256], [], 0, "CAN_COLLIDE"];
  _vehicle_14 = _this;
  _this setDir 51.379803;
  _this setPos [8237.0195, 15472.78, 0.49769256];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["FoodBox2", [8238.1602, 15471.54, 0.47688612], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir 49.206959;
  _this setPos [8238.1602, 15471.54, 0.47688612];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_BoardsPack1", [8239.2334, 15469.235, 2.2411346e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir -128.46417;
  _this setPos [8239.2334, 15469.235, 2.2411346e-005];
};

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

_vehicle_36 = objNull;
if (true) then
{
  _this = createVehicle ["MedBox1", [8230.9189, 15467.796, 1.7404556e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_36 = _this;
  _this setDir 57.120049;
  _this setPos [8230.9189, 15467.796, 1.7404556e-005];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_EP1", [8230.0283, 15469.4, 0.31226411], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir -11.484895;
  _this setPos [8230.0283, 15469.4, 0.31226411];
};

processInitCommands;
runInitScript;
finishMissionInit;
