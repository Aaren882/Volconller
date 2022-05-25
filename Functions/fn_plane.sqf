params ["_plane","_veh"];

_door = getText (configFile >> "CfgVehicles" >> typeof _plane >> "DoorAnim");

_planeEXV_sdr_p = planeEX_sdr / 100;
_planeINV_sdr_p = planeIN_sdr / 100;

if (sync_fn) then {
	_planeEXV_sdr_p = sync_plane_sdr / 100;
	_planeINV_sdr_p = sync_plane_sdr / 100;
};

_planeEX_sim_sdr_P = _planeEXV_sdr_p * (planeEX_sim_sdr / 100);

_dooranim = _plane animationPhase _door;

_triggerSI = _dooranim > 10;

/* setCustomSoundController [_plane ,"CustomSoundController17" ,_planeINV_sdr_p - 1];
setCustomSoundController [_plane ,"CustomSoundController25" ,(planeBreathe_sdr / 100) - 1];
setCustomSoundController [_plane ,"CustomSoundController26" ,(planeRumbleG_sdr / 100) - 1]; */

//-Freq
/////////////////////////////////////////////////////////////////////////////
_time = _plane getVariable ["Exhaust_Sound_Delaytime", -1];
_thrust = _plane getSoundController "thrust";
_freq_real = 0.8 * (_thrust ^ 2);

if (_time < time) then {
	call {
		_freq = _plane getVariable ["Exhaust_Sound_Idle",0];

		_range_Freq = (_freq_real - _freq) * 0.1;
		_freq = _freq + _range_Freq;

		if (abs(_range_Freq) < 0.0001) then {
		  _freq = _freq_real;
		};

		_plane setVariable ["Exhaust_Sound_Idle",_freq];

		// -Idle Sound
		if ((driver _plane) in allPlayers) then {
			setCustomSoundController [_plane, "CustomSoundController19", _freq];
		} else {
			// -AI
			if (isTouchingGround _plane) then {
				setCustomSoundController [_plane, "CustomSoundController19", _freq];
			} else {
				// -CAS Module
				if (_plane getVariable ["Module_CAS_Sound",true]) then {
					_plane setVariable ["Exhaust_Sound_Idle",0.8];
					setCustomSoundController [_plane, "CustomSoundController19", 0.8];
				};
			};
		};

		// -Forsage Sound
		_volume = _plane getVariable ["Exhaust_Sound_Forsage",0];

		_Vol_real = 1.6 * (_freq) ^ 2;

		_range_vol = (_Vol_real - _volume) * 0.2;
		_volume =  _volume + _range_vol;

		if (abs(_range_vol) < 0.0001) then {
		  _volume = _Vol_real;
		};

		_plane setVariable ["Exhaust_Sound_Forsage",_volume];

		setCustomSoundController [_plane, "CustomSoundController20", _volume];

		//-Delay per 0.05s
		_plane setVariable ["Exhaust_Sound_Delaytime", (time + 0.05)];
	};
};
/////////////////////////////////////////////////////////////////////////////

//-Volume
if ((SoIV_fn) and (_veh != player) and (cameraView == "internal")) then {
	if (_veh iskindof "plane") then {
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
};/* else {
	//External
	setCustomSoundController [_plane ,"CustomSoundController15" ,_planeEXV_sdr_p - 1];
};*/
