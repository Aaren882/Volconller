params ["_veh", "_Engine_State"];

if (_Engine_State) then {
	_VCN_handler = addMissionEventHandler ["EachFrame", {

		_veh = _thisArgs # 0;

    if !(isGamePaused) then {
			_playerVeh = cameraOn;

			_veh setVariable ["VCN_Actived", true];

			if (_veh isKindOf "Helicopter") then {
				[_veh,_playerVeh] spawn VCN_fnc_heli;
			};

			if (_veh isKindOf "Plane") then {
				[_veh,_playerVeh] spawn VCN_fnc_plane;
			};

		};
	},[_veh]];
	//Return handler
	_veh setVariable ["VCN_EachFrame_Handler", _VCN_handler];
} else {
	if (_veh getVariable ["VCN_Actived", false]) then {
	  removeMissionEventHandler ["EachFrame", (_veh getVariable ["VCN_EachFrame_Handler",-1])];
		_veh setVariable ["VCN_Actived", false];
	};
};
