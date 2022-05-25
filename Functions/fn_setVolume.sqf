_heliEXV_sdr_p = heliEX_sdr / 100;
_heliINV_sdr_p = heliIN_sdr / 100;

_planeEXV_sdr_p = planeEX_sdr / 100;
_planeINV_sdr_p = planeIN_sdr / 100;

if (sync_fn) then {
	_planeEXV_sdr_p = sync_plane_sdr / 100;
	_planeINV_sdr_p = sync_plane_sdr / 100;

  _heliEXV_sdr_p = sync_heli_sdr / 100;
	_heliINV_sdr_p = sync_heli_sdr / 100;
};

{
  _veh = _x;
  if (_veh isKindOf "Helicopter") then {
    //Ext
    setCustomSoundController [_veh ,"CustomSoundController14" ,_heliEXV_sdr_p - 1];
    //Int
    setCustomSoundController [_veh ,"CustomSoundController16" ,_heliINV_sdr_p - 1];
  };
  if (_veh isKindOf "Plane") then {
    //Ext
    setCustomSoundController [_veh ,"CustomSoundController15" ,_planeEXV_sdr_p - 1];
    //Int
    setCustomSoundController [_veh ,"CustomSoundController17" ,_planeINV_sdr_p - 1];

    //Others
    setCustomSoundController [_veh ,"CustomSoundController25" ,(planeBreathe_sdr / 100) - 1];
    setCustomSoundController [_veh ,"CustomSoundController26" ,(planeRumbleG_sdr / 100) - 1];
  };
} foreach vehicles;
