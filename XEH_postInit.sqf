if (!hasInterface) exitWith {};

#include "CBA_Setting.hpp"

["VCN_Init",VCN_fnc_init] call CBA_fnc_addEventHandler;

/* if ((isServer && hasInterface) or isDedicated) then {
  ["VCN_Init",[]] call CBA_fnc_globalEvent;
};

if (!isServer && hasInterface) then {
  ["VCN_Init",[]] call CBA_fnc_localEvent;
}; */
["VCN_Init",[]] call CBA_fnc_localEvent;
