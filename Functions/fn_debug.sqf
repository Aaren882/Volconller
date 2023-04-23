{
	_air_veh = _x;
	_playerVeh = cameraOn;
	if !(_veh getVariable ["VCN_Actived", false]) then {
		if (_air_veh isKindOf "Helicopter") then {
			[_air_veh,_playerVeh] call VCN_fnc_heli;
		};
		if (_air_veh isKindOf "Plane") then {
			[_air_veh,_playerVeh] call VCN_fnc_plane;
		};
	};
} forEach vehicles;
