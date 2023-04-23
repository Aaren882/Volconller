params ["_veh", "_Engine_State"];

if (VCN_debug1_fn) then {
  hintSilent format ["Step 1 :Init State%1Object :%2%1Class Name :%3%1Fuel :%4%1Time :%5",lineBreak,_veh,typeof _veh,fuel _veh,time];
};

if (_Engine_State && !(_veh getVariable ["VCN_Actived", false]) && (getNumber (configFile >> "CfgVehicles" >> typeof _veh >> "Exclude_AScore") != 1)) then {
	//SetVolume (for all Vehicles [Local])
	call VCN_fnc_setVolume;

	if ((_veh isKindOf "Plane") or (_veh isKindOf "Helicopter")) then {
		if (_veh isKindOf "Plane") then {
			_veh call VCN_fnc_plane;
		} else {
      _veh call VCN_fnc_heli;
    };
	} else {
		call VCN_fnc_debug;
	};
};
