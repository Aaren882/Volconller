params ["_plane","_Engine_State"];

if ((isServer && hasInterface) or isDedicated) then {
  ["VCN_Init",[_veh,_Engine_State]] call CBA_fnc_globalEvent;
};

if (!isServer && hasInterface) then {
  ["VCN_Init",[_veh,_Engine_State]] call CBA_fnc_localEvent;
};
