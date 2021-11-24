params ["_veh", "_Engine_State"];

if (_Engine_State) then {
	VCN_handler = addMissionEventHandler ["EachFrame", {

		_veh = _thisArgs # 0;

    if !(isGamePaused) then {

			_veh setVariable ["VCN_Actived", true];

			if (_veh isKindOf "Helicopter") then {
				_veh spawn VCN_fnc_heli;
			};

			if (_veh isKindOf "Plane") then {
				_veh spawn VCN_fnc_plane;
			};

		};
	},[_veh]];
} else {
	if (_veh getVariable ["VCN_Actived", false]) then {
	  removeMissionEventHandler ["EachFrame", VCN_handler];
		_veh setVariable ["VCN_Actived", false];
	};
};
