params ["_plane"];

_door = getText (configFile >> "CfgVehicles" >> typeof _plane >> "DoorAnim");

_planeEXV_sdr_p = planeEX_sdr / 100;
_planeINV_sdr_p = planeIN_sdr / 100;

_planeEX_sim_sdr_P = _planeEXV_sdr_p * (planeEX_sim_sdr / 100);

_dooranim = _plane animationPhase _door;

_triggerSI = _dooranim > 10;

setCustomSoundController [_plane ,"CustomSoundController17" ,_planeINV_sdr_p - 1];

if ((SoIV_fn) and (vehicle player != player) and (cameraView == "internal")) then {
	/*if !( isEqualTo "") then {

		setCustomSoundController [_plane ,"CustomSoundController15" ,(_planeEX_sim_sdr_P - 1) * (-0.01 * (_nowdoor - 15))];

	} else {

		setCustomSoundController [_plane ,"CustomSoundController15" ,(_planeEX_sim_sdr_P - 1)];

	};*/
	if ((vehicle player) iskindof "plane") then {

		if !(_door isEqualTo "") then {
			if (_triggerSI) then {
				setCustomSoundController [_plane ,"CustomSoundController15" ,_planeEX_sim_sdr_P - 1];
				} else {
					setCustomSoundController [_plane ,"CustomSoundController15" ,_planeEXV_sdr_p - 1];
				};
			} else {
				setCustomSoundController [_plane ,"CustomSoundController15" ,_planeEX_sim_sdr_P - 1];
			};

		} else {
			setCustomSoundController [_plane ,"CustomSoundController15" ,_planeEX_sim_sdr_P - 1];
		};

} else {
	setCustomSoundController [_plane ,"CustomSoundController15" ,_planeEXV_sdr_p - 1];
};
