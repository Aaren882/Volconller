if (!hasInterface) exitWith {};

["VCN_Init",VCN_fnc_init] call CBA_fnc_addEventHandler;
["VCN_Init",[]] call CBA_fnc_localEvent;

/* if ((isServer && hasInterface) or isDedicated) then {
  ["VCN_Init",[]] call CBA_fnc_globalEvent;
};

if (!isServer && hasInterface) then {
  ["VCN_Init",[]] call CBA_fnc_localEvent;
}; */
