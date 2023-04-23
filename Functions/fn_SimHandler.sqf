if (_this && ((missionNamespace getVariable ["VCN_Camera_Handler",-1]) isEqualTo -1)) then {
  //-Camera View
  private _id_cam = ["cameraView", {
    params ["_unit","_current","_previous"];
    if (_current == "EXTERNAL") then {
      call VCN_fnc_setVolume;
    };
  }] call CBA_fnc_addPlayerEventHandler;

  //-Vehicle EH
  private _id_veh = ["vehicle", {
    params ["_unit","_current","_previous"];
    if (_current == _unit) then {
      call VCN_fnc_setVolume;
    };
  }] call CBA_fnc_addPlayerEventHandler;

  missionNamespace setVariable ["VCN_Camera_Handler",[_id_cam,_id_veh]];
} else {
  call VCN_fnc_setVolume;
  _EHs = missionNamespace getVariable "VCN_Camera_Handler";

  ["cameraView", _EHs # 0] call CBA_fnc_removePlayerEventHandler;
  ["vehicle", _EHs # 1] call CBA_fnc_removePlayerEventHandler;
  missionNamespace setVariable ["VCN_Camera_Handler",-1];
};
