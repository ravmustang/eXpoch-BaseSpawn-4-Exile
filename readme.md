[![Arma 2.04](https://img.shields.io/badge/Arma-2.04-blue.svg)](https://dev.arma3.com/post/spotrep-00098) [![Exile 1.0.4a "Pineapple"](https://img.shields.io/badge/Exile-1.0.4a%20"Lemon"-yellow.svg)](http://www.exilemod.com/topic/25026-104-pineapple/) 


# eXpoch Base Spawn 4 Exile
## This has been created for use with Exile

## Installation:

1. Add the overrides folder to your mission file

2. Add the contents of the initPlayerLocal.sqf to your mission file's same named file (see configuration below for comments on these)
	- eXpochClientPlayerLastBaseSpawn = diag_tickTime; //DO NOT TOUCH THIS ONE
	- eXpochBaseRespawnTimeLimit = 900;
	- eXpochBaseSpawnLevelRequired = 4;
	- eXpochBaseSpawnAllowedType = "ExileTerritoryBuildRights";
	
3. Add the contents of the CfgCustomExileCode to your mission file's config.cpp same named config
	- ExileClient_gui_selectSpawnLocation_event_onSpawnButtonClick = "overrides\ExileClient_gui_selectSpawnLocation_event_onSpawnButtonClick.sqf";
	- ExileClient_gui_selectSpawnLocation_show = "overrides\ExileClient_gui_selectSpawnLocation_show.sqf";
	
## Configuration:

1. eXpochBaseRespawnTimeLimit = 900;
	- How long before the players can respawn at their base since the last death and joining server  - default: 900

2. eXpochBaseSpawnLevelRequired = 4;
	- Required Level of Base for Allowing Spawn - default: 4

3. eXpochBaseSpawnAllowedType = "ExileTerritoryBuildRights" 
	- If only owners can spawn change this to "ExileOwnerUID" - default: "ExileTerritoryBuildRights"
	
## Licensing

1. The original Overrides work by Exile is CC4.0-nc-nd as expressed over and over and over by them.
	- Yet they created an override system for modification of their work. Irony anyone?

2. These modifications made for this script are licensed as APL-SA.
	- You can yank it and use it, abuse it, modify it and redistribute it with proper "Credits" of course 
	- These "Credits" will come in the fashion of either "DonkeyPunch Community Gaming" or "DirtySanchez"
	- These "Credits" will also include the website for download and support should anyone else want to use it. http://DonkeyPunch.INFO	
	- Personal feelings and emotional responses will not come from this work or its use in the public.

3. You are not allowed to sell this "Script" or provide any service to install it.
	- You are not allowed to utilize the APL-SA license on the work and add it to another named script and sell that script with this work included.
	- "WE" the authors reserve the right to disallow certain individual communities and persons from using, hosting, modifying, selling, distributing and leave this list open ended so that all aspects of disllowed usage can be added at any time.
	- "WE" will not use this aspect against anyone unless their actions in the "Arma" or internet communities displays that of a greedy, profiteering nature and not one of advancement of "Arma" or the internet communities.

4. Definitions
	- "Arma" being the product made by Bohemia Interactive and purchased through BIS Store or Steam with a valid legal License for use and ownership.
	- "WE" being any individual that is a part of DonkeyPunch Community Gaming Development Team.
	- "Script" being any work, "code", comments not a part of the original program or software. 
	- "Code" does not limit the definition to only the parts that operate within "Arma", but is a broad term used to define the entire product within including all comments and remarks made by "WE".
	- "Credits" being the author("DonkeyPunch Community Gaming" or "DirtySanchez") and website(http://DonkeyPunch.INFO)
