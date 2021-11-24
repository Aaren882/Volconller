params ["_heli"];

_veh = vehicle player;

_heliEXV_sdr_p = heliEX_sdr / 100;
_heliINV_sdr_p = heliIN_sdr / 100;

_dooranim = 1;
_door = "";
if (_veh iskindof "plane") then {
	_door = getText (configFile >> "CfgVehicles" >> typeof _veh >> "DoorAnim");
	_dooranim = _veh animationPhase _door;
};
_triggerSI = _dooranim > 10;

_heliEX_sim_sdr_P = _heliEXV_sdr_p * (heliEX_sim_sdr / 100);

setCustomSoundController [_heli ,"CustomSoundController16" ,_heliINV_sdr_p - 1];

if ((SoIV_fn) and (vehicle player != player) and (cameraView == "internal")) then {

	if (_veh iskindof "plane") then {
		if !(_door isEqualTo "") then {
			if (_triggerSI) then {
				setCustomSoundController [_heli ,"CustomSoundController14" ,_heliEX_sim_sdr_P - 1];
			} else {
				setCustomSoundController [_heli ,"CustomSoundController14" ,_heliEXV_sdr_p - 1];
			};
		} else {
			setCustomSoundController [_heli ,"CustomSoundController14" ,_heliEX_sim_sdr_P - 1];
		};
	} else {
		setCustomSoundController [_heli ,"CustomSoundController14" ,_heliEX_sim_sdr_P - 1];
	};

} else {
	setCustomSoundController [_heli ,"CustomSoundController14" ,_heliEXV_sdr_p - 1];
};
