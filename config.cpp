class CfgPatches
{
	class Volconller_C
	{
		units[]={};
		weapons[]={};
		requiredVersion=2;
		requiredAddons[]=
		{
			"A3_Air_F"
		};
	};
};
class VCN_EH
{
	engine="if (hasInterface && !didJIP) then {_this execVM 'MG8\Volconller\Functions\fn_init.sqf'};";
};
class DefaultEventHandlers
{
	/*class VCN_EH: VCN_EH
	{
	};*/
};
class Extended_PreInit_EventHandlers 
{
	class Volconller_PreInit
	{
		init = "call compile preprocessFileLineNumbers 'MG8\Volconller\XEH_preInit.sqf'";
	};
};
class Extended_PostInit_EventHandlers
{
	class Volconller_PostInit
	{
		init="call compile preprocessFileLineNumbers 'MG8\Volconller\XEH_postInit.sqf'";
	};
};
class CfgVehicles
{
	class AllVehicles;
	class Air: AllVehicles
	{
		class Eventhandlers;
	};
	class Plane: Air
	{
	};
	class Plane_Base_F: Plane
	{
	};
	class Plane_CAS_01_base_F: Plane_Base_F
	{
		DoorAnim="canopy_rot";
	};
	class Plane_CAS_02_base_F: Plane_Base_F
	{
		DoorAnim="canopy_rot";
	};
	class Plane_Fighter_03_base_F: Plane_Base_F
	{
		DoorAnim="canopy1";
	};
	class Plane_Fighter_01_Base_F: Plane_Base_F
	{
		DoorAnim="canopy_open";
	};
	class Plane_Fighter_02_Base_F: Plane_Base_F
	{
		DoorAnim="canopy_stage_1";
	};
	class Plane_Fighter_04_Base_F: Plane_Base_F
	{
		DoorAnim="canopy_stage_1";
	};
	class Helicopter: Air
	{
	};
	class FIR_A10A_Base: Plane_CAS_01_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_A10C_Base: Plane_CAS_01_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_A10U_Base: Plane_CAS_01_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F16_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F35B_Armaverse_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_AV8B_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_AV8B_NA_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_AV8B_GR7_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15A_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15B_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15E_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15E_Demo_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15B_Civ_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15D_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F15SE_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F22_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
	class FIR_F23A_Base: Plane_Fighter_03_base_F
	{
		class EventHandlers: Eventhandlers
		{
		};
	};
};
class CfgFunctions
{
	class VCN
	{
		class Volconller
		{
			file="MG8\Volconller\Functions";
			class Init
			{
			};
			class engine
			{
			};
			class heli
			{
			};
			class plane
			{
			};
		};
	};
};
