//Sliders
[
	"heliEX_sdr", "SLIDER",
  ["External Helicopter Volume (%)","Volume of Exterior"],
	["Volume Controllers", "Heli Volume Settings"],
	[0, 100, 100, 0]
] call CBA_fnc_addSetting;

[
	"heliIN_sdr", "SLIDER",
  ["Internal Helicopter Volume (%)","Volume of Interior"],
	["Volume Controllers", "Heli Volume Settings"],
	[0, 100, 100, 0]
] call CBA_fnc_addSetting;

[
	"planeEX_sdr", "SLIDER",
  ["External Plane Volume (%)","Volume of Exterior"],
	["Volume Controllers", "Plane Volume Settings"],
	[0, 100, 100, 0]
] call CBA_fnc_addSetting;

[
	"planeIN_sdr", "SLIDER",
  ["Internal Plane Volume (%)","Volume of Interior"],
	["Volume Controllers", "Plane Volume Settings"],
	[0, 100, 100, 0]
] call CBA_fnc_addSetting;

//sim//
//CHECKBOX
[
	"SoIV_fn","CHECKBOX",
	["Simulation of Internal Volume"],
	["Volume Controllers", "Cockpit Simulation Settings"],
	false,
	true
] call CBA_fnc_addSetting;

//Sliders
[
	"heliEX_sim_sdr", "SLIDER",
  ["Internal Helicopter Volume (%)","Volume of Interior"],
	["Volume Controllers", "Cockpit Simulation Settings"],
	[0, 50, 25, 0]
] call CBA_fnc_addSetting;

[
	"planeEX_sim_sdr", "SLIDER",
  ["Internal Plane Volume (%)","Volume of Interior"],
	["Volume Controllers", "Cockpit Simulation Settings"],
	[0, 50, 25, 0]
] call CBA_fnc_addSetting;

//Sync
//CHECKBOX
[
	"sync_fn","CHECKBOX",
	["Synchronize the Internal and the External Volume"],
	["Volume Controllers", "Sync Settings (Internal and External Volume will be the 'Same')"],
	false,
	true
] call CBA_fnc_addSetting;
//Slider
[
	"sync_sdr", "SLIDER",
	["Vehicle Volume (%)","Volume of the Vehicle"],
	["Volume Controllers", "Sync Settings (Internal and External Volume will be the 'Same')"],
	[0, 100, 100, 0]
] call CBA_fnc_addSetting;