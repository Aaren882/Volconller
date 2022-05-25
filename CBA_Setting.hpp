//Sliders
[
	"heliEX_sdr", "SLIDER",
	["External Helicopter Volume (%)","Volume of Exterior"],
	["Volume Controllers", "Heli Volume Settings"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

[
	"heliIN_sdr", "SLIDER",
	["Internal Helicopter Volume (%)","Volume of Interior"],
	["Volume Controllers", "Heli Volume Settings"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

[
	"planeEX_sdr", "SLIDER",
	["External Plane Volume (%)","Volume of Exterior"],
	["Volume Controllers", "Plane Volume Settings"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

[
	"planeIN_sdr", "SLIDER",
	["Internal Plane Volume (%)","Volume of Interior"],
	["Volume Controllers", "Plane Volume Settings"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

[
	"planeBreathe_sdr", "SLIDER",
	["Breathing Sound Volume (%)","Volume of G-Force Effects"],
	["Volume Controllers", "Plane Volume Settings"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

[
	"planeRumbleG_sdr", "SLIDER",
	["G-Force Rumbling Sound Volume (%)","Volume of Rumbling Effects"],
	["Volume Controllers", "Plane Volume Settings"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

//sim//
//CHECKBOX
[
	"SoIV_fn","CHECKBOX",
	["Simulation of Internal Volume"],
	["Volume Controllers", "Cockpit Simulation Settings"],
	false,
	0,
	{
		if (_this and (missionNamespace getVariable ["VCN_Camera_Handler",-1] == -1)) then {
		  _id = ["cameraView", {
				params ["_unit","_current","_previous"];
				if (_current == "EXTERNAL") then {
				  call VCN_fnc_setVolume;
				};
			}] call CBA_fnc_addPlayerEventHandler;
			missionNamespace setVariable ["VCN_Camera_Handler",_id];
		} else {
			call VCN_fnc_setVolume;
			missionNamespace setVariable ["VCN_Camera_Handler",-1];
		};
	}
] call CBA_fnc_addSetting;

//Sliders
[
	"heliEX_sim_sdr", "SLIDER",
	["Helicopter Volume (%)","Volume of Interior"],
	["Volume Controllers", "Cockpit Simulation Settings"],
	[0, 50, 25, 0],
	0
] call CBA_fnc_addSetting;

[
	"planeEX_sim_sdr", "SLIDER",
	["Plane Volume (%)","Volume of Interior"],
	["Volume Controllers", "Cockpit Simulation Settings"],
	[0, 50, 25, 0],
	0
] call CBA_fnc_addSetting;

//Sync
//CHECKBOX
[
	"sync_fn","CHECKBOX",
	["Synchronize the Internal and the External Volume"],
	["Volume Controllers", "Sync Settings (Int and Ext Volume will be the 'Same')"],
	false,
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;
//Slider
[
	"sync_plane_sdr", "SLIDER",
	["Plane Volume (%)","Volume of Heli"],
	["Volume Controllers", "Sync Settings (Int and Ext Volume will be the 'Same')"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;

[
	"sync_heli_sdr", "SLIDER",
	["Heli Volume (%)","Volume of Heli"],
	["Volume Controllers", "Sync Settings (Int and Ext Volume will be the 'Same')"],
	[0, 100, 100, 0],
	0,
	{
		call VCN_fnc_setVolume;
	}
] call CBA_fnc_addSetting;
