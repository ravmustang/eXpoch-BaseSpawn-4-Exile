/**
 * ExileClient_gui_selectSpawnLocation_show
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 *
 * Modifications for eXpoch Base Spawn 4 Exile
 * by DirtySanchez
 * and DonkeyPunch Community Gaming
 * Please read the readme for all information pertaining to this work and its use
 */

private["_display","_spawnButton","_listBox","_listItemIndex","_numberOfSpawnPoints","_randNum","_randData","_randomSpawnIndex","_territoryPos"];
disableSerialization;
ExileClientSpawnLocationSelectionDone = false;
ExileClientSelectedSpawnLocationMarkerName = "";
eXpochClientPlayerBases = [];
createDialog "RscExileSelectSpawnLocationDialog";
waitUntil
{
	_display = findDisplay 24002;
	!isNull _display
};
_spawnButton = _display displayCtrl 24003;
_spawnButton ctrlEnable false;
_display displayAddEventHandler ["KeyDown", "_this call ExileClient_gui_loadingScreen_event_onKeyDown"];
_listBox = _display displayCtrl 24002;
lbClear _listBox;
{
	if (getMarkerType _x == "ExileSpawnZone") then
	{
		_listItemIndex = _listBox lbAdd (markerText _x);
		_listBox lbSetData [_listItemIndex, _x];
	};
}
forEach allMapMarkers;

//eXpoch base spawn
if(eXpochClientPlayerLastBaseSpawn < (diag_tickTime - eXpochBaseRespawnTimeLimit))then
{
	_mapCenter = [worldSize/2,worldSize/2,0];
	_allTerritoryFlags = (nearestObjects [_mapCenter, ["Exile_Construction_Flag_Static"], ceil(worldSize/1.75 + 3000)]);
	{
		_playerUID = getPlayerUID player;
		_buildRights = _x getVariable [eXpochBaseSpawnAllowedType, []];
		if (_playerUID in _buildRights) then
		{
			_territoryLevelConfig = _x getVariable ["ExileTerritoryLevel", 0];
			_territoryPos = getPosATL _x;
			if((_territoryLevelConfig >= eXpochBaseSpawnLevelRequired) && !((getMarkerPos ExileClientLastDeathMarker) distance _territoryPos < eXpochBaseSpawnDeadBodyDistLimit)) then{
				_baseName = _x getVariable ["ExileTerritoryName", ""];
				eXpochClientPlayerBases pushBack _baseName;
				createMarker [_baseName,_territoryPos];
				_listItemIndex = _listBox lbAdd _baseName;
				_listBox lbSetData [_listItemIndex, _baseName];
			};
		};
	}forEach _allTerritoryFlags;
};

_numberOfSpawnPoints = {getMarkerType _x == "ExileSpawnZone"} count allMapMarkers;
if (_numberOfSpawnPoints > 0) then 
{
	_randNum = floor(random _numberOfSpawnPoints);
	_randData = lbData [24002,_randNum];
	_randomSpawnIndex = _listBox lbAdd "Random";
	_listBox lbSetData [_randomSpawnIndex, _randData];
};
true