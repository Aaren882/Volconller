params ["_veh", "_Engine_State"];

if (VCN_debug1_fn) then {
  hintSilent formatText ["Step 1 :Init State%1Object :%2%1Class Name :%3%1Fuel :%4%1Time :%5",lineBreak,_veh,typeof _veh,fuel _veh,time];
};

if (_Engine_State and !(_veh getVariable ["VCN_Actived", false])) then {
	//SetVolume (Global)
	call VCN_fnc_setVolume;

	_playerVeh = cameraOn;

	if ((_veh isKindOf "Plane") or (_veh isKindOf "Helicopter")) then {

		if (_veh isKindOf "Helicopter") then {
			[_veh,_playerVeh] spawn VCN_fnc_heli;
		};
		if (_veh isKindOf "Plane") then {
			[_veh,_playerVeh] spawn VCN_fnc_plane;
		};
	} else {
		call VCN_fnc_debug;
	};
};
