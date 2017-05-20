/**
 * ExileClient_gui_selectSpawnLocation_event_onSpawnButtonClick
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
 
if(ExileClientSelectedSpawnLocationMarkerName in eXpochClientPlayerBases)then
{
	eXpochClientPlayerLastBaseSpawn = diag_tickTime;
};
ExileClientSpawnLocationSelectionDone = true;
closeDialog 1; 
true