---comment DO NOT call this function directly, use Event_Save(STT_Auto) instead
function __Internal_Game_Autosave()
end

---comment DO NOT call this function directly, use Event_Save(STT_Quick) instead
function __Internal_Game_Quicksave()
end

---comment DO NOT call this function directly, use Event_SaveWithName(STT_Standard) instead
function __Internal_Game_SaveGame()
end

---comment DO NOT call this function directly, use Event_SaveWithName(STT_Dev) instead
function __Internal_Game_SaveToFileDev()
end

---comment Setup a cached path that periodically updates its path between specified marker and self HQ. This allows the AI to detect whenever pathability is changed to this marker (e.g. being walled off).
---@param AIPlayer_SetMarkerToUpdateCachedPathToHQ(Player Void
---@param marker MarkerID
---@param pathCheckIntervalSecs Real
function 0(AIPlayer_SetMarkerToUpdateCachedPathToHQ(Player, marker, pathCheckIntervalSecs)
end

---comment Setup a cached path that periodically updates its path between specified marker and position. This allows the AI to detect whenever pathability is changed to between the marker and position (e.g. being walled off).
---@param AIPlayer_SetMarkerToUpdateCachedPathToPosition(Player Void
---@param toMarker MarkerID
---@param fromPosition Position
---@param pathCheckIntervalSecs Real
function 0(AIPlayer_SetMarkerToUpdateCachedPathToPosition(Player, toMarker, fromPosition, pathCheckIntervalSecs)
end

---comment Set whether or not an action marker is visible.
---@param name String
---@param visible Boolean
function ActionMarker_SetVisible(name, visible)
end

---comment Start the given action marker's FX.
---@param name String
function ActionMarker_StartAction(name)
end

---comment Stop the given action marker's FX.
---@param name String
function ActionMarker_StopAction(name)
end

---comment overrides the Heavy Cover Occupancy for the passed EBP
---@param pPlayer PlayerID
---@param ebp ScarEntityPBG
---@param occupancyOverride Integer
function AI_AddHeavyCoverEbpOccupancyOverride(pPlayer, ebp, occupancyOverride)
end

---comment Adds a prefab to the AIPrefab system. Target must be set up in a follow up call with returned ID
---@param player PlayerID
---@param name String
---@param behaviourName String
---@param radius Real
---@param minDifficulty Integer
---@param maxDifficulty Integer
---@param canReassign Boolean
---@param active Boolean
function AI_AddPrefab(player, name, behaviourName, radius, minDifficulty, maxDifficulty, canReassign, active)
end

---comment Log the combat result features of all squads owned by a player for a given conflict
---@param conflictID Integer
---@param playerA PlayerID
---@param playerB PlayerID
function AI_CacheCombatFeatureTrainingData(conflictID, playerA, playerB)
end

---comment Get combat fitness estimate. Return value will be between 1.0 and 0.0. 1.0 means teamA wins outright, 0.0 means teamB wins outright.
---@param teamASquads SGroupID
---@param teamAEntities EGroupID
---@param teamAPBGs PropertyBagGroup
---@param teamBSquads SGroupID
---@param teamBEntities EGroupID
---@param teamBPBGs PropertyBagGroup
---@param aiPlayerA PlayerID
---@param playerB PlayerID
---@param playerAIsAttacker Boolean
function AI_CalculateCombatFitnessEstimate(teamASquads, teamAEntities, teamAPBGs, teamBSquads, teamBEntities, teamBPBGs, aiPlayerA, playerB, playerAIsAttacker)
end

---comment Checks if this entity can cause suppression
---@param aiPlayer PlayerID
---@param entity EntityID
function AI_CanEntityCauseSuppression(aiPlayer, entity)
end

---comment Check if the entity can load squad and shoot its target after loading (This function should only be called by AI)
---@param entity EntityID
---@param squad SquadID
---@param bCheckSquadState Boolean
---@param bOverload Boolean
function AI_CanLoadSquadAndAttackCurrentTarget(entity, squad, bCheckSquadState, bOverload)
end

---comment Checks if this squad can cause suppression
---@param aiPlayer PlayerID
---@param pSquad SquadID
function AI_CanSquadCauseSuppression(aiPlayer, pSquad)
end

---comment Checks if this squad can decrew the entity
---@param pDriverSquad SquadID
---@param pDecrewTargetEntity EntityID
function AI_CanSquadDecrew(pDriverSquad, pDecrewTargetEntity)
end

---comment Clear a combat entry from the cache, typically done instead of logging it
---@param conflictID Integer
function AI_ClearCombatTrainingCacheEntry(conflictID)
end

---comment This clears the repair priority value for a given squad or building PBG.
---@param pPlayer PlayerID
---@param pbgShortname String
function AI_ClearPBGRepairPriority(pPlayer, pbgShortname)
end

---comment Clear all intents associated with this AIPrefab
---@param prefabId UniqueID
---@param player PlayerID
function AI_ClearPrefabAIIntents(prefabId, player)
end

---comment Returns true if the configured input feature calculators characterizes this squad
---@param player PlayerID
---@param squadPBG PropertyBagGroup
function AI_CombatFitnessCharacterizesSquad(player, squadPBG)
end

---comment Returns the defensive upgrades for this structure archetype member
---@param memberPBG PropertyBagGroup
function AI_CombatFitnessGetDefensiveUpgradesForStructureArchetypeMember(memberPBG)
end

---comment Returns healer feature option pbgs
function AI_CombatFitnessGetHealerPBGs()
end

---comment Returns the offensive upgrades for this structure archetype member
---@param memberPBG PropertyBagGroup
function AI_CombatFitnessGetOffensiveUpgradesForStructureArchetypeMember(memberPBG)
end

---comment Returns the player upgrades configured in the player upgrade input calculator
function AI_CombatFitnessGetPlayerUpgrades()
end

---comment Returns squad pbgs for all squad archetypes
function AI_CombatFitnessGetSquadArchetypeNames()
end

---comment Returns squad pbgs for a given archetype (assuming that archetype is composed of squad pbgs)
---@param archtypeNameStr String
function AI_CombatFitnessGetSquadArchetypePBGs(archtypeNameStr)
end

---comment Returns entity pbgs for a given archetype (assuming that archetype is composed of entity pbgs)
---@param archtypeNameStr String
function AI_CombatFitnessGetStructureArchetypePBGs(archtypeNameStr)
end

---comment Converts an AIEntity into an Entity
---@param pAIEntity EntityID
function AI_ConvertToSimEntity(pAIEntity)
end

---comment Converts an AIPlayer into a Player
---@param pAIPlayer PlayerID
function AI_ConvertToSimPlayer(pAIPlayer)
end

---comment Converts an AISquad into a Squad
---@param pAISquad SquadID
function AI_ConvertToSimSquad(pAISquad)
end

---comment Create the combat feature logs in the game log directory
function AI_CreateAICombatFitnessLogs()
end

---comment Create a new encounter for player
---@param pPlayer PlayerID
---@param encounterType Integer
function AI_CreateEncounter(pPlayer, encounterType)
end

---comment Enables/disables debugging of AI Attack Encounter Encounter Position Scoring
---@param enable Boolean
function AI_DebugAttackEncounterPositionScoringEnable(enable)
end

---comment Returns true if AI Attack Encounter Position Scoring is enabled
function AI_DebugAttackEncounterPositionScoringIsEnabled()
end

---comment Prints detailed rating debug info in the AILog for all squads and entities in the groups
---@param sgroup SGroupID
---@param egroup EGroupID
---@param player PlayerID
function AI_DebugLogGroupCombatRatings(sgroup, egroup, player)
end

---comment Prints detailed rating debug info in the AILog for all the PBGs in the list
---@param pbgList PropertyBagGroup
---@param player PlayerID
function AI_DebugLogPBGCombatRatings(pbgList, player)
end

---comment Enables/disables AI Lua Debugging
---@param enable Boolean
function AI_DebugLuaEnable(enable)
end

---comment Returns true if AI Lua Debugging is enabled
function AI_DebugLuaIsEnabled()
end

---comment Enables/disables AI Construction Debugging
---@param enable Boolean
function AI_DebugRatingEnable(enable)
end

---comment Returns true if AI Construction Debugging is enabled
function AI_DebugRatingIsEnabled()
end

---comment Enables/disables AI Rendering of All Task Children
---@param enable Boolean
function AI_DebugRenderAllTaskChildrenEnable(enable)
end

---comment Returns true if AI Rendering of All Task Children is enabled
function AI_DebugRenderAllTaskChildrenIsEnabled()
end

---comment Enables/disables AI Skirmish ForwardDeploy Debugging
---@param enable Boolean
function AI_DebugSkirmishForwardDeployEnable(enable)
end

---comment Returns true if AI Skirmish ForwardDeploy Debugging is enabled
function AI_DebugSkirmishForwardDeployIsEnabled()
end

---comment Disable all of the economy overrides for the AI player
---@param pPlayer PlayerID
function AI_DisableAllEconomyOverrides(pPlayer)
end

---comment Execute a string as lua in the given player's AI LuaConfig
---@param playerID Integer
---@param string String
function AI_DoString(playerID, string)
end

---comment Enables or Disables an AI player
---@param pPlayer PlayerID
---@param enable Boolean
function AI_Enable(pPlayer, enable)
end

---comment Enables or Disables all AI players
---@param enable Boolean
function AI_EnableAll(enable)
end

---comment Enable or disable the economy override for the AI player
---@param pPlayer PlayerID
---@param overrideName String
---@param enable Boolean
function AI_EnableEconomyOverride(pPlayer, overrideName, enable)
end

---comment Finds an AISquad owned by the specified player
---@param pPlayer PlayerID
---@param UID Integer
function AI_FindAISquadByID(pPlayer, UID)
end

---comment Find the current best producible Entity PBG corresponding to the specified Entity Types.
---@param player PlayerID
---@param entityTypeNames String
function AI_FindBestProducibleEntityPBGforEntityTypes(player, entityTypeNames)
end

---comment Find the current best producible Squad PBG corresponding to the specified Squad Types.
---@param player PlayerID
---@param squadTypeNames String
function AI_FindBestProducibleSquadPBGforSquadTypes(player, squadTypeNames)
end

---comment Find the closest open position from a given position for a given ability blueprint
---@param caster ConstTargetHandle
---@param pAbilityPBG PropertyBagGroup
---@param posIn Position
function AI_FindClosestOpenPositionForAbility(caster, pAbilityPBG, posIn)
end

---comment Find the closest open position from a given position and ability blueprint, taking into account a min
---@param caster ConstTargetHandle
---@param pAbilityPBG PropertyBagGroup
---@param posIn Position
---@param minDist Integer
---@param maxDist Integer
function AI_FindClosestOpenPositionForAbilityWithinRange(caster, pAbilityPBG, posIn, minDist, maxDist)
end

---comment Find the closest open position from a given position for a given Entity blueprint
---@param aiPlayer PlayerID
---@param pEntityPBG PropertyBagGroup
---@param posIn Position
function AI_FindClosestOpenPositionForStructure(aiPlayer, pEntityPBG, posIn)
end

---comment Find a valid construction location for a pbg, using a spiral search. Returns INVALID_POS if it fails.
---@param pPlayer PlayerID
---@param pPbg PropertyBagGroup
---@param position Position
function AI_FindConstructionLocation(pPlayer, pPbg, position)
end

---comment Returns the maximum number of targets for the given ability, or -1 if the ability is invalid.
---@param ability ScarAbilityPBG
function AI_GetAbilityMaxNumTargets(ability)
end

---comment Stores entities of a specific type owned by a player in an egroup parameter
---@param pAIPlayer PlayerID
---@param type AIMilitaryTargetType
---@param egroup EGroupID
function AI_GetAllMilitaryPointsOfType(pAIPlayer, type, egroup)
end

---comment Get and reserve the next available AITaskID (which can be used to create an AIEncounter from SCAR).
---@param player PlayerID
function AI_GetAndReserveNextTaskID(player)
end

---comment Returns the current squad target for the given squad (null if no target, or target is non-squad entity)
---@param pSquad SquadID
function AI_GetAnySquadCombatTarget(pSquad)
end

---comment Get current AI player ID
function AI_GetDebugAIPlayerID()
end

---comment Gets the difficulty level of this AI player
---@param pPlayer PlayerID
function AI_GetDifficulty(pPlayer)
end

---comment Get the personality name of this AI player
---@param pPlayer PlayerID
function AI_GetPersonality(pPlayer)
end

---comment Get the personality lua file name of this AI player
---@param pPlayer PlayerID
function AI_GetPersonalityLuaFileName(pPlayer)
end

---comment Returns true if player is an AI player
---@param pPlayer PlayerID
function AI_IsAIPlayer(pPlayer)
end

---comment Returns true if player is an AIPlayer and is targetable by other AI players.
---@param pPlayer PlayerID
function AI_IsAITargetable(pPlayer)
end

---comment Checks if the AI debug display is enabled
---@param pPlayer PlayerID
function AI_IsDebugDisplay(pPlayer)
end

---comment Returns true if player is a AIPlayer and is enabled
---@param pPlayer PlayerID
function AI_IsEnabled(pPlayer)
end

---comment Returns true if the player is an AIPlayer running on the local machine
---@param pPlayer PlayerID
function AI_IsLocalAIPlayer(pPlayer)
end

---comment Returns true when position in a sector that is adjacent to an in-supply sector
---@param aiPlayer PlayerID
---@param position Position
function AI_IsPositionNearInSupplySector(aiPlayer, position)
end

---comment Checks if this is a valid AISquad
---@param pSquadAI SquadID
function AI_IsSquadValid(pSquadAI)
end

---comment Locks the entity and disables its tactics (if any) and the AI will no longer use this object
---@param pPlayer PlayerID
---@param pEntity EntityID
function AI_LockEntity(pPlayer, pEntity)
end

---comment Locks the squad and disables its tactics (if any) and the AI will no longer use this object
---@param pPlayer PlayerID
---@param pSquad SquadID
function AI_LockSquad(pPlayer, pSquad)
end

---comment Locks the squads and disables its tactics (if any) and the AI will no longer use these objects
---@param pPlayer PlayerID
---@param squads SGroupID
function AI_LockSquads(pPlayer, squads)
end

---comment Log the combat input features of all squads owned by two players for a given conflict
---@param conflictID Integer
---@param playerA PlayerID
---@param playerB PlayerID
---@param score Real
function AI_LogCombatTrainingData(conflictID, playerA, playerB, score)
end

---comment Pauses or unpauses currently running tasks
---@param pPlayer PlayerID
---@param pause Boolean
function AI_PauseCurrentTasks(pPlayer, pause)
end

---comment Add an Exclusion area to the AI Player
---@param pPlayer PlayerID
---@param position Position
---@param noPathRadius Real
---@param noTargetRadius Real
function AI_PlayerAddExclusionArea(pPlayer, position, noPathRadius, noTargetRadius)
end

---comment Remove the Exclusion area from the AI Player
---@param pPlayer PlayerID
---@param position Position
---@param noPathRadius Real
---@param noTargetRadius Real
function AI_PlayerRemoveExclusionArea(pPlayer, position, noPathRadius, noTargetRadius)
end

---comment Push an ai intent to an existing AIPrefab. Requires an ai_prefab_intent pbg name
---@param prefabId UniqueID
---@param player PlayerID
---@param aiPrefabIntentBagName String
function AI_PushPrefabAIIntent(prefabId, player, aiPrefabIntentBagName)
end

---comment This clears the importance bonus on this capture point
---@param pPlayer PlayerID
---@param pEntity EntityID
function AI_RemoveCapturePointHighPriority(pPlayer, pEntity)
end

---comment Restarts the AI
---@param pPlayer PlayerID
function AI_RestartSCAR(pPlayer)
end

---comment Restores the default personality and difficulty settings of this AI player
---@param pPlayer PlayerID
function AI_RestoreDefaultPersonalitySettings(pPlayer)
end

---comment Set Combat Range Policy for the AISquad, overrides the one set at Encounter/task level
---@param pSquadAI SquadID
---@param policy CombatRangePolicy
function AI_SetAISquadCombatRangePolicyTaskOverride(pSquadAI, policy)
end

---comment Enables or Disables an AI player to be targetable by other AI players.
---@param pPlayer PlayerID
---@param targetable Boolean
function AI_SetAITargetable(pPlayer, targetable)
end

---comment This sets importance bonus of the given capture point
---@param pPlayer PlayerID
---@param pEntity EntityID
function AI_SetCapturePointAsHighPriority(pPlayer, pEntity)
end

---comment Enable or disable the AI debug display
---@param pPlayer PlayerID
---@param enable Boolean
function AI_SetDebugDisplay(pPlayer, enable)
end

---comment Set the difficulty level of this AI player
---@param pPlayer PlayerID
---@param difficultyLevel Integer
function AI_SetDifficulty(pPlayer, difficultyLevel)
end

---comment This sets the repair priority value for a given squad or building PBG.
---@param pPlayer PlayerID
---@param pbgShortname String
---@param priorityValue Real
function AI_SetPBGRepairPriority(pPlayer, pbgShortname, priorityValue)
end

---comment Set the personality name of this AI player
---@param pPlayer PlayerID
---@param personalityName String
function AI_SetPersonality(pPlayer, personalityName)
end

---comment Set the active status of an existing AIPrefab
---@param prefabId UniqueID
---@param player PlayerID
---@param active Boolean
function AI_SetPrefabActive(prefabId, player, active)
end

---comment Set the can_reassign state of an existing AIPrefab
---@param prefabId UniqueID
---@param player PlayerID
---@param canReassign Boolean
function AI_SetPrefabCanReassign(prefabId, player, canReassign)
end

---comment Set the squad selection of an existing AIPrefab by SGROUP
---@param prefabId UniqueID
---@param player PlayerID
---@param squads SGroupID
function AI_SetPrefabSelection_SGroup(prefabId, player, squads)
end

---comment Set the target of an existing AIPrefab by EGROUP
---@param prefabId UniqueID
---@param player PlayerID
---@param entities EGroupID
function AI_SetPrefabTarget_EGroup(prefabId, player, entities)
end

---comment Set the target of an existing AIPrefab by Position
---@param prefabId UniqueID
---@param player PlayerID
---@param position Position
function AI_SetPrefabTarget_Position(prefabId, player, position)
end

---comment Set the target of an existing AIPrefab by SGROUP
---@param prefabId UniqueID
---@param player PlayerID
---@param squads SGroupID
function AI_SetPrefabTarget_SGroup(prefabId, player, squads)
end

---comment Set the target of an existing AIPrefab via waypoints
---@param prefabId UniqueID
---@param player PlayerID
---@param waypointName String
function AI_SetPrefabTarget_Waypoints(prefabId, player, waypointName)
end

---comment Set an AI Player's desired income of specified resource type at specified value. This will affect the AI resource gathering, building construction and production priority in trying to achieve the specified resource income.
---@param player PlayerID
---@param resourceType Integer
---@param desiredIncome Real
function AI_SetResourceIncomeDesire(player, resourceType, desiredIncome)
end

---comment Set current debug AI player to the next AI player
function AI_ToggleDebugAIPlayer()
end

---comment Toggles the AI debug display
---@param pPlayer PlayerID
function AI_ToggleDebugDisplay(pPlayer)
end

---comment Unlocks all designer locked squads for player
---@param pPlayer PlayerID
function AI_UnlockAll(pPlayer)
end

---comment Unlocks this entity so that AI can use it again
---@param pPlayer PlayerID
---@param pEntity EntityID
function AI_UnlockEntity(pPlayer, pEntity)
end

---comment Unlocks the given squad so the AI can use it again
---@param pPlayer PlayerID
---@param pSquad SquadID
function AI_UnlockSquad(pPlayer, pSquad)
end

---comment Locks the squads and disables its tactics (if any) and the AI will no longer use these objects
---@param pPlayer PlayerID
---@param squads SGroupID
function AI_UnlockSquads(pPlayer, squads)
end

---comment Re-updates the AI in regards to all the static objects in the world (if SCAR creates new strategic points dynamically this will need to be called)
---@param pPlayer PlayerID
function AI_UpdateStatics(pPlayer)
end

---comment Set ability for ability encounter
---@param pEncounter AIEncounterID
---@param abilityPBG PropertyBagGroup
function AIAbilityEncounter_AbilityGuidance_SetAbilityPBG(pEncounter, abilityPBG)
end

---comment Ends the encounter and deletes it.
---@param pEncounter AIEncounterID
function AIEncounter_Cancel(pEncounter)
end

---comment add the EGroup to the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param egroup EGroupID
function AIEncounter_CombatGuidance_AddForcedCombatTargetEGroup(pEncounter, egroup)
end

---comment add the Entity to the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param pEntity EntityID
function AIEncounter_CombatGuidance_AddForcedCombatTargetEntity(pEncounter, pEntity)
end

---comment add the SGroup to the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param sgroup SGroupID
function AIEncounter_CombatGuidance_AddForcedCombatTargetSGroup(pEncounter, sgroup)
end

---comment add the Squad to the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param pSquad SquadID
function AIEncounter_CombatGuidance_AddForcedCombatTargetSquad(pEncounter, pSquad)
end

---comment Clear the encounter Forced Combat Targets
---@param pEncounter AIEncounterID
function AIEncounter_CombatGuidance_ClearForcedCombatTargets(pEncounter)
end

---comment Enables/disables squads in combat garrisoning.
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_CombatGuidance_EnableCombatGarrison(pEncounter, enable)
end

---comment remove the EGroup from the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param egroup EGroupID
function AIEncounter_CombatGuidance_RemoveForcedCombatTargetEGroup(pEncounter, egroup)
end

---comment remove the Entity from the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param pEntity EntityID
function AIEncounter_CombatGuidance_RemoveForcedCombatTargetEntity(pEncounter, pEntity)
end

---comment remove the SGroup from the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param sgroup SGroupID
function AIEncounter_CombatGuidance_RemoveForcedCombatTargetSGroup(pEncounter, sgroup)
end

---comment remove the Squad from the Encounter forced target list. NOTE: supported only by the Attack Encounter
---@param pEncounter AIEncounterID
---@param pSquad SquadID
function AIEncounter_CombatGuidance_RemoveForcedCombatTargetSquad(pEncounter, pSquad)
end

---comment Set Combat Range Policy for the encounter
---@param pEncounter AIEncounterID
---@param policy CombatRangePolicy
function AIEncounter_CombatGuidance_SetCombatRangePolicy(pEncounter, policy)
end

---comment Set if the Attack Encounter should spread the attackers on multiple targets
---@param pEncounter AIEncounterID
---@param value Boolean
function AIEncounter_CombatGuidance_SetSpreadAttackers(pEncounter, value)
end

---comment Enables/disables idle squads garrisoning.
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_DefenseGuidance_EnableIdleGarrison(pEncounter, enable)
end

---comment Adds a setup location and facing direction for this encounter not specifically assigned to any squad
---@param pEncounter AIEncounterID
---@param pos Position
---@param facingDir Position
function AIEncounter_EngagementGuidance_AddEncouterSetupLocation(pEncounter, pos, facingDir)
end

---comment clears the encounter setup locations
---@param pEncounter AIEncounterID
function AIEncounter_EngagementGuidance_ClearSetupLocationOverrides(pEncounter)
end

---comment Enable / disable aggressive move into engagement area
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_EnableAggressiveEngagementMove(pEncounter, enable)
end

---comment Enable construction in Town Life encounters
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_EnableConstruction(pEncounter, enable)
end

---comment Enable setup locations in attack and defend encounters
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_EnableSetupLocations(pEncounter, enable)
end

---comment Sets a TownLife Encounter whether to allow resource gathering from deposits outside of Encounter leash.
---@param pEncounter AIEncounterID
---@param allowOutsideLeash Boolean
function AIEncounter_EngagementGuidance_SetAllowResourceGatheringOutsideLeash(pEncounter, allowOutsideLeash)
end

---comment Enable encounter to return to previous stages if they fail to meet conditions for current stage.
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_SetAllowReturnToPreviousStages(pEncounter, enable)
end

---comment Enable coordinated arrival in attack encounters
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_SetCoordinatedSetup(pEncounter, enable)
end

---comment Enables/disables sniper reactions
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_SetEnableSniperReactions(pEncounter, enable)
end

---comment Enables/disables SubEngagementAreas
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_EngagementGuidance_SetEnableSubEngagementAreas(pEncounter, enable)
end

---comment Sets max time, in seconds, to accomplish encounter, once the target is engaged.
---@param pEncounter AIEncounterID
---@param seconds Real
function AIEncounter_EngagementGuidance_SetMaxEngagementTime(pEncounter, seconds)
end

---comment Sets max time, in seconds, to remain idle at encounter target, once engaged.
---@param pEncounter AIEncounterID
---@param seconds Real
function AIEncounter_EngagementGuidance_SetMaxIdleTime(pEncounter, seconds)
end

---comment set the sbp setup location priority override
---@param pEncounter AIEncounterID
---@param sbp ScarSquadPBG
---@param priority Real
function AIEncounter_EngagementGuidance_SetSetupLocationSbpPriority(pEncounter, sbp, priority)
end

---comment set the squad setup location and facing direction
---@param pEncounter AIEncounterID
---@param pSquad SquadID
---@param pos Position
---@param facingDir Position
function AIEncounter_EngagementGuidance_SetSquadSetupLocation(pEncounter, pSquad, pos, facingDir)
end

---comment Enable/Disable Reinforce during combat
---@param pEncounter AIEncounterID
---@param value Boolean
function AIEncounter_FallbackGuidance_EnableReinforceDuringCombat(pEncounter, value)
end

---comment Enable retreat to break pinned.
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_FallbackGuidance_EnableRetreatOnPinned(pEncounter, enable)
end

---comment Enable retreat to break suppression.
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_FallbackGuidance_EnableRetreatOnSuppression(pEncounter, enable)
end

---comment Set entities remaining threshold of encounter [-1 to N] to fallback at. (negative disables)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetEntitiesRemainingThreshold(pEncounter, value)
end

---comment Set capacity threshold [-1 to 1] to fallback at. (negative disables)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetFallbackCapacityPercentage(pEncounter, value)
end

---comment Set combat rating threshold of area [0.0 to 1.0] to fallback at. (0.0 disables)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetFallbackCombatRating(pEncounter, value)
end

---comment Set Squad health threshold [-1 to 1] to fallback at. (negative disables)
---@param pEncounter AIEncounterID
---@param fallbackStartValue Real
---@param fallbackEndValue Real
function AIEncounter_FallbackGuidance_SetFallbackSquadHealthPercentage(pEncounter, fallbackStartValue, fallbackEndValue)
end

---comment Set Squad Shield threshold [-1 to 1] to fallback at. (negative disables)
---@param pEncounter AIEncounterID
---@param fallbackStartValue Real
---@param fallbackEndValue Real
function AIEncounter_FallbackGuidance_SetFallbackSquadShieldPercentage(pEncounter, fallbackStartValue, fallbackEndValue)
end

---comment Set Vehicle health threshold [-1 to 1] to fallback at. (negative disables)
---@param pEncounter AIEncounterID
---@param fallbackStartValue Real
---@param fallbackEndValue Real
function AIEncounter_FallbackGuidance_SetFallbackVehicleHealthPercentage(pEncounter, fallbackStartValue, fallbackEndValue)
end

---comment Set global fallback threshold (negative for individual squad).
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetGlobalFallbackPercentage(pEncounter, value)
end

---comment Set global retreat type (true for retreat; false for fallback).
---@param pEncounter AIEncounterID
---@param value Boolean
function AIEncounter_FallbackGuidance_SetGlobalFallbackRetreat(pEncounter, value)
end

---comment Set the Reinforce Health Percentage [-1 to 1] (negative disables retreat)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetReinforceHealthPercentage(pEncounter, value)
end

---comment Set the Max Reinforce Distance (negative value: no distance constrain)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetReinforceMaxDistance(pEncounter, value)
end

---comment Set the Min Health Ratio Required To Reach Reinforce Point [0.0, 1.0] (negative value: no constrain)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetReinforceMinHealthRatioToReachReinforcePoint(pEncounter, value)
end

---comment Set combat rating threshold of area [-1 to 1] to fallback at. (negative disables)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetRetreatCapacityPercentage(pEncounter, value)
end

---comment Set combat rating threshold of area [0.0 to 1.0] to retreat at. (0.0 disables)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetRetreatCombatRating(pEncounter, value)
end

---comment Set retreat health threshold of area [-1 to 1] (negative disables)
---@param pEncounter AIEncounterID
---@param value Real
function AIEncounter_FallbackGuidance_SetRetreatHealthPercentage(pEncounter, value)
end

---comment Set fallback target.
---@param pEncounter AIEncounterID
---@param pos Position
function AIEncounter_FallbackGuidance_SetTargetPosition(pEncounter, pos)
end

---comment Asks the encounter to terminate in its next update (allows PhaseEncounter to set its exit info)
---@param pEncounter AIEncounterID
function AIEncounter_ForceComplete(pEncounter)
end

---comment Set formup type for formation encounter to be at building of type from AE tuning list (must set before triggering)
---@param encounter AIEncounterID
---@param unitTypeList String
function AIEncounter_FormationGuidance_SetFormUpAtBuildingOfType(encounter, unitTypeList)
end

---comment Set formup entity for formation encounter (must set before triggering)
---@param encounter AIEncounterID
---@param entity EntityID
function AIEncounter_FormationGuidance_SetFormUpAtEntityTarget(encounter, entity)
end

---comment Set formup position for formation encounter (must set before triggering)
---@param encounter AIEncounterID
---@param postion Position
function AIEncounter_FormationGuidance_SetFormUpAtPositionTarget(encounter, postion)
end

---comment Set formup position for formation encounter at the average of current squad positions (must set before triggering)
---@param encounter AIEncounterID
function AIEncounter_FormationGuidance_SetFormUpAtSquadAverage(encounter)
end

---comment Set formup position timeout and % squads that must arrive or else it will fail.  Setting zero for timeout means infinite
---@param encounter AIEncounterID
---@param timeoutSeconds Real
---@param requiredSquadsPercent Real
function AIEncounter_FormationGuidance_SetFormUpAtTimeOutParams(encounter, timeoutSeconds, requiredSquadsPercent)
end

---comment Get the average position of squads of this finished formation phase encounter (may be the same as target if successful).  You should call AIEncounter_FormationPhase_HasValidExitInfo before this to avoid an error
---@param encounterID AITaskID
function AIEncounter_FormationPhase_GetEndPosition(encounterID)
end

---comment Get the end position of this finished formation phase move encounter (may be the same as target if successful)
---@param encounterID AITaskID
function AIEncounter_FormationPhase_GetEndReason(encounterID)
end

---comment Get Groups containing the enemies encountered by this formation phase encounter (encounter must have completed) false indicates the exit info was not available for this encounter
---@param encounterID AITaskID
---@param enemySquads SGroupID
---@param enemyBuildings EGroupID
function AIEncounter_FormationPhase_GetEnemiesAtEnd(encounterID, enemySquads, enemyBuildings)
end

---comment Get the combat fitness result for a finished phase encounter, will only be valid for exit states CombatFitnessThreshold or WasAttacked.  -1.0f means invalid.
---@param encounterID AITaskID
function AIEncounter_FormationPhase_GetExitCombatFitnessResult(encounterID)
end

---comment Get SGRoups containing the squads who made it to the destination of a formation phase move encounter and those who didn't (encounter must have completed) false indicates the exit info was not available for this encounter
---@param encounterID AITaskID
---@param squadsAvailable SGroupID
---@param squadsUnavailable SGroupID
function AIEncounter_FormationPhase_GetSquadsAvailableAtEnd(encounterID, squadsAvailable, squadsUnavailable)
end

---comment Query if there is valid exit info for this encounter (will only return true for phase encounters)
---@param encounterID AITaskID
function AIEncounter_FormationPhase_HasValidExitInfo(encounterID)
end

---comment Assign a property bag contains data to support sub task coordination for combat encounters
---@param encounter AIEncounterID
---@param coordinatorPBG PropertyBagGroup
function AIEncounter_FormationPhaseGuidance_SetCombatCoordinator(encounter, coordinatorPBG)
end

---comment Set params for terminating a formation phase encounter based on combat, fallback params can also be used
---@param encounter AIEncounterID
---@param timeoutSeconds Real
---@param testTargetDestroyed Boolean
---@param testEnemySquadsCleared Boolean
---@param testEnemyBuildingsCleared Boolean
---@param enemyScanRange Real
---@param excludeBuildingTypeNames String
function AIEncounter_FormationPhaseGuidance_SetCombatExitParams(encounter, timeoutSeconds, testTargetDestroyed, testEnemySquadsCleared, testEnemyBuildingsCleared, enemyScanRange, excludeBuildingTypeNames)
end

---comment Set params for terminating a formation phase encounter that is moving somewhere and encounters enemies
---@param encounter AIEncounterID
---@param enemyScanRange Real
---@param combatFitnessThreshold Real
---@param enemyFormationHeading Real
---@param enemyFormationPosition Real
---@param enemyFormationDistance Real
---@param excludeBuildingTypeNames String
function AIEncounter_FormationPhaseGuidance_SetMoveEnemiesExitParams(encounter, enemyScanRange, combatFitnessThreshold, enemyFormationHeading, enemyFormationPosition, enemyFormationDistance, excludeBuildingTypeNames)
end

---comment Set params for terminating a formation phase encounter that is moving somewhere
---@param encounter AIEncounterID
---@param timeoutSeconds Real
---@param requiredSquadsPercent Real
---@param wasRecentlyAttackedSecs Real
function AIEncounter_FormationPhaseGuidance_SetMoveExitParams(encounter, timeoutSeconds, requiredSquadsPercent, wasRecentlyAttackedSecs)
end

---comment Specify data for formation encounter to create a formation min range task state
---@param encounter AIEncounterID
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param repositionIntervalSecs Real
---@param useTactics Boolean
---@param unitTypeNames String
---@param targetPriorityPBG PropertyBagGroup
function AIEncounter_FormationTaskStateGuidance_MinRange(encounter, priority, minSquads, maxSquads, maxTasks, repositionIntervalSecs, useTactics, unitTypeNames, targetPriorityPBG)
end

---comment Specify data for formation encounter to create a formation min range task state with protect task
---@param encounter AIEncounterID
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param repositionIntervalSecs Real
---@param useTactics Boolean
---@param unitTypeNames String
---@param targetPriorityPBG PropertyBagGroup
---@param protectMinSquads Integer
---@param protectMaxSquads Integer
---@param protectProportionSquads Real
---@param protectDistance Real
---@param protectRepositionThreshold Real
---@param protectRepositionIntervalSecs Real
---@param protectUnitTypeNames String
function AIEncounter_FormationTaskStateGuidance_MinRangeWithProtect(encounter, priority, minSquads, maxSquads, maxTasks, repositionIntervalSecs, useTactics, unitTypeNames, targetPriorityPBG, protectMinSquads, protectMaxSquads, protectProportionSquads, protectDistance, protectRepositionThreshold, protectRepositionIntervalSecs, protectUnitTypeNames)
end

---comment Specify data for formation encounter to create a formation move task state
---@param encounter AIEncounterID
---@param attackMove Boolean
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param unitTypeNames String
function AIEncounter_FormationTaskStateGuidance_Move(encounter, attackMove, priority, minSquads, maxSquads, maxTasks, unitTypeNames)
end

---comment Specify data for formation encounter to create a formation setup ranged task state
---@param encounter AIEncounterID
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param unitTypeNames String
---@param targetPriorityPBG PropertyBagGroup
function AIEncounter_FormationTaskStateGuidance_SetupRanged(encounter, priority, minSquads, maxSquads, maxTasks, unitTypeNames, targetPriorityPBG)
end

---comment Specify data for formation encounter to create a formation setup ranged task state and along with a formation of other units to protect it
---@param encounter AIEncounterID
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param unitTypeNames String
---@param targetPriorityPBG PropertyBagGroup
---@param protectMinSquads Integer
---@param protectMaxSquads Integer
---@param protectProportionSquads Real
---@param protectDistance Real
---@param protectRepositionThreshold Real
---@param protectRepositionIntervalSecs Real
---@param protectUnitTypeNames String
function AIEncounter_FormationTaskStateGuidance_SetupRangedWithProtect(encounter, priority, minSquads, maxSquads, maxTasks, unitTypeNames, targetPriorityPBG, protectMinSquads, protectMaxSquads, protectProportionSquads, protectDistance, protectRepositionThreshold, protectRepositionIntervalSecs, protectUnitTypeNames)
end

---comment Specify data for formation encounter to create a formation simple melee task state
---@param encounter AIEncounterID
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param unitTypeNames String
---@param targetPriorityPBG PropertyBagGroup
function AIEncounter_FormationTaskStateGuidance_SimpleMelee(encounter, priority, minSquads, maxSquads, maxTasks, unitTypeNames, targetPriorityPBG)
end

---comment Specify data for formation encounter to create a formation transport move task state
---@param encounter AIEncounterID
---@param priority Integer
---@param minSquads Integer
---@param maxSquads Integer
---@param maxTasks Integer
---@param unitTypeNames String
---@param minPassengerSquads Integer
---@param maxPassengerSquadsPerTransport Integer
---@param unloadAbilityPBG PropertyBagGroup
---@param passengerUnitTypeNames String
---@param targetPriorityPBG PropertyBagGroup
function AIEncounter_FormationTaskStateGuidance_TransportMove(encounter, priority, minSquads, maxSquads, maxTasks, unitTypeNames, minPassengerSquads, maxPassengerSquadsPerTransport, unloadAbilityPBG, passengerUnitTypeNames, targetPriorityPBG)
end

---comment Returns the encounter pointer from the ID, always test for nil before using...
---@param player PlayerID
---@param taskID AITaskID
function AIEncounter_GetEncounterFromID(player, taskID)
end

---comment Returns true if enconter has a valid AI player
---@param pEncounter AIEncounterID
function AIEncounter_IsAIPlayerValid(pEncounter)
end

---comment Determines if encounter is still valid.  Must be true before calling any other of the AIEncounter_* function.  Return true if valid, false otherwise.
---@param PlayerUniqueID UniqueID
---@param encounterTaskID AITaskID
function AIEncounter_IsValid(PlayerUniqueID, encounterTaskID)
end

---comment in non RTM builds, if verboseEncounterLogging is enabled, will spew string to AI log file
---@param pPlayer PlayerID
---@param encounterID Integer
---@param debugString String
function AIEncounter_LogDebug(pPlayer, encounterID, debugString)
end

---comment Enable / disable aggressive movements on way to engagement targets
---@param pEncounter AIEncounterID
---@param enable Boolean
function AIEncounter_MoveGuidance_EnableAggressiveMove(pEncounter, enable)
end

---comment Set radius (follow distance) for coordinated move phase (<= 0 disables coordinated movement)
---@param pEncounter AIEncounterID
---@param radius Real
function AIEncounter_MoveGuidance_SetSquadCoherenceRadius(pEncounter, radius)
end

---comment Clears all notification callbacks for encounter
---@param pEncounter AIEncounterID
function AIEncounter_Notify_ClearCallbacks(pEncounter)
end

---comment enables/disabled the sniped callback
---@param pEncounter AIEncounterID
---@param value Boolean
function AIEncounter_Notify_SetEnableSnipedCallbacks(pEncounter, value)
end

---comment Sets the ID for the notification event sent out by encounter
---@param pEncounter AIEncounterID
---@param id Integer
function AIEncounter_Notify_SetPlayerEventEncounterID(pEncounter, id)
end

---comment Pause/Unpause this encounter
---@param pEncounter AIEncounterID
---@param bPause Boolean
function AIEncounter_Pause(pEncounter, bPause)
end

---comment Calculates approximately how long it will take for a specified Encounter to produce a specified squad.
---@param pEncounter AIEncounterID
---@param pbgShortname String
---@param canAffordNowOnly Boolean
function AIEncounter_ResourceGuidance_CalculateEstimatedSquadProductionTime(pEncounter, pbgShortname, canAffordNowOnly)
end

---comment Removes all resource entities from encounter.
---@param pEncounter AIEncounterID
function AIEncounter_ResourceGuidance_ClearEntities(pEncounter)
end

---comment Removes all resource squads from encounter.
---@param pEncounter AIEncounterID
function AIEncounter_ResourceGuidance_ClearSquads(pEncounter)
end

---comment Sets the resource entities for encounter.
---@param pEncounter AIEncounterID
---@param entities EGroupID
function AIEncounter_ResourceGuidance_EntityGroup(pEncounter, entities)
end

---comment Checks if a squad group is equal to the resource squads of an encounter.
---@param pEncounter AIEncounterID
---@param squads SGroupID
function AIEncounter_ResourceGuidance_IsSquadGroupEqual(pEncounter, squads)
end

---comment Sets the resource money for an encounter.
---@param pEncounter AIEncounterID
---@param resourceAmount ResourceAmount
function AIEncounter_ResourceGuidance_SetResourceMoney(pEncounter, resourceAmount)
end

---comment Sets the resource squads for encounter.
---@param pEncounter AIEncounterID
---@param squads SGroupID
function AIEncounter_ResourceGuidance_SquadGroup(pEncounter, squads)
end

---comment Set encounter name for debugging.
---@param pEncounter AIEncounterID
---@param name String
function AIEncounter_SetDebugName(pEncounter, name)
end

---comment Reset all tactic filters for encounter
---@param pEncounter AIEncounterID
function AIEncounter_TacticFilter_Reset(pEncounter)
end

---comment Reset all tactic ability constraints for encounter
---@param pEncounter AIEncounterID
function AIEncounter_TacticFilter_ResetAbilityGuidance(pEncounter)
end

---comment Reset ability priority for all squads in encounter
---@param pEncounter AIEncounterID
---@param abilityPBG PropertyBagGroup
function AIEncounter_TacticFilter_ResetAbilityPriority(pEncounter, abilityPBG)
end

---comment Reset tactic priority for all squads in encounter
---@param pEncounter AIEncounterID
---@param tactic AITacticType
function AIEncounter_TacticFilter_ResetPriority(pEncounter, tactic)
end

---comment Reset all tactic constraints for encounter
---@param pEncounter AIEncounterID
function AIEncounter_TacticFilter_ResetTacticGuidance(pEncounter)
end

---comment Reset all tactic target constraints for encounter
---@param pEncounter AIEncounterID
function AIEncounter_TacticFilter_ResetTargetGuidance(pEncounter)
end

---comment Set tactic ability constraints for encounter
---@param pEncounter AIEncounterID
---@param ability PropertyBagGroup
---@param maxCasters Integer
---@param retrySecs Real
---@param waitSelfSecs Real
---@param waitEncounterSecs Real
---@param timeoutSecs Real
---@param initialWait Boolean
---@param maxRange Real
---@param castChanceOverride Real
function AIEncounter_TacticFilter_SetAbilityGuidance(pEncounter, ability, maxCasters, retrySecs, waitSelfSecs, waitEncounterSecs, timeoutSecs, initialWait, maxRange, castChanceOverride)
end

---comment Set ability priority for all squads in encounter; negative priority disables
---@param pEncounter AIEncounterID
---@param abilityPBG PropertyBagGroup
---@param priority Real
function AIEncounter_TacticFilter_SetAbilityPriority(pEncounter, abilityPBG, priority)
end

---comment Set ability priority for squad in encounter
---@param pEncounter AIEncounterID
---@param squad SquadID
---@param abilityPBG PropertyBagGroup
---@param priority Real
function AIEncounter_TacticFilter_SetAbilityPriorityForSquad(pEncounter, squad, abilityPBG, priority)
end

---comment Set default tactic ability constraints for encounter (ability specific guidance takes priority over defaults)
---@param pEncounter AIEncounterID
---@param maxCasters Integer
---@param retrySecs Real
---@param waitSelfSecs Real
---@param waitEncounterSecs Real
---@param timeoutSecs Real
---@param initialWait Boolean
---@param maxRange Real
---@param castChanceOverride Real
function AIEncounter_TacticFilter_SetDefaultAbilityGuidance(pEncounter, maxCasters, retrySecs, waitSelfSecs, waitEncounterSecs, timeoutSecs, initialWait, maxRange, castChanceOverride)
end

---comment Set default tactic constraints for encounter (tactic specific guidance takes priority over defaults)
---@param pEncounter AIEncounterID
---@param maxUsers Integer
---@param retrySecs Real
---@param waitSecs Real
---@param timeoutSecs Real
---@param initialWait Boolean
---@param maxRange Real
function AIEncounter_TacticFilter_SetDefaultTacticGuidance(pEncounter, maxUsers, retrySecs, waitSecs, timeoutSecs, initialWait, maxRange)
end

---comment Set tactic priority for all squads in encounter; negative priority disables
---@param pEncounter AIEncounterID
---@param tactic AITacticType
---@param priority Real
function AIEncounter_TacticFilter_SetPriority(pEncounter, tactic, priority)
end

---comment Set tactic priority for squads in encounter
---@param pEncounter AIEncounterID
---@param squad SquadID
---@param tactic AITacticType
---@param priority Real
function AIEncounter_TacticFilter_SetPriorityForSquad(pEncounter, squad, tactic, priority)
end

---comment Set tactic constraints for encounter
---@param pEncounter AIEncounterID
---@param tactic AITacticType
---@param maxUsers Integer
---@param retrySecs Real
---@param waitSecs Real
---@param timeoutSecs Real
---@param initialWait Boolean
---@param maxRange Real
function AIEncounter_TacticFilter_SetTacticGuidance(pEncounter, tactic, maxUsers, retrySecs, waitSecs, timeoutSecs, initialWait, maxRange)
end

---comment Set tactic target priority for encounter
---@param pEncounter AIEncounterID
---@param policy TargetPreference
function AIEncounter_TacticFilter_SetTargetPolicy(pEncounter, policy)
end

---comment Disables the patrol for the passed Squad
---@param pEncounter AIEncounterID
---@param pSquad SquadID
function AIEncounter_TargetGuidance_DisableSquadPatrol(pEncounter, pSquad)
end

---comment Sets target patrol path for encounter
---@param pEncounter AIEncounterID
---@param pathName String
---@param delaySecs Real
---@param invertPathAtEnd Boolean
---@param startInverted Boolean
function AIEncounter_TargetGuidance_SetPatrolPathByName(pEncounter, pathName, delaySecs, invertPathAtEnd, startInverted)
end

---comment Sets random wander target patrol for encounter; delaySecs is the time in secs to pause at each random point
---@param pEncounter AIEncounterID
---@param delaySecs Real
---@param radiusMode Integer
---@param radiusOverride Real
---@param overrideCenter Boolean
---@param centerOverride Position
function AIEncounter_TargetGuidance_SetPatrolWander(pEncounter, delaySecs, radiusMode, radiusOverride, overrideCenter, centerOverride)
end

---comment Sets target patrol path for the squad
---@param pEncounter AIEncounterID
---@param pSquad SquadID
---@param pathName String
---@param delaySecs Real
---@param invertPathAtEnd Boolean
---@param startInverted Boolean
function AIEncounter_TargetGuidance_SetSquadPatrolPathByName(pEncounter, pSquad, pathName, delaySecs, invertPathAtEnd, startInverted)
end

---comment Sets random wander target patrol for the squad; delaySecs is the time in secs to pause at each random point
---@param pEncounter AIEncounterID
---@param pSquad SquadID
---@param delaySecs Real
---@param radiusMode Integer
---@param radiusOverride Real
---@param overrideCenter Boolean
---@param centerOverride Position
function AIEncounter_TargetGuidance_SetSquadPatrolWander(pEncounter, pSquad, delaySecs, radiusMode, radiusOverride, overrideCenter, centerOverride)
end

---comment Sets engagement area radius around the target.
---@param pEncounter AIEncounterID
---@param radius Real
function AIEncounter_TargetGuidance_SetTargetArea(pEncounter, radius)
end

---comment Sets target Entity for encounter
---@param pEncounter AIEncounterID
---@param entity EntityID
function AIEncounter_TargetGuidance_SetTargetEntity(pEncounter, entity)
end

---comment Sets leash radius around target where squads should stay within.
---@param pEncounter AIEncounterID
---@param radius Real
function AIEncounter_TargetGuidance_SetTargetLeash(pEncounter, radius)
end

---comment Sets target position for encounter
---@param pEncounter AIEncounterID
---@param pos Position
function AIEncounter_TargetGuidance_SetTargetPosition(pEncounter, pos)
end

---comment Sets target Squad for encounter
---@param pEncounter AIEncounterID
---@param squad SquadID
function AIEncounter_TargetGuidance_SetTargetSquad(pEncounter, squad)
end

---comment Set encounter name for debugging.
---@param pEncounter AIEncounterID
function AIEncounter_Trigger(pEncounter)
end

---comment Checks if the cached path crosses known enemy territory
---@param aiPlayer PlayerID
---@param requestingID Integer
---@param minDistToEnemyTerritory Real
---@param unused Boolean
function AIPlayer_CachedPathCrossesEnemyTerritory(aiPlayer, requestingID, minDistToEnemyTerritory, unused)
end

---comment Checks if the squad can lock the tactic item
---@param tacticItemEntity EntityID
---@param lockingAISquad SquadID
function AIPlayer_CanAISquadLockTacticItem(tacticItemEntity, lockingAISquad)
end

---comment Test if player can see entity
---@param aiPlayer PlayerID
---@param canSee EntityID
function AIPlayer_CanSeeEntity(aiPlayer, canSee)
end

---comment Delete the cached path with this ID, please remember to do this
---@param player PlayerID
---@param requestingID Integer
function AIPlayer_ClearCachedPath(player, requestingID)
end

---comment returns true if enemy territory has been detected
---@param player PlayerID
function AIPlayer_EnemyTerritoryDetected(player)
end

---comment Tests to see if any entity in the group is part of a wall that matches the supplied conditions eGroup contains list of entities to test, minSections is minimum number of connected wall sections, unbreached means all sections must be unbroken.  Returns closest entity to refPosition
---@param player PlayerID
---@param eGroup EGroupID
---@param minSections Integer
---@param unbreached Boolean
---@param refPosition Position
function AIPlayer_FindClosestSiegeTarget(player, eGroup, minSections, unbreached, refPosition)
end

---comment Find a clump containing the given position, or return -1 if there isn't one.
---@param aiPlayer PlayerID
---@param pos Position
---@param targetFilterFlags Integer
function AIPlayer_FindClumpContainingPosition(aiPlayer, pos, targetFilterFlags)
end

---comment Returns the anchor build position
---@param aiPlayer PlayerID
function AIPlayer_GetAnchorPosition(aiPlayer)
end

---comment returns a 0-based index of the best clump of enemy squads within the given tolerance to the position passed in
---@param pPlayer PlayerID
---@param position Position
---@param pAbilityPBG PropertyBagGroup
---@param minRange Real
---@param maxRange Real
---@param targetFilterFlags Integer
---@param minNumSquads Integer
function AIPlayer_GetBestClumpForPositionIdx(pPlayer, position, pAbilityPBG, minRange, maxRange, targetFilterFlags, minNumSquads)
end

---comment returns a 0-based index of the best clump of enemy squads within the given tolerance to the AI squad
---@param pPlayer PlayerID
---@param pSquad SquadID
---@param pAbilityPBG PropertyBagGroup
---@param minRange Real
---@param maxRange Real
---@param targetFilterFlags Integer
---@param minNumSquads Integer
function AIPlayer_GetBestClumpForSquadIdx(pPlayer, pSquad, pAbilityPBG, minRange, maxRange, targetFilterFlags, minNumSquads)
end

---comment returns a 0-based index of the best clump of allied or enemy squads within the given tolerance to the AI player
---@param pPlayer PlayerID
---@param minRange Real
---@param maxRange Real
---@param clumpSelectionGlobalBestMinRatio Real
---@param targetFilterFlags Integer
---@param minNumSquads Integer
function AIPlayer_GetBestClumpIdx(pPlayer, minRange, maxRange, clumpSelectionGlobalBestMinRatio, targetFilterFlags, minNumSquads)
end

---comment returns a 0-based index of the best clump of allied or enemy squads within the given tolerance to the AI player
---@param pPlayer PlayerID
---@param pAbilityPBG PropertyBagGroup
---@param minRange Real
---@param maxRange Real
---@param clumpSelectionGlobalBestMinRatio Real
---@param targetFilterFlags Integer
---@param minNumSquads Integer
function AIPlayer_GetBestClumpIdxForAbility(pPlayer, pAbilityPBG, minRange, maxRange, clumpSelectionGlobalBestMinRatio, targetFilterFlags, minNumSquads)
end

---comment returns a 0-based index of the best clump of owned squads within the given tolerance to the AI player
---@param pPlayer PlayerID
---@param minRange Real
---@param maxRange Real
---@param clumpSelectionGlobalBestMinRatio Real
---@param targetFilterFlags Integer
---@param minNumSquads Integer
function AIPlayer_GetBestOwnedClumpIdx(pPlayer, minRange, maxRange, clumpSelectionGlobalBestMinRatio, targetFilterFlags, minNumSquads)
end

---comment returns a 0-based index of the best clump of owned squads within the given tolerance to the AI player
---@param pPlayer PlayerID
---@param pAbilityPBG PropertyBagGroup
---@param minRange Real
---@param maxRange Real
---@param clumpSelectionGlobalBestMinRatio Real
---@param targetFilterFlags Integer
---@param minNumSquads Integer
function AIPlayer_GetBestOwnedClumpIdxForAbility(pPlayer, pAbilityPBG, minRange, maxRange, clumpSelectionGlobalBestMinRatio, targetFilterFlags, minNumSquads)
end

---comment Get the distance of the path requested with the given ID. < 0 means invalid request.
---@param player PlayerID
---@param requestingID Integer
function AIPlayer_GetCachedPathLength(player, requestingID)
end

---comment Return the path points of the calculated path from a previous pathfinding request if the result was successful and the path has at least two points.
---@param player PlayerID
---@param requestingID Integer
function AIPlayer_GetCachedPathPoints(player, requestingID)
end

---comment Returns an EGroup containing all capture points on the map owned by a player with the specified
---@param aiPlayer PlayerID
---@param relationshipEnum StackVar
---@param onlyCanPlaceSecuringStructure Boolean
---@param egroupOut EGroupID
function AIPlayer_GetCapturePoints(aiPlayer, relationshipEnum, onlyCanPlaceSecuringStructure, egroupOut)
end

---comment Used for tactics; returns a "special error position" on failure that's nowhere inside the world
---@param pPlayer PlayerID
---@param clumpIndex Integer
---@param targetFilterFlags Integer
function AIPlayer_GetClumpPosition(pPlayer, clumpIndex, targetFilterFlags)
end

---comment returns how close a position is to enemy territory
---@param player PlayerID
---@param position Position
function AIPlayer_GetDistanceToEnemyTerritory(player, position)
end

---comment Calculate product of all multipliers in tableName
---@param aiPlayer PlayerID
---@param tableName Key
function AIPlayer_GetDynamicMultiplier(aiPlayer, tableName)
end

---comment Calculate product of all unit type multipliers that match the entity's unit types
---@param aiPlayer PlayerID
---@param targetEntity Entity&
function AIPlayer_GetDynamicUnitTypeMultipliersForEntity(aiPlayer, targetEntity)
end

---comment Calculate product of all unit type multipliers that match a unit type of an entity in the squad
---@param aiPlayer PlayerID
---@param targetSquad Squad&
function AIPlayer_GetDynamicUnitTypeMultipliersForSquad(aiPlayer, targetSquad)
end

---comment Returns a list of all resource deposit entities seen by the AI player
---@param aiPlayer PlayerID
---@param resourceType String
---@param includeDepleted Boolean
function AIPlayer_GetKnownResourceDeposits(aiPlayer, resourceType, includeDepleted)
end

---comment Returns the local AIPlayer given a PlayerId (1000 and up)
---@param playerId Integer
function AIPlayer_GetLocal(playerId)
end

---comment Returns the local AIPlayer given a Player pointer
---@param pPlayerIn PlayerID
function AIPlayer_GetLocalFromPlayer(pPlayerIn)
end

---comment Returns the Player at specified index out of all opponent players.  Use in conjunction with `AIPlayer_GetOpponentPlayerCount`.
---@param aiPlayer PlayerID
---@param index Integer
function AIPlayer_GetOpponentPlayerAtIndex(aiPlayer, index)
end

---comment Returns the number of opponent Players to the specified AIPlayer.
---@param aiPlayer PlayerID
function AIPlayer_GetOpponentPlayerCount(aiPlayer)
end

---comment Get a homebase at the given position. If one doesn't exist it will be created.
---@param aiPlayer PlayerID
---@param targetPosition Position
function AIPlayer_GetOrCreateHomebase(aiPlayer, targetPosition)
end

---comment Used for tactics; returns a "special error position" on failure that's nowhere inside the world
---@param pPlayer PlayerID
---@param clumpIndex Integer
function AIPlayer_GetOwnedClumpPosition(pPlayer, clumpIndex)
end

---comment Returns an EGroup listing all military points owned by a player within a certain range of the position passed in that match a certain type
---@param militaryPointPBG EntityPBG
---@param position Position
---@param range Number
function AIPlayer_GetOwnedMilitaryPointEntitiesInRange(militaryPointPBG, position, range)
end

---comment Returns all positions of military points allied with a player
---@param aiPlayer PlayerID
---@param relationshipEnum StackVar
function AIPlayer_GetPositionsOfMilitaryPointsWithRelation(aiPlayer, relationshipEnum)
end

---comment Returns the utility of building the squad specified by the PBG, or 0 if not found
---@param aiPlayer PlayerID
---@param squadPBG ScarSquadPBG
function AIPlayer_GetSquadPBGProductionUtility(aiPlayer, squadPBG)
end

---comment Returns a table of squad ids from the AIPlayer's state model corresponding to the given key.
---@param aiPlayer PlayerID
---@param key String
function AIPlayer_GetStateModelAISquadListEntries(aiPlayer, key)
end

---comment Returns a boolean value from the AIPlayer's state model corresponding to the given key.
---@param aiPlayer PlayerID
---@param key String
function AIPlayer_GetStateModelBool(aiPlayer, key)
end

---comment Returns a float value from the AIPlayer's state model corresponding to the given key.
---@param aiPlayer PlayerID
---@param key String
function AIPlayer_GetStateModelFloat(aiPlayer, key)
end

---comment Returns an integer value from the AIPlayer's state model corresponding to the given key.
---@param aiPlayer PlayerID
---@param key String
function AIPlayer_GetStateModelInt(aiPlayer, key)
end

---comment Returns a PropertyBagGroup value from the AIPlayer's state model corresponding to the given key.
---@param aiPlayer PlayerID
---@param key String
function AIPlayer_GetStateModelPBG(aiPlayer, key)
end

---comment Returns a table of targets from the AIPlayer's state model corresponding to the given key.
---@param aiPlayer PlayerID
---@param key String
function AIPlayer_GetStateModelTargetListEntries(aiPlayer, key)
end

---comment Has path to target passes through a netural damaged structure
---@param aiPlayer PlayerID
---@param squad SquadID
---@param structurePbg PropertyBagGroup
---@param damagePercentage Real
---@param searchRadius Real
---@param targetPosition Position
function AIPlayer_IsDamagedStructureOnPathToTarget(aiPlayer, squad, structurePbg, damagePercentage, searchRadius, targetPosition)
end

---comment Returns whether the player is on an island (naval map) or not
function AIPlayer_IsOnAnIsland()
end

---comment Has the requested path been processed
---@param aiPlayer PlayerID
---@param requestedPathRequestID Integer
function AIPlayer_IsPathProcessed(aiPlayer, requestedPathRequestID)
end

---comment Returns whether or not a point is threatened (from the perspective of the player passed in)
---@param aiPlayer PlayerID
---@param pos Position
---@param filterEnemyBuildings Boolean
---@param thresholdFitness Real
function AIPlayer_IsPointThreatened(aiPlayer, pos, filterEnemyBuildings, thresholdFitness)
end

---comment Checks if a tactic item is locked
---@param player PlayerID
---@param tacticItemEntity EntityID
function AIPlayer_IsTacticItemLocked(player, tacticItemEntity)
end

---comment Checks if a tactic item is locked by the squad
---@param tacticItemEntity EntityID
---@param lockingAISquad SquadID
function AIPlayer_IsTacticItemLockedByAISquad(tacticItemEntity, lockingAISquad)
end

---comment Locks a tactic item for the passed player
---@param tacticItemEntity EntityID
---@param lockingAISquad SquadID
function AIPlayer_LockTacticItemForAISquad(tacticItemEntity, lockingAISquad)
end

---comment Remove a multiplier previously applied to change the weight of a criteria in target scoring
---@param aiPlayer PlayerID
---@param tuningValueName Key
---@param id AIScoreMultiplierID
function AIPlayer_PopScoreMultiplier(aiPlayer, tuningValueName, id)
end

---comment Remove a multiplier previously applied to a unit type for target scoring
---@param aiPlayer PlayerID
---@param unitTypeName Key
---@param id AIScoreMultiplierID
function AIPlayer_PopUnitTypeScoreMultiplier(aiPlayer, unitTypeName, id)
end

---comment Was the processed path successful? Only supply requestID for a processed path
---@param aiPlayer PlayerID
---@param processedPathRequestID Integer
function AIPlayer_ProcessedPathSuccessful(aiPlayer, processedPathRequestID)
end

---comment Add a multiplier to change the weight of a criteria in target scoring
---@param aiPlayer PlayerID
---@param tuningValueName Key
---@param multiplier Real
---@param multiplierID AIScoreMultiplierID
function AIPlayer_PushScoreMultiplier(aiPlayer, tuningValueName, multiplier, multiplierID)
end

---comment Add a multiplier to give weight to a unit type in target scoring
---@param aiPlayer PlayerID
---@param unitTypeName Key
---@param multiplier Real
---@param multiplierID AIScoreMultiplierID
function AIPlayer_PushUnitTypeScoreMultiplier(aiPlayer, unitTypeName, multiplier, multiplierID)
end

---comment Remove entities (buildings) homebase assignment. Entities must be owned by player.
---@param aiPlayer PlayerID
---@param eGroup EGroupID
function AIPlayer_RemoveEntityHomebase(aiPlayer, eGroup)
end

---comment Remove squads homebase assignment. Squads must be owned by player.
---@param aiPlayer PlayerID
---@param sGroup SGroupID
function AIPlayer_RemoveSquadHomebase(aiPlayer, sGroup)
end

---comment Request a high path between the start and destination, supply a unique ID and the PBG of the largest entity that will be following the path.
---@param player PlayerID
---@param requestingID Integer
---@param start Position
---@param end Position
---@param pathingEntityPBG PropertyBagGroup
---@param requiresPartialPath Boolean
function AIPlayer_RequestHighPath(player, requestingID, start, end, pathingEntityPBG, requiresPartialPath)
end

---comment Clears the ability priority override
---@param player PlayerID
---@param abilityPBG PropertyBagGroup
function AIPlayer_ResetAbilityPriorityOverride(player, abilityPBG)
end

---comment Clears the ability priority override for all the abilities contained in the AIAbilityBag
---@param player PlayerID
---@param aiAbilityPBG PropertyBagGroup
function AIPlayer_ResetAIAbilityPriorityOverride(player, aiAbilityPBG)
end

---comment Temporarily hides all of the known squads belonging to the enemy player for the specified AI
---@param player PlayerID
---@param enemyPlayer PlayerID
function AIPlayer_ResetEnemySquadsVisibility(player, enemyPlayer)
end

---comment Sets the ability priority override for all the AISquads owned by the player. -1 to disable the ability. NOTE: Encounter overrides have higher priority.
---@param player PlayerID
---@param abilityPBG PropertyBagGroup
---@param priority Real
function AIPlayer_SetAbilityPriorityOverride(player, abilityPBG, priority)
end

---comment Sets the ability priority override for all the abilities contained in the AIAbilityBag for all the AISquads owned by the player. -1 to disable the ability. NOTE: Encounter overrides have higher priority.
---@param player PlayerID
---@param aiAbilityPBG PropertyBagGroup
---@param priority Real
function AIPlayer_SetAIAbilityPriorityOverride(player, aiAbilityPBG, priority)
end

---comment Add entities (buildings) to a homebase. Entities must be owned by player.
---@param aiPlayer PlayerID
---@param eGroup EGroupID
---@param homeBaseID Integer
function AIPlayer_SetEntityHomebase(aiPlayer, eGroup, homeBaseID)
end

---comment Set the target distribution of how the ai player should use their units for gathering
---@param aiPlayer PlayerID
---@param luaGatherDistro Real
function AIPlayer_SetGathererDistributionOverride(aiPlayer, luaGatherDistro)
end

---comment marks the player to force the stats squads to update
---@param player PlayerID
function AIPlayer_SetRequiresStatsUpdate(player)
end

---comment Add squads to a homebase. Squads must be owned by player.
---@param aiPlayer PlayerID
---@param sGroup SGroupID
---@param homeBaseID Integer
function AIPlayer_SetSquadHomebase(aiPlayer, sGroup, homeBaseID)
end

---comment Set the base strategic intention of a player
---@param player PlayerID
---@param intentionName String
---@param value Real
function AIPlayer_SetStrategicBaseIntention(player, intentionName, value)
end

---comment Toggle debug draw for the specified path, -1 will draw all of them
---@param requestingID Integer
---@param on Boolean
function AIPlayer_ToggleDrawCachedPath(requestingID, on)
end

---comment UnLocks a tactic item for the passed player
---@param tacticItemEntity EntityID
---@param lockingAISquad SquadID
function AIPlayer_UnLockTacticItemForAISquad(tacticItemEntity, lockingAISquad)
end

---comment Updates what the skirmish AI is wanting to gather
---@param pPlayer PlayerID
function AIPlayer_UpdateGathering(pPlayer)
end

---comment Requests the skirmish AI to update attack encounters and capture tasks
---@param pPlayer PlayerID
function AIPlayer_UpdateSkirmishAttackAndCaptureTasks(pPlayer)
end

---comment Requests the skirmish AI to update player abilities
---@param pPlayer PlayerID
function AIPlayer_UpdateSkirmishPlayerAbilities(pPlayer)
end

---comment Updates what the skirmish AI is trying to produce
---@param pPlayer PlayerID
function AIPlayer_UpdateSkirmishProduction(pPlayer)
end

---comment Requests the skirmish AI to update scout encounters
---@param pPlayer PlayerID
function AIPlayer_UpdateSkirmishScoutingTasks(pPlayer)
end

---comment Create a AlliedCombatFitness scoring function.
---@param aiPlayer PlayerID
---@param minFitness Real
---@param maxFitness Real
---@param aiArmyType Integer
---@param highFitnessIsGood Boolean
function AIProductionScoring_AlliedCombatFitness(aiPlayer, minFitness, maxFitness, aiArmyType, highFitnessIsGood)
end

---comment Create a AlliedCombatFitness scoring function (versus strongest enemy).
---@param aiPlayer PlayerID
---@param minFitness Real
---@param maxFitness Real
---@param aiArmyType Integer
---@param highFitnessIsGood Boolean
function AIProductionScoring_AlliedCombatFitnessVsStrongestEnemy(aiPlayer, minFitness, maxFitness, aiArmyType, highFitnessIsGood)
end

---comment Create a AlliedCombatFitness scoring function (versus the weakest enemy).
---@param aiPlayer PlayerID
---@param minFitness Real
---@param maxFitness Real
---@param aiArmyType Integer
---@param highFitnessIsGood Boolean
function AIProductionScoring_AlliedCombatFitnessVsWeakestEnemy(aiPlayer, minFitness, maxFitness, aiArmyType, highFitnessIsGood)
end

---comment Create an AmountOfResourceNeeded scoring function.
---@param aiPlayer PlayerID
---@param maxResources Real
function AIProductionScoring_AmountOfResourceNeeded(aiPlayer, maxResources)
end

---comment Check if now is an appropriate time to be making scoring functions.
---@param aiPlayer PlayerID
function AIProductionScoring_CanPushProductionScoringFunction(aiPlayer)
end

---comment Create a ClampedScoringFunction scoring function.
---@param aiPlayer PlayerID
---@param min Real
---@param max Real
---@param innerScoringFunction ScoringFunction*
function AIProductionScoring_ClampedScoringFunction(aiPlayer, min, max, innerScoringFunction)
end

---comment Create a CounterScore scoring function
---@param aiPlayer PlayerID
---@param baseScoreContributuion Real
function AIProductionScoring_CounterScore(aiPlayer, baseScoreContributuion)
end

---comment Create a DropOffScore scoring function.
---@param aiPlayer PlayerID
---@param weight Real
function AIProductionScoring_DeficiencyScore(aiPlayer, weight)
end

---comment Create a EntityCombatUpgrade scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_EntityCombatUpgrade(aiPlayer)
end

---comment Create a MinimumGameTime scoring function.
---@param aiPlayer PlayerID
---@param minGameTime Real
---@param increasePerSecond Real
function AIProductionScoring_IncreaseOverTime(aiPlayer, minGameTime, increasePerSecond)
end

---comment Create an InverseRandomIntScore scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_InverseRandomIntScore(aiPlayer)
end

---comment Create an IslandNeedingExpansionBase scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_IslandNeedingExpansionBase(aiPlayer)
end

---comment Create a LackOfSecuredResourceDeposits scoring function.
---@param aiPlayer PlayerID
---@param resourceType ResourceType
---@param scarceAmount Real
---@param wellOffAmount Real
function AIProductionScoring_LackOfSecuredResourceDeposits(aiPlayer, resourceType, scarceAmount, wellOffAmount)
end

---comment Create a LuaScoringFunction scoring function.
---@param aiPlayer PlayerID
---@param scoringFunction LuaFunction
function AIProductionScoring_LuaScoringFunction(aiPlayer, scoringFunction)
end

---comment Create a MaximumGameTime scoring function.
---@param aiPlayer PlayerID
---@param maxGameTime Real
function AIProductionScoring_MaximumGameTime(aiPlayer, maxGameTime)
end

---comment Create a MaxPopCapPercentage scoring function
---@param aiPlayer PlayerID
---@param targetPopulationPercentageAlive Real
---@param groupPopulation Boolean
function AIProductionScoring_MaxPopCapPercentage(aiPlayer, targetPopulationPercentageAlive, groupPopulation)
end

---comment Create a MaxScoringFunction scoring function.
---@param aiPlayer PlayerID
---@param innerScoringFunction vector<ScoringFunction*>
function AIProductionScoring_MaxScoringFunction(aiPlayer, innerScoringFunction)
end

---comment Create a MaxWeaponDamage scoring function.
---@param aiPlayer PlayerID
---@param maxDamage Real
function AIProductionScoring_MaxWeaponDamage(aiPlayer, maxDamage)
end

---comment Create a MilitaryPlayerUpgrade scoring function.
---@param aiPlayer PlayerID
---@param upgradeExponent Real
function AIProductionScoring_MilitaryPlayerUpgrade(aiPlayer, upgradeExponent)
end

---comment Create a MinimumGameTime scoring function.
---@param aiPlayer PlayerID
---@param minGameTime Real
function AIProductionScoring_MinimumGameTime(aiPlayer, minGameTime)
end

---comment Create a MultipleProduced scoring function
---@param aiPlayer PlayerID
---@param additionalFactor Real
function AIProductionScoring_MultipleProduced(aiPlayer, additionalFactor)
end

---comment Create a MultiplyListScoringFunction scoring function.
---@param aiPlayer PlayerID
---@param innerScoringFunction vector<ScoringFunction*>
function AIProductionScoring_MultiplyListScoringFunction(aiPlayer, innerScoringFunction)
end

---comment Create a NavalTransportRequired scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_NavalTransportRequired(aiPlayer)
end

---comment Create an NotProducedEver scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_NotProducedEver(aiPlayer)
end

---comment Create an NotProducedRecently scoring function.
---@param aiPlayer PlayerID
---@param timePeriodSeconds Real
function AIProductionScoring_NotProducedRecently(aiPlayer, timePeriodSeconds)
end

---comment Create a OnlyProduceOneAtATime scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_OnlyProduceOneAtATime(aiPlayer)
end

---comment Create a PlannedPlacementScore scoring function.
---@param aiPlayer PlayerID
---@param minPlacementScore Real
function AIProductionScoring_PlannedPlacementScore(aiPlayer, minPlacementScore)
end

---comment Create a PlayerGatheringUpgrade scoring function
---@param aiPlayer PlayerID
---@param improvementScalingFactor Real
---@param approxDistToDeposit Real
function AIProductionScoring_PlayerGatheringUpgrade(aiPlayer, improvementScalingFactor, approxDistToDeposit)
end

---comment Create an AIPlayersOnDifferentIslands scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_PlayersOnDifferentIslands(aiPlayer)
end

---comment Create a PopCapGenerator scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_PopCapGenerator(aiPlayer)
end

---comment Create a PopulationPercentage scoring function
---@param aiPlayer PlayerID
---@param targetPopulationPercentageAlive Real
---@param scoreDropOffFactor Real
---@param groupPopulation Boolean
---@param useSquadPopulation Boolean
function AIProductionScoring_PopulationPercentage(aiPlayer, targetPopulationPercentageAlive, scoreDropOffFactor, groupPopulation, useSquadPopulation)
end

---comment Create a PresenceOfEnemyTypes scoring function
---@param aiPlayer PlayerID
---@param weights Real
---@param squadTypes Boolean
function AIProductionScoring_PresenceOfEnemyTypes(aiPlayer, weights, squadTypes)
end

---comment Create a PresenceOfMyTypes scoring function
---@param aiPlayer PlayerID
---@param weights Real
---@param squadTypes Boolean
function AIProductionScoring_PresenceOfMyTypes(aiPlayer, weights, squadTypes)
end

---comment Create a PresenceOfUpgradeableSquads scoring function.
---@param aiPlayer PlayerID
---@param weight Real
function AIProductionScoring_PresenceOfUpgradeableSquads(aiPlayer, weight)
end

---comment Create a ProductionQueueContention scoring function.
---@param aiPlayer PlayerID
---@param contentionThreshold Real
---@param normalFactor Real
function AIProductionScoring_ProductionQueueContention(aiPlayer, contentionThreshold, normalFactor)
end

---comment Create an RandomIntScore scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_RandomIntScore(aiPlayer)
end

---comment Create an RemainingPersonnelPopCap scoring function.
---@param aiPlayer PlayerID
---@param requiredRemainingPop Real
function AIProductionScoring_RemainingPersonnelPopCap(aiPlayer, requiredRemainingPop)
end

---comment Create a ResourceGeneratorScore scoring function.
---@param aiPlayer PlayerID
---@param depletionTimeThreshold Real
function AIProductionScoring_ResourceGeneratorScore(aiPlayer, depletionTimeThreshold)
end

---comment Create a DropOffScore scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_ScarcityAndDeficiencyScore(aiPlayer)
end

---comment Create an AIShouldConsiderLimitedNaval scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_ShouldConsiderLimitedNaval(aiPlayer)
end

---comment Create an AIShouldConsiderNaval scoring function.
---@param aiPlayer PlayerID
function AIProductionScoring_ShouldConsiderNaval(aiPlayer)
end

---comment Returns 1 if not a naval map, 0 otherwise
---@param aiPlayer PlayerID
---@param shouldIncludeLimitedNaval Boolean
function AIProductionScoring_ShouldNotConsiderNaval(aiPlayer, shouldIncludeLimitedNaval)
end

---comment Create a StrategicIntention scoring function
---@param aiPlayer PlayerID
---@param weights Real
function AIProductionScoring_StrategicIntention(aiPlayer, weights)
end

---comment Create a TierUpgrade scoring function.
---@param aiPlayer PlayerID
---@param weight Real
function AIProductionScoring_TierUpgrade(aiPlayer, weight)
end

---comment Create a TimeToAcquire scoring function
---@param aiPlayer PlayerID
---@param maxTimeSeconds Real
---@param includeTimeToGather Boolean
---@param includeTimeToBuildThis Boolean
---@param includeTimeToBuildRequirements Boolean
function AIProductionScoring_TimeToAcquire(aiPlayer, maxTimeSeconds, includeTimeToGather, includeTimeToBuildThis, includeTimeToBuildRequirements)
end

---comment Create a ResourceDesireVsIncome scoring function.
---@param aiPlayer PlayerID
---@param landRoute Boolean
function AIProductionScoring_TradeRouteExistsScore(aiPlayer, landRoute)
end

---comment Create a UnderCountLimit scoring function
---@param aiPlayer PlayerID
---@param maxAlive Integer
---@param maxEverProduced Integer
---@param groupPopulation Boolean
function AIProductionScoring_UnderCountLimit(aiPlayer, maxAlive, maxEverProduced, groupPopulation)
end

---comment Create a UnderCountLimit scoring function
---@param aiPlayer PlayerID
---@param keyMaxAlive String
function AIProductionScoring_UnderCountLimitFromStateModel(aiPlayer, keyMaxAlive)
end

---comment Create an VehicleUnderCountLimit scoring function.
---@param aiPlayer PlayerID
---@param groupPopulation Boolean
---@param maxCap Boolean
function AIProductionScoring_VehicleUnderCountLimit(aiPlayer, groupPopulation, maxCap)
end

---comment Clears a TargetHandle value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_ClearStateModelEnumTableTarget(aiSquad, key, tableRowIndex)
end

---comment Clears a TargetHandle value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_ClearStateModelTarget(aiSquad, key)
end

---comment Find the best squad target which is not part of a clump.
---@param aiSquad SquadID
---@param targetSquads SGroupID
---@param tacticTargetPolicy TargetPreference
---@param targetAllies Boolean
function AISquad_FindBestIsolatedSquadTarget(aiSquad, targetSquads, tacticTargetPolicy, targetAllies)
end

---comment returns the best squad target in the sgroup based on the passed tacticTargetPolicy
---@param aiSquad SquadID
---@param targetSquads SGroupID
---@param tacticTargetPolicy TargetPreference
function AISquad_FindBestSquadTarget(aiSquad, targetSquads, tacticTargetPolicy)
end

---comment Tries to find cover within a certain radius of a position, traveling a max distance to get there, and possibly comparing against current position's cover. If no cover is found, it returns an invalid position
---@param player PlayerID
---@param aiSquad SquadID
---@param maxPathDistanceFromGoal Real
---@param compareToCurrentCover Boolean
function AISquad_FindFilteredCoverCompareCurrent(player, aiSquad, maxPathDistanceFromGoal, compareToCurrentCover)
end

---comment returns the safest position for the AISquad in the current encounter leash area
---@param aiSquad SquadID
---@param maxRadius Real
function AISquad_FindSafePositionInEncounterLeash(aiSquad, maxRadius)
end

---comment Returns the closest cuttable obstruction entity to the given squad
---@param pSquad SquadID
---@param radius Real
function AISquad_GetClosestCuttableObstruction(pSquad, radius)
end

---comment Returns the closest obstruction entity to the given squad
---@param pSquad SquadID
---@param radius Real
---@param bFilterAllied Boolean
function AISquad_GetClosestObstruction(pSquad, radius, bFilterAllied)
end

---comment Returns the closest obstruction entity to the given squad
---@param pSquad SquadID
---@param radius Real
---@param pbgtype PropertyBagGroup
function AISquad_GetClosestObstructionOfType(pSquad, radius, pbgtype)
end

---comment Get the position on the far side of the given clump relative to the given squad.
---@param aiSquad SquadID
---@param clumpIndex Integer
---@param targetFilterFlags Integer
function AISquad_GetClumpFarBound(aiSquad, clumpIndex, targetFilterFlags)
end

---comment returns the current fallback position
---@param aiSquad SquadID
function AISquad_GetCurrentFallBackPosition(aiSquad)
end

---comment Returns a boolean value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelBool(aiSquad, key)
end

---comment Returns an Entity value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelEntityTarget(aiSquad, key)
end

---comment Returns a boolean value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTableBool(aiSquad, key, tableRowIndex)
end

---comment Returns an Entity value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTableEntityTarget(aiSquad, key, tableRowIndex)
end

---comment Returns a float value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTableFloat(aiSquad, key, tableRowIndex)
end

---comment Returns an integer value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTableInt(aiSquad, key, tableRowIndex)
end

---comment Returns a pbg value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTablePBG(aiSquad, key, tableRowIndex)
end

---comment Returns a Player value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTablePlayerTarget(aiSquad, key, tableRowIndex)
end

---comment Returns a Squad value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTableSquadTarget(aiSquad, key, tableRowIndex)
end

---comment Returns a Vector3f value from the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
function AISquad_GetStateModelEnumTableVector3f(aiSquad, key, tableRowIndex)
end

---comment Returns a float value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelFloat(aiSquad, key)
end

---comment Returns an integer value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelInt(aiSquad, key)
end

---comment Returns a pbg value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelPBG(aiSquad, key)
end

---comment Returns a Player value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelPlayerTarget(aiSquad, key)
end

---comment Returns a Squad value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelSquadTarget(aiSquad, key)
end

---comment Returns a Vector3f value from the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
function AISquad_GetStateModelVector3f(aiSquad, key)
end

---comment Checks if the squad has been attacked within this time
---@param pAISquad SquadID
---@param historyTicks Integer
function AISquad_HasBeenAttacked(pAISquad, historyTicks)
end

---comment Checks if the squad has fired its weapon within this time
---@param pAISquad SquadID
---@param historyTicks Integer
function AISquad_HasFiredWeapon(pAISquad, historyTicks)
end

---comment Returns true if a path shorter than maxDistance between the AISquad and the target exists
---@param aiSquad SquadID
---@param targetPosition Position
---@param maxDistance Real
function AISquad_HasPathWithinDistance(aiSquad, targetPosition, maxDistance)
end

---comment returns true if the AISquad is currently running the AISquadAbilityTactic for the passed abilityPBG
---@param aiSquad SquadID
---@param abilityPBG PropertyBagGroup
function AISquad_IsRunningSquadTacticAbility(aiSquad, abilityPBG)
end

---comment Sets a boolean value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value Boolean
function AISquad_SetStateModelBool(aiSquad, key, value)
end

---comment Sets an Entity TargetHandle value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value EntityID
function AISquad_SetStateModelEntityTarget(aiSquad, key, value)
end

---comment Sets a boolean value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Boolean
function AISquad_SetStateModelEnumTableBool(aiSquad, key, tableRowIndex, value)
end

---comment Sets an Entity TargetHandle value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value EntityID
function AISquad_SetStateModelEnumTableEntityTarget(aiSquad, key, tableRowIndex, value)
end

---comment Sets a float value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Real
function AISquad_SetStateModelEnumTableFloat(aiSquad, key, tableRowIndex, value)
end

---comment Sets an integer value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Integer
function AISquad_SetStateModelEnumTableInt(aiSquad, key, tableRowIndex, value)
end

---comment Sets a pbg value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value PropertyBagGroup
function AISquad_SetStateModelEnumTablePBG(aiSquad, key, tableRowIndex, value)
end

---comment Sets a Player TargetHandle value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value PlayerID
function AISquad_SetStateModelEnumTablePlayerTarget(aiSquad, key, tableRowIndex, value)
end

---comment Sets a Squad TargetHandle value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value SquadID
function AISquad_SetStateModelEnumTableSquadTarget(aiSquad, key, tableRowIndex, value)
end

---comment Sets a Vector3f value in the AISquad's state model corresponding to the given key and table row index (0 based).
---@param aiSquad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Position
function AISquad_SetStateModelEnumTableVector3f(aiSquad, key, tableRowIndex, value)
end

---comment Sets a float value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value Real
function AISquad_SetStateModelFloat(aiSquad, key, value)
end

---comment Sets an integer value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value Integer
function AISquad_SetStateModelInt(aiSquad, key, value)
end

---comment Sets a pbg value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value PropertyBagGroup
function AISquad_SetStateModelPBG(aiSquad, key, value)
end

---comment Sets a Player TargetHandle value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value PlayerID
function AISquad_SetStateModelPlayerTarget(aiSquad, key, value)
end

---comment Sets a Squad TargetHandle value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value SquadID
function AISquad_SetStateModelSquadTarget(aiSquad, key, value)
end

---comment Sets a Vector3f value in the AISquad's state model corresponding to the given key.
---@param aiSquad SquadID
---@param key String
---@param value Position
function AISquad_SetStateModelVector3f(aiSquad, key, value)
end

---comment Checks if the squad should fall back or brace itself given the current situation.
---@param pAISquad SquadID
function AISquad_ShouldFallBackOrBraceSelf(pAISquad)
end

---comment On the AIPlayer statetree, spawn a Root Controller with tunings that can be pushed onto the Root Controller's StateModel.
---@param pPlayer PlayerID
---@param openingBranchName String
---@param keepAlive Boolean
---@param stateModelTuningsScarPBG ScarAIStateModelTuningsPBG
---@param stateModelSGroupListTunings SGroupID
---@param stateModelEGroupListTunings EGroupID
---@param stateModelPositionTargetListTunings Position
---@param stateModelMarkerTargetListTunings MarkerID
---@param stateModelEntityTypeListTunings String[]
---@param stateModelCoordinatorPBGListTunings LuaMap<ScarAIFormationCoordinatorPBG>
---@param stateModelBoolTunings Boolean
---@param stateModelFloatTunings Real
---@param stateModelIntTunings Integer
function AIStateTree_SpawnRootControllerWithStateModelTunings(pPlayer, openingBranchName, keepAlive, stateModelTuningsScarPBG, stateModelSGroupListTunings, stateModelEGroupListTunings, stateModelPositionTargetListTunings, stateModelMarkerTargetListTunings, stateModelEntityTypeListTunings, stateModelCoordinatorPBGListTunings, stateModelBoolTunings, stateModelFloatTunings, stateModelIntTunings)
end

---comment calculates a valid target position for a jump slide ability
---@param aiSquad SquadID
---@param abilityPBG PropertyBagGroup
---@param slideOffset Real
---@param targetPosition Position
function AITactic_AdjustJumpSlideAbilityTarget(aiSquad, abilityPBG, slideOffset, targetPosition)
end

---comment Issue an AI move command to a squad
---@param aiSquad SquadID
---@param target Position
---@param acceptableProximity Real
---@param reverseMove Boolean
function AITactic_AICommandSquadMove(aiSquad, target, acceptableProximity, reverseMove)
end

---comment Get the number of seconds on an objective timer.
---@param objectiveID Integer
function AITactic_GetObjectiveTimerSeconds(objectiveID)
end

---comment Get tactic priority for a squad.
---@param pSquad SquadID
---@param tacticType AITacticType
function AITactic_GetTacticPriority(pSquad, tacticType)
end

---comment Returns all ScarMarkers from the Scenario Editor with the given name. If you don't care about the type, pass in an empty string ( "" )
---@param name String
---@param type String
function AllMarkers_FromName(name, type)
end

---comment Returns all ScarMarkers from the Mission Editor with the given name. If you don't care about the type, pass in an empty string ( "" )
---@param name String
---@param type String
function AllMarkersFromName(name, type)
end

---comment Remove the movie mode framerate restriction
function App_ClearMovieModeFramerate()
end

---comment Return the current app time
function app_currenttime()
end

---comment Set the ideal frame rate for the game. Set to 0 if an unbounded frame rate is desired.
---@param frameRate Integer
function app_setidealframerate(frameRate)
end

---comment Run the game at specified frame rate (for capturing movies). Only works with 60 or 120, other rates are defaulted to 60. Setting it to 0 disables movie mode
---@param frameRate Integer
function App_SetMovieModeFramerate(frameRate)
end

---comment Returns an ability property bag group.
---@param pbgShortname String
function BP_GetAbilityBlueprint(pbgShortname)
end

---comment Returns an ability property bag group.
---@param pbgID Integer
function BP_GetAbilityBlueprintByPbgID(pbgID)
end

---comment Returns an AIAbility property bag group.
---@param pbgShortname String
function BP_GetAIAbilityBlueprint(pbgShortname)
end

---comment Returns an AIAbility property bag group.
---@param pbgID Integer
function BP_GetAIAbilityBlueprintByPbgID(pbgID)
end

---comment Returns an AIFormationCoordinator property bag group.
---@param pbgShortname String
function BP_GetAIFormationCoordinatorBlueprint(pbgShortname)
end

---comment Returns an AIFormationCoordinator property bag group.
---@param pbgID Integer
function BP_GetAIFormationCoordinatorBlueprintByPbgID(pbgID)
end

---comment Returns an AIFormationTargetPriority property bag group.
---@param pbgShortname String
function BP_GetAIFormationTargetPriorityBlueprint(pbgShortname)
end

---comment Returns an AIFormationTargetPriority property bag group.
---@param pbgID Integer
function BP_GetAIFormationTargetPriorityBlueprintByPbgID(pbgID)
end

---comment Returns an AIStateModelTunings property bag group.
---@param pbgShortname String
function BP_GetAIStateModelTuningsBlueprint(pbgShortname)
end

---comment Returns an AIStateModelTunings property bag group.
---@param pbgID Integer
function BP_GetAIStateModelTuningsBlueprintByPbgID(pbgID)
end

---comment Returns the string name of the BLUEPRINT_ARCHETYPE enum entry
---@param index FamilyIndex
function BP_GetBlueprintArchetypeTypename(index)
end

---comment Returns an entity blueprint of type BLUEPRINT_ARCHETYPE index for the associated race for the player.
---@param player Player&
---@param index FamilyIndex
function BP_GetEntityArchetypeBlueprintForPlayer(player, index)
end

---comment Returns an entity blueprint of type BLUEPRINT_ARCHETYPE index for the associated race.
---@param racePBG ScarRacePBG
---@param index FamilyIndex
function BP_GetEntityArchetypeBlueprintForRace(racePBG, index)
end

---comment Returns an entity property bag group.
---@param pbgShortname String
function BP_GetEntityBlueprint(pbgShortname)
end

---comment Returns an entity property bag group.
---@param pbgID Integer
function BP_GetEntityBlueprintByPbgID(pbgID)
end

---comment Returns the unmodified build time in seconds from cost_ext for a given entity blueprint.
---@param entityBag ScarEntityPBG
function BP_GetEntityBPBuildTime(entityBag)
end

---comment Returns the default movement speed from moving_ext for a given entity blueprint. If getModifiedSpeed is true, the value will be modified by any speed_maximum_modifier applied to the player for the given entity blueprint.
---@param entityBag ScarEntityPBG
---@param getModifiedSpeed Boolean
---@param player PlayerID
function BP_GetEntityBPDefaultSpeed(entityBag, getModifiedSpeed, player)
end

---comment Returns the child blueprint of the specified entity blueprint at specified index.
---@param pbgShortname String
---@param index Integer
function BP_GetEntityChildBlueprintAtIndex(pbgShortname, index)
end

---comment Returns the number of child blueprints of the specified entity blueprint.
---@param pbgShortname String
function BP_GetEntityChildBlueprintCount(pbgShortname)
end

---comment Returns the parent blueprint of the specified entity blueprint at specified index
---@param pbgShortname String
---@param index Integer
function BP_GetEntityParentBlueprintAtIndex(pbgShortname, index)
end

---comment Returns the number of parent blueprints of the specified entity blueprint.
---@param pbgShortname String
function BP_GetEntityParentBlueprintCount(pbgShortname)
end

---comment Returns race blueprint associated with an entity blueprint type_ext at specified index.
---@param pbgShortname String
---@param index Integer
function BP_GetEntityTypeExtRaceBlueprintAtIndex(pbgShortname, index)
end

---comment Returns the number of race blueprints associated with an entity blueprint type_ext.
---@param pbgShortname String
function BP_GetEntityTypeExtRaceCount(pbgShortname)
end

---comment Returns a table containing the ui_ext info for given entity
---@param ebp ScarEntityPBG
function BP_GetEntityUIInfo(ebp)
end

---comment Returns a map pool property bag group.
---@param pbgShortname String
function BP_GetMapPoolBlueprint(pbgShortname)
end

---comment Returns a map pool property bag group.
---@param pbgID Integer
function BP_GetMapPoolBlueprintByPbgID(pbgID)
end

---comment Returns a move type property bag group.
---@param pbgShortname String
function BP_GetMoveTypeBlueprint(pbgShortname)
end

---comment Returns a move type property bag group.
---@param pbgID Integer
function BP_GetMoveTypeBlueprintByPbgID(pbgID)
end

---comment Return the short name of the group
---@param pbg PropertyBagGroup
function BP_GetName(pbg)
end

---comment Returns an pass type property bag group.
---@param pbgShortname String
function BP_GetPassTypeBlueprint(pbgShortname)
end

---comment Returns an pass type property bag group.
---@param pbgID Integer
function BP_GetPassTypeBlueprintByPbgID(pbgID)
end

---comment Return the number of property bag groups of the same type
---@param type PropertyBagGroupType
function BP_GetPropertyBagGroupCount(type)
end

---comment Return the path name of the group at the specified index
---@param type PropertyBagGroupType
---@param index Integer
function BP_GetPropertyBagGroupPathName(type, index)
end

---comment Returns a UIReticuleBag property bag group.
---@param pbgShortname String
function BP_GetReticuleBlueprint(pbgShortname)
end

---comment Returns a slot item property bag group.
---@param pbgShortname String
function BP_GetSlotItemBlueprint(pbgShortname)
end

---comment Returns a slot item property bag group.
---@param pbgID Integer
function BP_GetSlotItemBlueprintByPbgID(pbgID)
end

---comment Returns a squad blueprint of type BLUEPRINT_ARCHETYPE index for the associated race of the player.
---@param player Player&
---@param index FamilyIndex
function BP_GetSquadArchetypeBlueprintForPlayer(player, index)
end

---comment Returns a squad blueprint of type BLUEPRINT_ARCHETYPE index for the associated race.
---@param racePBG ScarRacePBG
---@param index FamilyIndex
function BP_GetSquadArchetypeBlueprintForRace(racePBG, index)
end

---comment Returns a squad property bag group.
---@param pbgShortname String
function BP_GetSquadBlueprint(pbgShortname)
end

---comment Returns a squad property bag group.
---@param pbgID String
function BP_GetSquadBlueprintByPbgID(pbgID)
end

---comment Returns the child blueprint of the specified squad blueprint at specified index.
---@param pbgShortname String
---@param index Integer
function BP_GetSquadChildBlueprintAtIndex(pbgShortname, index)
end

---comment Returns the number of child blueprints of the specified squad blueprint.
---@param pbgShortname String
function BP_GetSquadChildBlueprintCount(pbgShortname)
end

---comment Returns the parent blueprint of the specified squad blueprint at specified index
---@param pbgShortname String
---@param index Integer
function BP_GetSquadParentBlueprintAtIndex(pbgShortname, index)
end

---comment Returns the number of parent blueprints of the specified squad blueprint.
---@param pbgShortname String
function BP_GetSquadParentBlueprintCount(pbgShortname)
end

---comment Returns race blueprint associated with a squad blueprint squad_type_ext at specified index.
---@param pbgShortname String
---@param index Integer
function BP_GetSquadTypeExtRaceBlueprintAtIndex(pbgShortname, index)
end

---comment Returns the number of race blueprints associated with a squad blueprint squad_type_ext.
---@param pbgShortname String
function BP_GetSquadTypeExtRaceCount(pbgShortname)
end

---comment Returns a table containing the ui_ext info for given squad and race
---@param sbp ScarSquadPBG
---@param rbp ScarRacePBG
function BP_GetSquadUIInfo(sbp, rbp)
end

---comment Returns the type of a blueprint.
---@param v StackVar
function BP_GetType(v)
end

---comment Returns an upgrade property bag group.
---@param pbgShortname String
function BP_GetUpgradeBlueprint(pbgShortname)
end

---comment Returns an upgrade property bag group.
---@param pbgID Integer
function BP_GetUpgradeBlueprintByPbgID(pbgID)
end

---comment Returns a table containing the ui_ext info for given upgrade
---@param ubp ScarUpgradePBG
function BP_GetUpgradeUIInfo(ubp)
end

---comment Returns a weapon property bag group.
---@param pbgShortname String
function BP_GetWeaponBlueprint(pbgShortname)
end

---comment Returns a weapon property bag group.
---@param pbgID Integer
function BP_GetWeaponBlueprintByPbgID(pbgID)
end

---comment Returns true if the UpgradePGB's list of types includes the given type
---@param upgradePBG ScarUpgradePBG
---@param key String
function BP_IsUpgradeOfType(upgradePBG, key)
end

---comment Clamps the camera's target position to a marker.
---@param marker MarkerID
function Camera_ClampToMarker(marker)
end

---comment Execute spline pan based on queued control points. Use B-Spline interpolation of points
---@param totalT Real
---@param controlRotation Boolean
function Camera_ExecuteBSplinePan(totalT, controlRotation)
end

---comment Executes a camera pan that was captured using the Capture Tool. Expects that the "camera_spline" Camera set was pushed to the CameraSwitchboard, using Camera_Push("camera_spline") Returns the duration of the spline, so that the user can call Camera_Pop()
---@param cameraPanTable StackVarTable
function Camera_ExecuteCaptureCameraPan(cameraPanTable)
end

---comment Execute spline pan based on queued control points. Use Catmull-Rom interpolation of points
---@param totalT Real
---@param controlRotation Boolean
function Camera_ExecuteCatromSplinePan(totalT, controlRotation)
end

---comment Execute spline pan based on queued control points. Use linear interpolation between points
---@param totalT Real
---@param controlRotation Boolean
function Camera_ExecuteLinearSplinePan(totalT, controlRotation)
end

---comment Focus the camera on the specified position.
---@param position Position
function Camera_FocusOnPosition(position)
end

---comment Make the camera follow the specified entity.
---@param entity EntityID
function Camera_FollowEntity(entity)
end

---comment Make the camera follow the current full selection.
function Camera_FollowSelection()
end

---comment Make the camera follow the specified squad.
---@param squad SquadID
function Camera_FollowSquad(squad)
end

---comment Get the current position for the camera. (Where the the camera currently is.)
function Camera_GetCurrentPos()
end

---comment Get the current target position for the camera. (Where the the camera currently is.)
function Camera_GetCurrentTargetPos()
end

---comment Get the current camera declination (tilt).
function Camera_GetDeclination()
end

---comment Get the default camera orbit (rotation).
function Camera_GetDefaultOrbit()
end

---comment Get the current camera orbit (rotation).
function Camera_GetOrbit()
end

---comment Get the pivot of the camera. (The position about which the camera is pivoting).
function Camera_GetPivot()
end

---comment Get the desired target position for the camera. (Where the camera is trying to get to.)
function Camera_GetTargetPos()
end

---comment Get the current zoom distance for the camera.
function Camera_GetZoomDist()
end

---comment Hide the camera mesh.
function Camera_HideMesh()
end

---comment Returns the enabled/disabled state of the camera input.  (not deterministic)
function Camera_IsInputEnabled()
end

---comment Is the camera mesh being shown?
function Camera_IsMeshShown()
end

---comment Queue a spline control point by position relative to the last queued position. Pan is deferred until requested by an execution function
---@param deltaPos Position
function Camera_QueueRelativeSplinePanPos(deltaPos)
end

---comment Queue a spline control point by absolute position. Pan is deferred until requested by an execution function
---@param pos Position
function Camera_QueueSplinePanPos(pos)
end

---comment Make the camera stop following anything.
function Camera_ResetFocus()
end

---comment Set the current camera orbit relative to the current orbit (relative rotation).
function Camera_ResetOrbit()
end

---comment Reset camera position to default home position
function Camera_ResetToDefault()
end

---comment Set the current camera declination (tilt).
---@param declination Real
function Camera_SetDeclination(declination)
end

---comment Set the default camera declination (tilt).
---@param declination Real
function Camera_SetDefaultDeclination(declination)
end

---comment Set the default camera orbit (rotation).
---@param orbit Real
function Camera_SetDefaultOrbit(orbit)
end

---comment Set the default zoom distance for the camera.
---@param distance Real
function Camera_SetDefaultZoomDist(distance)
end

---comment Set the current camera field of view (fov)
---@param fov Real
function Camera_SetFov(fov)
end

---comment Enables/disables camera input.
---@param enabled Boolean
function Camera_SetInputEnabled(enabled)
end

---comment Set the current camera orbit (rotation).
---@param orbit Real
function Camera_SetOrbit(orbit)
end

---comment Set the current camera orbit relative to the current orbit (relative rotation).
---@param deltaOrbit Real
function Camera_SetOrbitRelative(deltaOrbit)
end

---comment Set the current zoom distance for the camera.
---@param distance Real
function Camera_SetZoomDist(distance)
end

---comment Show the camera mesh.
function Camera_ShowMesh()
end

---comment Orbit the camera a given number of degrees clockwise from the current orbit position in a given amount of time.
---@param deltaOrbit Real
---@param totalT Real
function Camera_StartDeltaOrbit(deltaOrbit, totalT)
end

---comment Orbit the camera to an end orbit position from the current orbit position in a given amount of time. Will choose shortest rotational direction.
---@param endOrbit Real
---@param totalT Real
function Camera_StartOrbit(endOrbit, totalT)
end

---comment Pan the camera between two positions in a given amount of time. Interpolates the camera to the given zoom.
---@param startPos Position
---@param endPos Position
---@param totalT Real
---@param zoomDistance Real
function Camera_StartPan(startPos, endPos, totalT, zoomDistance)
end

---comment Pan the camera to a position in a given amount of time from the position in front of the queue.
---@param endPos Position
---@param totalT Real
---@param zoomDistance Real
function Camera_StartPanTo(endPos, totalT, zoomDistance)
end

---comment Pan the camera by some amount in a given amount of time. This is relative to the position in front of the queue.
---@param deltaPos Position
---@param totalT Real
---@param zoomDistance Real
function Camera_StartRelativePan(deltaPos, totalT, zoomDistance)
end

---comment Start a transition to a relative zoom distance over a certain amount of time.
---@param deltaZoomDist Real
---@param totalT Real
function Camera_StartRelativeZoomDist(deltaZoomDist, totalT)
end

---comment Start a transition from one zoom distance to another over a certain amount of time.
---@param startZoomDist Real
---@param endZoomDist Real
---@param totalT Real
function Camera_StartZoomDist(startZoomDist, endZoomDist, totalT)
end

---comment Start a transition to a zoom distance over a certain amount of time.
---@param endZoomDist Real
---@param totalT Real
function Camera_StartZoomDistTo(endZoomDist, totalT)
end

---comment Stop an ongoing camera pan.
function Camera_StopPan()
end

---comment Toggle the debug free camera
function Camera_ToggleDebugCamera()
end

---comment Toggle the camera mesh.
---@param show Boolean
function Camera_ToggleMeshShown(show)
end

---comment Frees up the camera (so it's not clamped to a marker anymore).
function Camera_Unclamp()
end

---comment Cheat to award all ribbons and medals
function Cheat_GrantAllRibbonsAndMedals()
end

---comment Cheat to reset all achievement progress
function Cheat_ResetAchievementProgress()
end

---comment Get the value for a command line arg.
---@param name String
function cmdline_string(name)
end

---comment Send a message to a player with generic type a body
---@param player PlayerID
---@param dest PlayerID
---@param messageType Integer
---@param message String
function Command_PlayerBroadcastMessage(player, dest, messageType, message)
end

---comment Toggle cursor position distance drawring
function Cursor_Distance()
end

---comment Toggle clearing of cursor over entity weapon shot history debug display
function Cursor_GetClearWeaponShotHistory()
end

---comment Toggle cursor over entity weapon shot history debug display
function Cursor_GetDrawWeaponShotHistory()
end

---comment Hide the cursor
function cursor_hide()
end

---comment Toggle cursor position information
function Cursor_Info()
end

---comment Set the cursor position
---@param x Real
---@param y Real
function cursor_setposition(x, y)
end

---comment Show the cursor
function cursor_show()
end

---comment Toggle cursor over entity weapon information
function Cursor_WeaponInfo()
end

---comment Toggle cursor over entity weapon range information
function Cursor_WeaponRanges()
end

---comment Get dca variable value for an entity. Can be used to validate presentation state from lua.
---@param pEntity EntityID
---@param variableName String
function dca_get_variable_value(pEntity, variableName)
end

---comment Toggles on or off under mouse check. If ignoring mouse check, all entities will have the enabled debug info displayed
function Debug_IgnoreMouseOverCheck()
end

---comment Allows the local player to issue commands to any unit regardless of ownership.
function Debug_ToggleControlAll()
end

---comment Toggles on or off all debug test activity
function Debug_ToggleDebugTest()
end

---comment Add a decal to the terrain. Returns a unique decal id allow for future removal via Decal_Destroy
---@param decalName String
---@param position Position
---@param xScale Real
---@param yScale Real
---@param zScale Real
---@param rotationDegrees Real
---@param r Integer
---@param g Integer
---@param b Integer
---@param a Integer
function Decal_Create(decalName, position, xScale, yScale, zScale, rotationDegrees, r, g, b, a)
end

---comment Destroy a decal by unique id
---@param decalID Integer
function Decal_Destroy(decalID)
end

---comment Get the Decal ID that represents an invalid decal (useful to check if creation failed)
function Decal_GetInvalidID()
end

---comment Returns the current decal id in use; used in conjunction with Decal_RemoveAllDecalsAfterId
function Decal_GetNextDecalId()
end

---comment Erases all placed decals after id (inclusive); used in conjunction with Decal_GetNextDecalId
---@param id Integer
function Decal_RemoveAllDecalsAfterId(id)
end

---comment Query the display adapter database for a boolean setting override.
---@param setting String
function DisplayAdapterDatabase_CheckBoolOverride(setting)
end

---comment Query the display adapter database for a floating-point setting override.
---@param setting String
function DisplayAdapterDatabase_CheckFloatOverride(setting)
end

---comment Query the display adapter database for an integer setting override.
---@param setting String
function DisplayAdapterDatabase_CheckIntOverride(setting)
end

---comment Output the installed display adapter driver version, the required version for the current adapter, and whether or not the installed version is equal to or greater than the required one.
function DisplayAdapterDatabase_CheckMinimumDriverVersion()
end

---comment Query the display adapter database for a uint16 setting override.
---@param setting String
function DisplayAdapterDatabase_CheckUint16Override(setting)
end

---comment Query the display adapter database for a uint8 setting override.
---@param setting String
function DisplayAdapterDatabase_CheckUint8Override(setting)
end

---comment Query the display adapter database for a uint32 setting override.
---@param setting String
function DisplayAdapterDatabase_CheckUintOverride(setting)
end

---comment Query the display adapter database for information about a specified adapter.
---@param vendor String
---@param device String
---@param subsystem String
---@param revision String
function DisplayAdapterDatabase_GetAdapterFromID(vendor, device, subsystem, revision)
end

---comment Output basic information about the current display adapter.
function DisplayAdapterDatabase_GetAdapterID()
end

---comment Query the display adapter database for the minimum required driver version for a specified adapter.
---@param vendor String
---@param device String
---@param subsystem String
---@param revision String
function DisplayAdapterDatabase_GetAdapterMinimumDriverVersion(vendor, device, subsystem, revision)
end

---comment Query the display adapter database for the performance class of the currently-installed display adapter.
function DisplayAdapterDatabase_GetCurrentAdapterPerformanceClass()
end

---comment Output basic information about the currently installed display adapter driver.
function DisplayAdapterDatabase_GetDriverInfo()
end

---comment Query the display adapter database for the performance class given a relative performance percentage.
---@param relativePerformance Real
function DisplayAdapterDatabase_GetPerformanceClass(relativePerformance)
end

---comment Clear debug rendering.
---@param frame String
function dr_clear(frame)
end

---comment Draw a circle, positioned in 3D, aligned to scren.
---@param frame String
---@param x Real
---@param y Real
---@param z Real
---@param radius Real
---@param r Integer
---@param g Integer
---@param b Integer
function dr_drawCircle(frame, x, y, z, radius, r, g, b)
end

---comment Draw line. If you don't pass in a name, TerrainLine is used.
---@param pos0 Position
---@param pos1 Position
---@param r Integer
---@param g Integer
---@param b Integer
---@param svar StackVar
function dr_drawline(pos0, pos1, r, g, b, svar)
end

---comment Set auto clear for named frame.
---@param frame String
---@param bEnable Boolean
function dr_setautoclear(frame, bEnable)
end

---comment Set display of named frame.
---@param frame String
---@param bEnable Boolean
function dr_setdisplay(frame, bEnable)
end

---comment Draw circle on terrain.
---@param pos Position
---@param radius Real
---@param r Real
---@param g Real
---@param b Real
---@param divs Integer
---@param frame String
function dr_terraincircle(pos, radius, r, g, b, divs, frame)
end

---comment Draw circle on terrain with lifetime.
---@param pos Position
---@param radius Real
---@param r Real
---@param g Real
---@param b Real
---@param divs Integer
---@param frame String
---@param lifetime Real
function dr_terraincirclewithlifetime(pos, radius, r, g, b, divs, frame, lifetime)
end

---comment Draw rectangle on terrian.
---@param pos Position
---@param w Real
---@param h Real
---@param r Real
---@param g Real
---@param b Real
---@param rads Real
function dr_terrainrect(pos, w, h, r, g, b, rads)
end

---comment Draw text, positioned in 2D, aligned to the screen.
---@param frame String
---@param x Real
---@param y Real
---@param cmd String
---@param r Integer
---@param g Integer
---@param b Integer
function dr_text2d(frame, x, y, cmd, r, g, b)
end

---comment Draw text, positioned in 3D, aligned to screen.
---@param frame String
---@param x Real
---@param y Real
---@param z Real
---@param cmd String
---@param r Integer
---@param g Integer
---@param b Integer
function dr_text3d(frame, x, y, z, cmd, r, g, b)
end

---comment Draw the ref-posed OBB of a model
---@param pModel RenderModel*
---@param transform Transform&
function DrawOBB(pModel, transform)
end

---comment Returns true if an entity blueprint exists with the given name.
---@param pbgShortname String
function EBP_Exists(pbgShortname)
end

---comment Returns whether the entity blueprint is of specified race
---@param pbgShortname String
---@param race ScarRacePBG
function EBP_IsOfRace(pbgShortname, race)
end

---comment get Entity blueprint pop cost, use CT_Personnel, CT_Vehicle, CT_Medic for captype
---@param ebpUnit PropertyBagGroup
---@param player PlayerID
---@param type CapType
function EBP_PopulationCost(ebpUnit, player, type)
end

---comment Adds an entity to the end of a group if the group doesnt already have it.
---@param group EGroupID
---@param entity EntityID
function EGroup_Add(group, entity)
end

---comment Appends the entities in one group to another group.
---@param group EGroupID
---@param grouptoadd EGroupID
function EGroup_AddEGroup(group, grouptoadd)
end

---comment Removes all entities from a group
---@param egroup EGroupID
function EGroup_Clear(egroup)
end

---comment Returns true if the contents of the two groups are equal. Order of the entities does not matter.
---@param group1 EGroupID
---@param group2 EGroupID
function EGroup_Compare(group1, group2)
end

---comment Returns the total number of spawned and despawned entities in a group.
---@param egroup EGroupID
function EGroup_Count(egroup)
end

---comment Returns the number of despawned entities in a group.
---@param egroup EGroupID
function EGroup_CountDeSpawned(egroup)
end

---comment Returns the number of spawned entities in a group.
---@param egroup EGroupID
function EGroup_CountSpawned(egroup)
end

---comment Returns a new entity group with the given name.
---@param name String
function EGroup_Create(name)
end

---comment Returns a new entity group with an autogenerated unique name, optionally prefixed by the string passed in.
---@param prefix String
function EGroup_CreateUniqueWithPrefix(prefix)
end

---comment Manually destroy a group that you don't need anymore.
---@param egroup EGroupID
function EGroup_Destroy(egroup)
end

---comment Returns true if the entity group with the given name exists
---@param name String
function EGroup_Exists(name)
end

---comment Internal implementation of EGroup_Filter for the purposes of optional arguments. Don't use directly, use EGroup_Filter
---@param group EGroupID
---@param blueprints StackVar
---@param filterType ScarFilterType
---@param optionalSplitGroup StackVar
function EGroup_Filter_Internal(group, blueprints, filterType, optionalSplitGroup)
end

---comment Call a lua function for each item in a group. Function will recieve (groupid, itemindex, itemid) and should return true to break or false to continue.
---@param egroup EGroupID
---@param f StackVarFunction
function EGroup_ForEach(egroup, f)
end

---comment Call a lua function for each item in a group. Function will receive (groupid, itemindex, itemid) and should return a bool.
---@param egroup EGroupID
---@param all Boolean
---@param f StackVarFunction
function EGroup_ForEachAllOrAny(egroup, all, f)
end

---comment Same as EGroup_ForEachAllOrAny except you have a choice to iterate over spawned entities, despawned entities, or both.
---@param egroup EGroupID
---@param all Boolean
---@param f StackVarFunction
---@param spawned Boolean
---@param despawned Boolean
function EGroup_ForEachAllOrAnyEx(egroup, all, f, spawned, despawned)
end

---comment Same as EGroup_ForEach except you have a choice to iterate over spawned entities, despawned entities, or both.
---@param egroup EGroupID
---@param f StackVarFunction
---@param spawned Boolean
---@param despawned Boolean
function EGroup_ForEachEx(egroup, f, spawned, despawned)
end

---comment Find an entity group with a given name.
---@param name String
function EGroup_FromName(name)
end

---comment Returns the despawned entity at the given index.
---@param group EGroupID
---@param int Integer
function EGroup_GetDeSpawnedEntityAt(group, int)
end

---comment Returns the entity at the given index.
---@param group EGroupID
---@param int Integer
function EGroup_GetEntityAt(group, int)
end

---comment Returns the name of a given entity group.
---@param egroup EGroupID
function EGroup_GetName(egroup)
end

---comment Returns the center position of an entity group.
---@param group EGroupID
function EGroup_GetPosition(group)
end

---comment Returns the spawned entity at the given index.
---@param group EGroupID
---@param int Integer
function EGroup_GetSpawnedEntityAt(group, int)
end

---comment Performs a group intersection.
---@param group EGroupID
---@param grouptointersect EGroupID
function EGroup_Intersection(group, grouptointersect)
end

---comment Check to see if an egroup still exists without needing the name.
---@param egroupID Integer
function EGroup_IsValid(egroupID)
end

---comment Removes an entity from a group.
---@param group EGroupID
---@param entity EntityID
function EGroup_Remove(group, entity)
end

---comment Removes any entites that exist in both groups.
---@param group EGroupID
---@param grouptocompare EGroupID
function EGroup_RemoveAllMatching(group, grouptocompare)
end

---comment Removes all the entities from the EGroup that don't have HoldExt on them
---@param egroup EGroupID
function EGroup_RemoveNonHoldEntities(egroup)
end

---comment Sorts the EGroup based on health
---@param egroup EGroupID
---@param ascending Boolean
function EGroup_SortBasedOnHealth(egroup, ascending)
end

---comment Returns true if the active command is of the type we specified
---@param entity EntityID
---@param cmdtype EntityCommandType
function Entity_ActiveCommandIs(entity, cmdtype)
end

---comment Allows the entity to use this ability
---@param entity EntityID
---@param ability ScarAbilityPBG
function Entity_AddAbility(entity, ability)
end

---comment Add a specific amount of a certain resource type to an entity.
---@param entity EntityID
---@param type Integer
---@param amount Real
function Entity_AddResource(entity, type, amount)
end

---comment Advance ability cooldown
---@param entity EntityID
---@param tickAmount Integer
function Entity_AdjustAbilityCooldown(entity, tickAmount)
end

---comment Builds the cycle list based on current tagged entity
function Entity_BuildCycleList()
end

---comment Returns where a construction command would place a given ebp if the command was targeted at a given world position. Ignores checks for fog of war and unexplored areas since scripts often want to spawn entities in places the player cannot see. Returns a table with the following fields: - ScarPosition position: the position the building would be placed at - ScarPosition heading: the heading the building would be placed at. You can create a look-at position by adding position and facing together. - Boolean success: whether or not the construction placement would succeed
---@param ebp ScarEntityPBG
---@param ructingPlayer PlayerID
---@param inputPosition Position
function Entity_CalcConstructionPlacement(ebp, ructingPlayer, inputPosition)
end

---comment pass in a entity and position to resolve the position into a open space position, if the position is not free, position returned will try to be the closest position near the original position
---@param entity EntityID
---@param pos Position
function Entity_CalculatePassableSpawnPosition(entity, pos)
end

---comment Returns whether an entity can attack a target without moving or turning.
---@param attacker EntityID
---@param target Position
function Entity_CanAttackNow(attacker, target)
end

---comment Cancels an item in a production queue.  Index 0 is the currently producing item.
---@param entity EntityID
---@param index Integer
function Entity_CancelProductionQueueItem(entity, index)
end

---comment Check if an entity can currently be damaged.
---@param entity EntityID
function Entity_CanCurrentlyBeDamaged(entity)
end

---comment Check if the entity can load squad or not
---@param entity EntityID
---@param squad SquadID
---@param assumeEmpty Boolean
---@param assumeVisible Boolean
function Entity_CanLoadSquad(entity, squad, assumeEmpty, assumeVisible)
end

---comment Returns true if the distance between a target entity and the source entity is less than it entity's sight distance.  There is no LOS or FOW check.
---@param entity EntityID
---@param target EntityID
function Entity_CanSeeEntity(entity, target)
end

---comment Returns true if the distance between a target squad and the source entity is less than it entity's sight distance.  There is no LOS or FOW check.
---@param entity EntityID
---@param target SquadID
function Entity_CanSeeSquad(entity, target)
end

---comment Check if an entity can target and attack another entity.
---@param entity Entity&
---@param target Entity&
---@param checkFOW Boolean
function Entity_CanTargetEntity(entity, target, checkFOW)
end

---comment Clear the pending death flag manually. Should be used when campaign leaders are revived.
---@param entity EntityID
function Entity_ClearPendingDeathFlag(entity)
end

---comment Clears any previous posture suggestions made to an entity
---@param entity EntityID
function Entity_ClearPostureSuggestion(entity)
end

---comment Clears a TargetHandle value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_ClearStateModelEnumTableTarget(entity, key, tableRowIndex)
end

---comment Clears a TargetHandle value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_ClearStateModelTarget(entity, key)
end

---comment Clears the tagged entity used for debugging
function Entity_ClearTagDebug()
end

---comment Instantly adds an upgrade to a given entity
---@param pEntity EntityID
---@param upgradePBG ScarUpgradePBG
function Entity_CompleteUpgrade(pEntity, upgradePBG)
end

---comment Converts Entity's blueprint to the specified blueprint.
---@param entity Entity&
---@param pbg PropertyBagGroup
function Entity_ConvertBlueprint(entity, pbg)
end

---comment Creates an entity at a given position and assigns it to a given player. This function does not spawn the entity so you will need to call Entity_Spawn to see this entity
---@param ebp ScarEntityPBG
---@param player PlayerID
---@param pos Position
---@param snapToTerrain Boolean
function Entity_Create(ebp, player, pos, snapToTerrain)
end

---comment Creates an entity at a given position facing a target location and assigns it to a given player. This function does not spawn the entity so you will need to call Entity_Spawn to see this entity
---@param ebp ScarEntityPBG
---@param player PlayerID
---@param pos Position
---@param toward Position
---@param snapToTerrain Boolean
function Entity_CreateFacing(ebp, player, pos, toward, snapToTerrain)
end

---comment Cycle through the existing list built for the originally tagged entity
function Entity_CycleDebug()
end

---comment DeSpawn the entity at its current position
---@param entity EntityID
function Entity_DeSpawn(entity)
end

---comment Remove an entity from the world and destroy it.
---@param entity EntityID
function Entity_Destroy(entity)
end

---comment Forces the cancel construction command to be disabled, meaning you can't cancel construction for this
---@param entity EntityID
---@param disable Boolean
function Entity_DisableCancelConstructionCommand(entity, disable)
end

---comment Adjusts the entity's burn level by val
---@param entity EntityID
---@param val Real
---@param ignoreMaxDamagePerSecond Boolean
function Entity_DoBurnDamage(entity, val, ignoreMaxDamagePerSecond)
end

---comment Sets whether an entity pays attention to its surroundings
---@param entity EntityID
---@param attentive Boolean
function Entity_EnableAttention(entity, attentive)
end

---comment Sets whether an entity can produce anything (including upgrades)
---@param entity EntityID
---@param enable Boolean
function Entity_EnableProductionQueue(entity, enable)
end

---comment Sets whether an strategic point is active
---@param entity EntityID
---@param enable Boolean
function Entity_EnableStrategicPoint(entity, enable)
end

---comment Returns total entity extension count.
function Entity_ExtensionCount()
end

---comment Returns true if the entity has the specific extension enabled.
---@param pEntity EntityID
---@param extID ComponentDependencyIndex
function Entity_ExtensionEnabled(pEntity, extID)
end

---comment Returns true if the specified extension on the entity will update every frame.
---@param pEntity EntityID
---@param extID ComponentDependencyIndex
function Entity_ExtensionExecuting(pEntity, extID)
end

---comment Returns a string name of the given extension on the entity.
---@param pEntity EntityID
---@param extID ComponentDependencyIndex
function Entity_ExtensionName(pEntity, extID)
end

---comment Force constructs this entity but only if its a building
---@param e EntityID
function Entity_ForceConstruct(e)
end

---comment Force a building to self construct if it's a building
---@param e EntityID
function Entity_ForceSelfConstruct(e)
end

---comment Get an entity from a mission editor ID.
---@param id Integer
function Entity_FromID(id)
end

---comment Returns the active entity command.
---@param entity EntityID
function Entity_GetActiveCommand(entity)
end

---comment Find the entity target. If found, the target squad is added to the sgroup. Entity targets like buildings are ignored.
---@param entity EntityID
---@param sgroup SGroupID
function Entity_GetAttackTarget(entity, sgroup)
end

---comment Returns the entity targeted by the given entity.
---@param entity EntityID
function Entity_GetAttackTargetEntity(entity)
end

---comment Returns the squad targeted by the given entity.
---@param entity EntityID
function Entity_GetAttackTargetSquad(entity)
end

---comment Returns the entity's blueprint
---@param entity EntityID
function Entity_GetBlueprint(entity)
end

---comment Returns the construction progress (with range [0.0, 1.0] for a given entity.  Returns 0.0 if the entity is not a building.
---@param pEntity EntityID
function Entity_GetBuildingProgress(pEntity)
end

---comment Get cover safety value from the where the entity is standing. The safety value is number from -.5 to .5.
---@param entity EntityID
function Entity_GetCoverValue(entity)
end

---comment Get the currently tagged debug entity
function Entity_GetDebugEntity()
end

---comment Returns number of entities that will be placed if this ebp is built in a fence.
---@param ebp PropertyBagGroup
---@param startPos Position
---@param endPos Position
function Entity_GetFenceEntityCount(ebp, startPos, endPos)
end

---comment Returns the number of filled slots for squads in a hold in the HoldExtInfo
---@param entity EntityID
function Entity_GetFilledHoldSquadSlots(entity)
end

---comment Returns the heading of the entity.  The heading is currently a lua table with three entries (x, y, z)
---@param entity EntityID
function Entity_GetHeading(entity)
end

---comment Returns the health of an entity.
---@param entity EntityID
function Entity_GetHealth(entity)
end

---comment Returns the max health of an entity.
---@param entity EntityID
function Entity_GetHealthMax(entity)
end

---comment Returns the percentage health, taking into account destructible buildings
---@param entity EntityID
function Entity_GetHealthPercentage(entity)
end

---comment Returns the entities unique id in the world
---@param entity EntityID
function Entity_GetID(entity)
end

---comment Returns the invulnerable point in terms of percentage
---@param entity EntityID
function Entity_GetInvulnerableMinCap(entity)
end

---comment Find the last squad attacker on this entity. If found, the squad is added to the sgroup
---@param entity EntityID
---@param sgroup SGroupID
function Entity_GetLastAttacker(entity, sgroup)
end

---comment Find the squad attackers on this entity from the last seconds specified. The sgroup is cleared, then any squads found are added to the sgroup. Building attackers are ignored.
---@param entity EntityID
---@param group SGroupID
---@param timeSeconds Real
function Entity_GetLastAttackers(entity, group, timeSeconds)
end

---comment Find the entity attackers on this entity from the last seconds specified. The sgroup is cleared, then any squads found are added to the sgroup. Building attackers are ignored.
---@param entity EntityID
---@param group EGroupID
---@param timeSeconds Real
function Entity_GetLastEntityAttackers(entity, group, timeSeconds)
end

---comment Gets the maximum capture crew size from a recrewable entity
---@param entity EntityID
function Entity_GetMaxCaptureCrewSize(entity)
end

---comment Returns the number of specified slots for squads in a hold in the HoldExtInfo
---@param entity EntityID
function Entity_GetMaxHoldSquadSlots(entity)
end

---comment Returns the number of blocks the entity will perform per number of attacks
---@param entity Entity
function Entity_GetMeleeBlocksPerAttacks(entity)
end

---comment Returns the number of entities connected to an entity via the interaction system.
---@param entity EntityID
---@param interactionType String
function Entity_GetNumInteractors(entity, interactionType)
end

---comment Get the entity health percentage where it can be set on fire
---@param entity EntityID
function Entity_GetOnFireHealthPercentThreshold(entity)
end

---comment Returns the Player owner of the given entity. Entity MUST NOT be owned by the world.
---@param entity EntityID
function Entity_GetPlayerOwner(entity)
end

---comment Returns the position of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity EntityID
function Entity_GetPosition(entity)
end

---comment Returns the blueprint for a production queue item with index.
---@param entity EntityID
---@param index Integer
function Entity_GetProductionQueueItem(entity, index)
end

---comment Returns the production type (PITEM_Upgrade, PITEM_Spawn, PITEM_SquadUpgrade, PITEM_SquadReinforce, PITEM_PlayerUpgrade) for a production queue item with index.
---@param entity EntityID
---@param index Integer
function Entity_GetProductionQueueItemType(entity, index)
end

---comment Returns the number of items in the entities production queue.
---@param entity EntityID
function Entity_GetProductionQueueSize(entity)
end

---comment Returns the number of blocks the entity will perform per number of attacks
---@param entity Entity
function Entity_GetProjectileBlocksPerAttacks(entity)
end

---comment Returns the number of blocks the entity will perform per number of attacks
---@param entity Entity
function Entity_GetRangedBlocksPerAttacks(entity)
end

---comment Get remaining resource amount of the given entity.
---@param entity EntityID
function Entity_GetRemainingResourceDepositAmount(entity)
end

---comment Returns the amount of a certain resource that an entity has.
---@param entity EntityID
---@param resourceType Integer
function Entity_GetResource(entity, resourceType)
end

---comment Returns the inner sight height for this entity
---@param entity EntityID
function Entity_GetSightInnerHeight(entity)
end

---comment Returns the inner sight radius for this entity
---@param entity EntityID
function Entity_GetSightInnerRadius(entity)
end

---comment Returns the outer sight height for this entity
---@param entity EntityID
function Entity_GetSightOuterHeight(entity)
end

---comment Returns the outer sight radius for this entity
---@param entity EntityID
function Entity_GetSightOuterRadius(entity)
end

---comment Returns the Squad for the passed Entity. (May be nullptr)
---@param pEntity EntityID
function Entity_GetSquad(pEntity)
end

---comment Adds squads held by an entity to an SGroup
---@param pEntity EntityID
---@param sgroup SGroupID
function Entity_GetSquadsHeld(pEntity, sgroup)
end

---comment Returns a boolean value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelBool(entity, key)
end

---comment Returns an Entity value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelEntityTarget(entity, key)
end

---comment Returns a boolean value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTableBool(entity, key, tableRowIndex)
end

---comment Returns an Entity value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTableEntityTarget(entity, key, tableRowIndex)
end

---comment Returns a float value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTableFloat(entity, key, tableRowIndex)
end

---comment Returns an integer value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTableInt(entity, key, tableRowIndex)
end

---comment Returns a Player value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTablePlayerTarget(entity, key, tableRowIndex)
end

---comment Returns a Squad value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTableSquadTarget(entity, key, tableRowIndex)
end

---comment Returns a Vector3f value from the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
function Entity_GetStateModelEnumTableVector3f(entity, key, tableRowIndex)
end

---comment Returns a float value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelFloat(entity, key)
end

---comment Returns an integer value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelInt(entity, key)
end

---comment Returns a Player value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelPlayerTarget(entity, key)
end

---comment Returns a Squad value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelSquadTarget(entity, key)
end

---comment Returns a Vector3f value from the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
function Entity_GetStateModelVector3f(entity, key)
end

---comment Returns an Entity value from the entity's StateTree EntityTargetingExt with the given type and key.
---@param entity Entity&
---@param type String
---@param key String
function Entity_GetStateTreeTargeting_EntityTarget(entity, type, key)
end

---comment Returns an Player value from the entity's StateTree EntityTargetingExt with the given type and key.
---@param entity Entity&
---@param type String
---@param key String
function Entity_GetStateTreeTargeting_PlayerTarget(entity, type, key)
end

---comment Returns an Squad value from the entity's StateTree EntityTargetingExt with the given type and key.
---@param entity Entity&
---@param type String
---@param key String
function Entity_GetStateTreeTargeting_SquadTarget(entity, type, key)
end

---comment Returns an Vector3f value from the entity's StateTree EntityTargetingExt with the given type and key.
---@param entity Entity&
---@param type String
---@param key String
function Entity_GetStateTreeTargeting_Vector3f(entity, type, key)
end

---comment Returns the number of entities or squads currently securing this strategic point
---@param entity EntityID
function Entity_GetStrategicPointSecureCount(entity)
end

---comment Get the entity's targeting type - auto, manual, or none
---@param entity Entity&
function Entity_GetTargetingType(entity)
end

---comment Returns a weapon hardpoint  ( 0 indexed )
---@param entity EntityID
---@param hardPointIndex Integer
function Entity_GetWeaponBlueprint(entity, hardPointIndex)
end

---comment Returns how many hardpoints an entity has
---@param entity EntityID
function Entity_GetWeaponHardpointCount(entity)
end

---comment Call HandleAssert on an EntityAssertHandler for each entity
function Entity_HandleAllAsserts()
end

---comment Tests to see if an entity has an ability
---@param entity EntityID
---@param ability ScarAbilityPBG
function Entity_HasAbility(entity, ability)
end

---comment Checks whether an entity is of any of the Blueprints or EntityTypes specified.
---@param entity EntityID
---@param blueprints EBP/EntityType/Table
function Entity_HasBlueprint(entity, blueprints)
end

---comment Returns true if an entity has a production queue.
---@param entity EntityID
function Entity_HasProductionQueue(entity)
end

---comment Return true if the entity has purchased the specified upgrade.
---@param pEntity EntityID
---@param upgradePBG ScarUpgradePBG
function Entity_HasUpgrade(pEntity, upgradePBG)
end

---comment Strategic point will be captured instantly by the team of the supplied player
---@param entity EntityID
---@param player PlayerID
function Entity_InstantCaptureStrategicPoint(entity, player)
end

---comment instantly converts a building into a fieldsupport
---@param building EntityID
---@param owner PlayerID
function Entity_InstantConvertBuildingToFieldSupport(building, owner)
end

---comment Reverts an occupied building
---@param entity EntityID
function Entity_InstantRevertOccupiedBuilding(entity)
end

---comment True if the ability is active
---@param entity EntityID
---@param pbg ScarAbilityPBG
function Entity_IsAbilityActive(entity, pbg)
end

---comment Returns true if entity is alive and spawned
---@param pEntity EntityID
function Entity_IsActive(pEntity)
end

---comment Returns true if entity is still alive
---@param pEntity EntityID
function Entity_IsAlive(pEntity)
end

---comment Returns true if the entity is attacking within the time
---@param entity EntityID
---@param time Real
function Entity_IsAttacking(entity, time)
end

---comment Returns true if the given entity is a building
---@param e EntityID
function Entity_IsBuilding(e)
end

---comment Returns true if the entity can be set on fire
---@param e EntityID
function Entity_IsBurnable(e)
end

---comment Returns true if the given entity is burning (buildings on fire or non-buildings with burn_exts)
---@param e EntityID
function Entity_IsBurning(e)
end

---comment Returns whether the entity is camouflaged.
---@param entity EntityID
function Entity_IsCamouflaged(entity)
end

---comment Returns true if the entity is a capturable building
---@param entity EntityID
function Entity_IsCapturableBuilding(entity)
end

---comment Returns true if entity is a casualty else false
---@param entity EntityID
function Entity_IsCasualty(entity)
end

---comment Returns whether this entity is cuttable
---@param entity EntityID
function Entity_IsCuttable(entity)
end

---comment Returns whether this entity's demolition charges are ready to be detonated
---@param entity EntityID
function Entity_IsDemolitionReady(entity)
end

---comment True if entity is currently performing the given ability
---@param entity EntityID
---@param pbg ScarAbilityPBG
function Entity_IsDoingAbility(entity, pbg)
end

---comment Returns true if the given blueprint is a building
---@param ebp ScarEntityPBG
function Entity_IsEBPBuilding(ebp)
end

---comment Returns true if the given blueprint is objcover
---@param ebp ScarEntityPBG
function Entity_IsEBPObjCover(ebp)
end

---comment Returns true if the given blueprint is of the given type. Types are defined in type_ext/unit_type_list
---@param ebp ScarEntityPBG
---@param type String
function Entity_IsEBPOfType(ebp, type)
end

---comment Returns whether a hardpoint is active ( 0 indexed )
---@param entity EntityID
---@param hardPointIndex Integer
function Entity_IsHardpointActive(entity, hardPointIndex)
end

---comment Check if the entity has a hold on anything
---@param entity EntityID
function Entity_IsHoldingAny(entity)
end

---comment Returns whether or not the entity is in the background.
---@param pEntity EntityID
function Entity_IsInBackground(pEntity)
end

---comment Returns whether an entity is an infantry unit
---@param pEntity EntityID
function Entity_IsInfantry(pEntity)
end

---comment Checks if an entity is in a hold
---@param entity EntityID
function Entity_IsInHold(entity)
end

---comment Returns whether this entity is invincible.  An invincible entity can never take damage and can never die.
---@param entity EntityID
function Entity_IsInvincible(entity)
end

---comment get if an entity is invulnerable
---@param entity EntityID
function Entity_IsInvulnerable(entity)
end

---comment Returns whether an entity is moving.
---@param pEntity EntityID
function Entity_IsMoving(pEntity)
end

---comment Determines if this entity is of the given type. Types are defined in type_ext/unit_type_list
---@param entity EntityID
---@param type String
function Entity_IsOfType(entity, type)
end

---comment Returns if an Entity is currently on walkable wall.
---@param entity EntityID
function Entity_IsOnWalkableWall(entity)
end

---comment Returns true if the entity is part of a squad
---@param pEntity EntityID
function Entity_IsPartOfSquad(pEntity)
end

---comment Returns whether an entity is a plane (has a flight extension)
---@param pEntity EntityID
function Entity_IsPlane(pEntity)
end

---comment Returns whether an entity is a planned structure.
---@param entity EntityID
function Entity_IsPlannedStructure(entity)
end

---comment Returns whether a particular squad blueprint is being produced by a given entity
---@param entity EntityID
---@param pbg ScarSquadPBG
function Entity_IsProducingSquad(entity, pbg)
end

---comment Returns true if an entity has a production queue and if the queue is available
---@param entity EntityID
function Entity_IsProductionQueueAvailable(entity)
end

---comment Returns true if the entity is a resource generator and has resources remaining
---@param entity EntityID
function Entity_IsResourceGenerator(entity)
end

---comment Return true if the entity is a slot item
---@param entity EntityID
function Entity_IsSlotItem(entity)
end

---comment if entity is spawned return true
---@param entity EntityID
function Entity_IsSpawned(entity)
end

---comment Returns true if the entity is a starting position
---@param entity EntityID
function Entity_IsStartingPosition(entity)
end

---comment Returns true if the entity is a strategic point.
---@param pEntity EntityID
function Entity_IsStrategicPoint(pEntity)
end

---comment Returns true if strategic point is captured by the team of the player provided.
---@param entity EntityID
---@param player PlayerID
function Entity_IsStrategicPointCapturedBy(entity, player)
end

---comment Return true if the entity is a team weapon
---@param entity EntityID
function Entity_IsSyncWeapon(entity)
end

---comment Returns true if the entity is under attack.
---@param entity EntityID
---@param time Real
function Entity_IsUnderAttack(entity, time)
end

---comment Returns true if the entity is under attack by a certain player
---@param entity EntityID
---@param pAttackerOwner PlayerID
---@param time Real
function Entity_IsUnderAttackByPlayer(entity, pAttackerOwner, time)
end

---comment Returns true if the entity was under attack from a certain direction (8 offset types, see ScarUtil.scar)
---@param entity EntityID
---@param offset Integer
---@param timeSeconds Real
function Entity_IsUnderAttackFromDirection(entity, offset, timeSeconds)
end

---comment Returns true if the entity is under construction.
---@param entity EntityID
function Entity_IsUnderConstruction(entity)
end

---comment Returns true if the entity is being repaired.
---@param entity EntityID
function Entity_IsUnderRepair(entity)
end

---comment Check if an entity with the given ID can be found in the world
---@param id Integer
function Entity_IsValid(id)
end

---comment Returns whether an entity can be vaulted
---@param pEntity EntityID
function Entity_IsVaultable(pEntity)
end

---comment Returns whether an entity is a vehicle
---@param pEntity EntityID
function Entity_IsVehicle(pEntity)
end

---comment Returns true if entityID is a victory point
---@param pEntity EntityID
function Entity_IsVictoryPoint(pEntity)
end

---comment Kill the entity.  Sets health to 0, and triggers death effects.
---@param entity EntityID
function Entity_Kill(entity)
end

---comment get entity pop cost, use CT_Personnel, CT_Vehicle, CT_Medic for captype
---@param entity EntityID
---@param type CapType
function Entity_Population(entity, type)
end

---comment Precache entity resources and listen for event GE_EntityPrecached that it is done
---@param ebp ScarEntityPBG
---@param skinItemDefinitionID Integer
---@param player PlayerID
---@param resourceContainerCacheName String
---@param source String
---@param id String
function Entity_Precache(ebp, skinItemDefinitionID, player, resourceContainerCacheName, source, id)
end

---comment Pushes the provided pbg onto the entity's production queue and returns if it was successfully added. Also need to specify a itemType for the pbg (PITEM_Upgrade, PITEM_Spawn, PITEM_SquadUpgrade, PITEM_SquadReinforce,  PITEM_PlayerUpgrade)
---@param entity EntityID
---@param itemType ProductionItemType
---@param pbg PropertyBagGroup
function Entity_QueueProductionItemByPBG(entity, itemType, pbg)
end

---comment trigger the RagDoll skeleton driving.
---@param entity EntityID
function Entity_RagDoll(entity)
end

---comment Removes an ability that was previously added by Entity_AddAbility. You cannot remove static abilities (from AE: ability_ext)
---@param entity EntityID
---@param ability ScarAbilityPBG
function Entity_RemoveAbility(entity, ability)
end

---comment Removes all booby-traps on this entity
---@param pEntityTarget EntityID
function Entity_RemoveBoobyTraps(pEntityTarget)
end

---comment Removes all demolition charges on an entity
---@param entity EntityID
function Entity_RemoveDemolitions(entity)
end

---comment Removes an upgrade from an entity
---@param entity EntityID
---@param upgrade ScarUpgradePBG
function Entity_RemoveUpgrade(entity, upgrade)
end

---comment Returns true if you should call Misc_UpdateSlottedSplinesContainingEGroupAfterBlueprintConversion with an egroup containing this entity after blueprint converting it. Make sure to batch together all your entities when using that function to reduce duplicated work.
---@param entity EntityID
function Entity_RequiresSlottedSplineUpdateAfterBlueprintConversion(entity)
end

---comment Reset melee block rate to AE tuned values
---@param entity Entity&
function Entity_ResetMeleeBlocksPerAttacks(entity)
end

---comment Reset Projectile block rate to AE tuned values
---@param entity Entity&
function Entity_ResetProjectileBlocksPerAttacks(entity)
end

---comment Reset ranged block rate to AE tuned values
---@param entity Entity&
function Entity_ResetRangedBlocksPerAttacks(entity)
end

---comment Restore the targeting type to the default found in the ebp
---@param entity Entity&
function Entity_RestoreTargetingType(entity)
end

---comment Trigger animation action for an entity. Please only use this for simple animations
---@param pEntity EntityID
---@param actionName String
function Entity_SetAnimatorAction(pEntity, actionName)
end

---comment Set animation action parameter for an entity. Please only use this for simple animations
---@param pEntity EntityID
---@param actionParameterName String
---@param actionParameterValue String
function Entity_SetAnimatorActionParameter(pEntity, actionParameterName, actionParameterValue)
end

---comment Set animation event for an entity. Please only use this for simple animations
---@param pEntity EntityID
---@param eventName String
function Entity_SetAnimatorEvent(pEntity, eventName)
end

---comment Set animation state of a state machine for an entity. Please only use this for simple animations
---@param pEntity EntityID
---@param stateMachineName String
---@param stateName String
function Entity_SetAnimatorState(pEntity, stateMachineName, stateName)
end

---comment Set animation variable value for an entity. Please only use this for simple animations
---@param pEntity EntityID
---@param variableName String
---@param value Real
function Entity_SetAnimatorVariable(pEntity, variableName, value)
end

---comment Sets the entity to be in the background or foreground. By default, all entities are in the foreground
---@param pEntity EntityID
---@param isInBackground Boolean
function Entity_SetBackground(pEntity, isInBackground)
end

---comment Overrides crushable behavior for an entity
---@param entity EntityID
---@param crushable Boolean
function Entity_SetCrushable(entity, crushable)
end

---comment Changes the crush mode of a given entity.  Entity must have a crush extension.
---@param entity EntityID
---@param mode CrushMode
function Entity_SetCrushMode(entity, mode)
end

---comment Fully wires this entity for demolitions, if it's set up to be demolishable. 'player' is the one that owns the demolitions and can detonate them.
---@param player PlayerID
---@param entity EntityID
---@param numcharges Integer
function Entity_SetDemolitions(player, entity, numcharges)
end

---comment enable or disable the casualtext
---@param enable Boolean
---@param entity EntityID
function Entity_SetEnableCasualty(enable, entity)
end

---comment Enables/disables an extension on the entity.
---@param entity EntityID
---@param extID String
---@param enabled Boolean
function Entity_SetExtEnabled(entity, extID, enabled)
end

---comment Sets the heading of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity EntityID
---@param pos Position
---@param bInterpolate Boolean
function Entity_SetHeading(entity, pos, bInterpolate)
end

---comment Sets the heading of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity EntityID
---@param pos Position
---@param bSnapToGround Boolean
---@param bInterpolate Boolean
function Entity_SetHeadingGroundSnapOptional(entity, pos, bSnapToGround, bInterpolate)
end

---comment Set the health of an entity.  healthPercent must be in the range [0.0, 1.0].
---@param entity EntityID
---@param healthPercent Real
function Entity_SetHealth(entity, healthPercent)
end

---comment Make an entity invulnerable to physical damage when health is below the minimum health percentage
---@param entity EntityID
---@param minHealthPercentage Real
---@param resetTime Real
function Entity_SetInvulnerableMinCap(entity, minHealthPercentage, resetTime)
end

---comment Sets the lockCurrentTierVisuals flag in the TierExt so when an entity gets BP converted it doesn't update the visual assets. Must be called before BP conversion
---@param entity EntityID
---@param lockVisuals Boolean
function Entity_SetLockCurrentTierVisuals(entity, lockVisuals)
end

---comment Set the number of blocks the entity will perform per number of attacks
---@param entity Entity
---@param blocks Integer
---@param attacks Integer
function Entity_SetMeleeBlocksPerAttacks(entity, blocks, attacks)
end

---comment Sets an object on fire (also works on buildings)
---@param entity EntityID
function Entity_SetOnFire(entity)
end

---comment Changes the owner of the given squad.
---@param entity EntityID
---@param owner PlayerID
function Entity_SetPlayerOwner(entity, owner)
end

---comment Sets the position of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity EntityID
---@param pos Position
function Entity_SetPosition(entity, pos)
end

---comment If the entity is at the same cell as desiredPosition, try to set the entity position to it. If the cell is next to impass, set it to the center of the cell.
---@param entity EntityID
---@param desiredPosition Position
function Entity_SetPositionWithinCell(entity, desiredPosition)
end

---comment Set the number of blocks the entity will perform per number of attacks
---@param entity Entity
---@param blocks Integer
---@param attacks Integer
function Entity_SetProjectileBlocksPerAttacks(entity, blocks, attacks)
end

---comment Sets whether or not a projectile can explode.
---@param projectile EntityID
---@param canExplode Boolean
function Entity_SetProjectileCanExplode(projectile, canExplode)
end

---comment Set the number of blocks the entity will perform per number of attacks
---@param entity Entity
---@param blocks Integer
---@param attacks Integer
function Entity_SetRangedBlocksPerAttacks(entity, blocks, attacks)
end

---comment Sets an entity to be recrewable or not when it becomes abandoned
---@param entity EntityID
---@param capturable Boolean
function Entity_SetRecrewable(entity, capturable)
end

---comment Set remaining resource amount of the given entity.
---@param entity EntityID
---@param amount Real
function Entity_SetRemainingResourceDepositAmount(entity, amount)
end

---comment Sets a specific amount of a certain resource type for an entity.
---@param entity EntityID
---@param type Integer
---@param amount Real
function Entity_SetResource(entity, type, amount)
end

---comment Enables shared team production on a building (teammates can build using THEIR resources)
---@param entity EntityID
---@param shared Boolean
function Entity_SetSharedProductionQueue(entity, shared)
end

---comment Show or hide the entity's silhouette when behind other objects
---@param entity EntityID
---@param show Boolean
function Entity_SetShowSilhouette(entity, show)
end

---comment Sets a boolean value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value Boolean
function Entity_SetStateModelBool(entity, key, value)
end

---comment Sets an Entity TargetHandle value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value EntityID
function Entity_SetStateModelEntityTarget(entity, key, value)
end

---comment Sets a boolean value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value Boolean
function Entity_SetStateModelEnumTableBool(entity, key, tableRowIndex, value)
end

---comment Sets an Entity TargetHandle value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value EntityID
function Entity_SetStateModelEnumTableEntityTarget(entity, key, tableRowIndex, value)
end

---comment Sets a float value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value Real
function Entity_SetStateModelEnumTableFloat(entity, key, tableRowIndex, value)
end

---comment Sets an integer value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value Integer
function Entity_SetStateModelEnumTableInt(entity, key, tableRowIndex, value)
end

---comment Sets a Player TargetHandle value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value PlayerID
function Entity_SetStateModelEnumTablePlayerTarget(entity, key, tableRowIndex, value)
end

---comment Sets a Squad TargetHandle value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value SquadID
function Entity_SetStateModelEnumTableSquadTarget(entity, key, tableRowIndex, value)
end

---comment Sets a Vector3f value in the entity's state model corresponding to the given key and table row index (0 based).
---@param entity EntityID
---@param key String
---@param tableRowIndex Integer
---@param value Position
function Entity_SetStateModelEnumTableVector3f(entity, key, tableRowIndex, value)
end

---comment Sets a float value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value Real
function Entity_SetStateModelFloat(entity, key, value)
end

---comment Sets an integer value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value Integer
function Entity_SetStateModelInt(entity, key, value)
end

---comment Sets a Player TargetHandle value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value PlayerID
function Entity_SetStateModelPlayerTarget(entity, key, value)
end

---comment Sets a Squad TargetHandle value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value SquadID
function Entity_SetStateModelSquadTarget(entity, key, value)
end

---comment Sets a Vector3f value in the entity's state model corresponding to the given key.
---@param entity EntityID
---@param key String
---@param value Position
function Entity_SetStateModelVector3f(entity, key, value)
end

---comment Sets a flag that tells a building to keep burning while invulnerable (for atmosphere).
---@param entity EntityID
---@param shouldStayBurning Boolean
function Entity_SetStayBurningWhileInvulnerable(entity, shouldStayBurning)
end

---comment Sets a strategic point to neutral (not owned by any team)
---@param entity EntityID
function Entity_SetStrategicPointNeutral(entity)
end

---comment Sets whether a strategic point's reticule is visible
---@param entity EntityID
---@param visible Boolean
function Entity_SetStrategicPointReticuleVisible(entity, visible)
end

---comment Set the allowable methods of targeting this entity
---@param entity Entity&
---@param type TargetingType
function Entity_SetTargetingType(entity, type)
end

---comment Makes an entity neutral
---@param entity EntityID
function Entity_SetWorldOwned(entity)
end

---comment Shows/hides the entity in the simulation
---@param entity EntityID
---@param hide Boolean
function Entity_SimHide(entity, hide)
end

---comment Snaps the entity to the grid and ground.
---@param entity EntityID
---@param interpolate Boolean
function Entity_SnapToGridAndGround(entity, interpolate)
end

---comment Spawn the entity at its current position
---@param entity EntityID
function Entity_Spawn(entity)
end

---comment Spawn the entity at its current position without pathfinding and collision
---@param entity EntityID
function Entity_SpawnDoNotAddPathfindingAndCollision(entity)
end

---comment Spawn the entity at a given position
---@param entity EntityID
---@param pos Position
---@param toward Position
---@param spawnType String
function Entity_SpawnToward(entity, pos, toward, spawnType)
end

---comment Abruptly stops an active ability
---@param entity EntityID
---@param ability ScarAbilityPBG
---@param bIsEarlyExit Boolean
function Entity_StopAbility(entity, ability, bIsEarlyExit)
end

---comment Puts out the fire on an object (also works on buildings)
---@param entity EntityID
function Entity_StopFire(entity)
end

---comment Suggests a posture to an entity, lasting the passed duration
---@param entity EntityID
---@param posture Integer
---@param duration Real
function Entity_SuggestPosture(entity, posture, duration)
end

---comment Returns whether this entity is set up to have demolitions placed on it
---@param entity EntityID
function Entity_SupportsDemolition(entity)
end

---comment Tags the entity to be used for debugging
---@param entity EntityID
function Entity_TagDebug(entity)
end

---comment Hides or shows an entity visually.
---@param pEntity EntityID
---@param bHide Boolean
function Entity_VisHide(pEntity, bHide)
end

---comment Converts any enum value to a number
---@param var StackVar
function Enum_ToNumber(var)
end

---comment Converts any enum value to a string
---@param var StackVar
function Enum_ToString(var)
end

---comment Creates a Callback Event that triggers when ALL of the specified events are triggered.
---@param callback Function
---@param data Table
---@param events Table
---@param delay Real
function Event_CreateAND(callback, data, events, delay)
end

---comment Callback given callback function with data, when the certain objects die.
---@param callback Function
---@param group EGroupID
---@param selection ALL_UNITS/ANY_MEMBER/ANY_SQUAD
---@param repeat Boolean
---@param requireAllEntitiesDead Boolean
---@param data Table
function Event_Death(callback, group, selection, repeat, requireAllEntitiesDead, data)
end

---comment Pauses for a given amount of time. This function MUST be called from a CTRL object in NISlet events only!
---@param seconds Real
function Event_Delay(seconds)
end

---comment Callback given callback function with data, when any squad in the encounter can see any squad owned by the player
---@param callback Function
---@param data Table
---@param encounter SGroupID
---@param player PlayerID
---@param delay Real
function Event_EncounterCanSeePlayerSquads(callback, data, encounter, player, delay)
end

---comment Callback given callback function with data when target enters range
---@param callback Function
---@param data Table
---@param target ConstTargetHandle
---@param arequireAll Boolean
---@param location Marker
---@param range REAL
---@param repeat Boolean
---@param triggerOnEnter Boolean
function Event_EnterProximity(callback, data, target, arequireAll, location, range, repeat, triggerOnEnter)
end

---comment Callback given callback function with data when target exits range
---@param callback Function
---@param data Table
---@param target ConstTargetHandle
---@param arequireAll Boolean
---@param location Marker
---@param range REAL
---@param repeat Boolean
---@param triggerOnEnter Boolean
function Event_ExitProximity(callback, data, target, arequireAll, location, range, repeat, triggerOnEnter)
end

---comment Callback given callback function with data, when the amount of objects matches the requested conditions - Note: Does not count team weapons
---@param callback Function
---@param data Table
---@param group EGroupID | SGroup
---@param amount Integer
---@param repeat Boolean
function Event_GroupCount(callback, data, group, amount, repeat)
end

---comment Callback given callback function with data, when group is dead(empty).
---@param callback Function
---@param data Table
---@param group EGroupID | SGroup
---@param delay Real
function Event_GroupIsDeadOrRetreating(callback, data, group, delay)
end

---comment Callback given callback function with data, when the amount of entities left in a group drops below amount.
---@param callback Function
---@param data Table
---@param group EGroupID | SGroup
---@param amount Integer
---@param delay Real
function Event_GroupLeftAlive(callback, data, group, amount, delay)
end

---comment Returns true if the event is being skipped.
function Event_IsBeingSkipped()
end

---comment Callback given callback function with data, when group is doing an attack or is under attack in the last attackTime seconds.
---@param callback Function
---@param data Table
---@param attackTime Real
---@param delay Real
function Event_IsEngaged(callback, data, attackTime, delay)
end

---comment Callback given callback function with data, when group is out of combat  in the last attackTime seconds.
---@param callback Function
---@param data Table
---@param group EGroupID | SGroup
---@param attackTime Real
---@param delay Real
function Event_IsOutOfCombat(callback, data, group, attackTime, delay)
end

---comment Callback when a target element is selected.
---@param callback Function
---@param data Table
function Event_IsSelected(callback, data)
end

---comment Callback given callback function with data, when sgroup or egroup are under attack in the last attackTime seconds.
---@param callback Function
---@param data Table
---@param SGroup SGroupID
---@param EGroup EGroupID
---@param attackTime Real
---@param player PlayerID
---@param delay Real
function Event_IsUnderAttack(callback, data, SGroup, EGroup, attackTime, player, delay)
end

---comment Callback given callback function with data, when the given player can see the element.
---@param callback Function
---@param data Table
---@param team PlayerID
---@param element SGroupID
function Event_PlayerCanSeeElement(callback, data, team, element)
end

---comment Callback given callback function with data when target enters location.
---@param callback Function
---@param data Table
---@param target ConstTargetHandle
---@param location Marker
---@param range REAL
---@param delay Real
function Event_Proximity(callback, data, target, location, range, delay)
end

---comment Starts a save event the same way as Event_Start, but automatically sets highest priority and promotes the request
---@param type SaveTriggerType
function Event_Save(type)
end

---comment Starts a save event the same way as Event_Save, but with a filename specified.
---@param type SaveTriggerType
---@param fileName String
function Event_SaveWithName(type, fileName)
end

---comment Callback given callback function with data, when the amount of members left in a squad matches the requested conditions
---@param callback Function
---@param data Table
---@param group SGroupID
---@param amount Integer
---@param repeat Boolean
function Event_SGroupCountMember(callback, data, group, amount, repeat)
end

---comment Completes execution of the event immediately (all calls to Wait() are ignored)
function Event_Skip()
end

---comment Starts event.  Event will not start until all rules are evaluated for this frame!
---@param eventFunction LuaFunction
---@param int Integer
function Event_Start(eventFunction, int)
end

---comment Starts an event the same way as Event_Start, but calls a user defined function when the event is over
---@param eventFunction LuaFunction
---@param int Integer
---@param onComplete LuaFunction
function Event_StartEx(eventFunction, int, onComplete)
end

---comment Callback given callback function with data when target remains in range (called every interval seconds)
---@param callback Function
---@param data Table
---@param target ConstTargetHandle
---@param arequireAll Boolean
---@param location Marker
---@param range REAL
---@param repeat Boolean
---@param triggerOnEnter Boolean
function Event_WhileInProximity(callback, data, target, arequireAll, location, range, repeat, triggerOnEnter)
end

---comment Throws an error to lua and print out the error message
---@param state lua_State*
function fatal(state)
end

---comment Throws an error to lua and print out the error message
---@param state lua_State*
function fatal(state)
end

---comment Calculate the dimensions and centre offset of a formation for given squads.  Returns as a ScarPosition {x = Width, y = Height, z = centre offset along forward (Height) direction}.  Returns a zero vector if error.
---@param sgroup SGroupID
function Formation_GetDimensionsAndOffset(sgroup)
end

---comment Calculate formation positions and set the squads' positions to the formation positions
---@param sgroup SGroupID
---@param position Position
---@param direction Position
function Formation_PlaceSquadsInFormation(sgroup, position, direction)
end

---comment Calculate formation positions and set the squads' positions to the formation positions, using the formation spot generator provided
---@param sgroup SGroupID
---@param position Position
---@param direction Position
---@param formationPBGNameShort String
function Formation_PlaceSquadsInFormationByFormationName(sgroup, position, direction, formationPBGNameShort)
end

---comment Toggle blockers info
function FOW_Blockers()
end

---comment Explores entire map for all players. (Careful where this is used. For example, if used before the first tick, a statetree may change an entity's visual on the first tick, so the ghost's visual will not reflect the entity's.)
function FOW_ExploreAll()
end

---comment Reveal FOW except blockers for all players. Does not create ghosts and ghosts will not be present if undone.
function FOW_ForceRevealAllUnblockedAreas()
end

---comment Explores entire map for one player. (Careful where this is used. For example, if used before the first tick, a statetree may change an entity's visual on the first tick, so the ghost's visual will not reflect the entity's.)
---@param player PlayerID
function FOW_PlayerExploreAll(player)
end

---comment Reveal FOW for specified player
---@param player PlayerID
function FOW_PlayerRevealAll(player)
end

---comment Reveals a circular area for the given player over a given duration.
---@param player PlayerID
---@param pos Position
---@param radius Real
---@param durationSecs Real
function FOW_PlayerRevealArea(player, pos, radius, durationSecs)
end

---comment Reveals a SGroup in the Fog of War for a player over a given duration.
---@param player PlayerID
---@param group SGroupID
---@param radius Real
---@param durationSecs Real
function FOW_PlayerRevealSGroup(player, group, radius, durationSecs)
end

---comment Unexplores entire map for one player.
---@param player PlayerID
function FOW_PlayerUnExploreAll(player)
end

---comment Use to undo a FOW_RevealAll for specified player
---@param player PlayerID
function FOW_PlayerUnRevealAll(player)
end

---comment UnReveals a circular area that was previously revealed for a given player.
---@param player PlayerID
---@param pos Position
function FOW_PlayerUnRevealArea(player, pos)
end

---comment UnReveal a SGroup previously revealed to a Player
---@param player PlayerID
---@param group SGroupID
function FOW_PlayerUnRevealSGroup(player, group)
end

---comment Reveal FOW for all players
function FOW_RevealAll()
end

---comment Reveals a circular area for all alive players over a given duration.
---@param pos Position
---@param radius Real
---@param durationSecs Real
function FOW_RevealArea(pos, radius, durationSecs)
end

---comment Reveals an EGroup in the Fog of War for all alive players over a given duration.
---@param group EGroupID
---@param radius Real
---@param durationSecs Real
function FOW_RevealEGroup(group, radius, durationSecs)
end

---comment Reveals an entity in the Fog of War for all alive players over a given duration.
---@param entity EntityID
---@param radius Real
---@param durationSecs Real
function FOW_RevealEntity(entity, radius, durationSecs)
end

---comment Reveals a SGroup in the Fog of War for all alive players over a given duration.
---@param group SGroupID
---@param radius Real
---@param durationSecs Real
function FOW_RevealSGroup(group, radius, durationSecs)
end

---comment Reveals a squad in the Fog of War for all alive players over a given duration.
---@param squad SquadID
---@param radius Real
---@param durationSecs Real
function FOW_RevealSquad(squad, radius, durationSecs)
end

---comment Reveals a territory to a player
---@param player PlayerID
---@param sectorID Integer
---@param durationSecs Real
---@param mustOwn Boolean
function FOW_RevealTerritory(player, sectorID, durationSecs, mustOwn)
end

---comment Reveal FOW for all players by disabling rendering of FOW without triggering a FOW in the game simulation
function FOW_UIRevealAll()
end

---comment Use to transition from game to RevealAll
---@param duration Real
function FOW_UIRevealAll_Transition(duration)
end

---comment Use to reveal all Entities in FoW
function FOW_UIRevealAllEntities()
end

---comment Use to undo a FOW_UIRevealAll
function FOW_UIUnRevealAll()
end

---comment Use to transition into game
---@param duration Real
function FOW_UIUnRevealAll_Transition(duration)
end

---comment Use to unreveal all Entities in FoW
function FOW_UIUnRevealAllEntities()
end

---comment Use to undo a FOW_ForceRevealAllUnblockedAreas.
function FOW_UndoForceRevealAllUnblockedAreas()
end

---comment Unexplores entire map for all players
function FOW_UnExploreAll()
end

---comment Use to undo a FOW_RevealAll
function FOW_UnRevealAll()
end

---comment UnReveals a circular area that was previously revealed for all alive players.
---@param pos Position
function FOW_UnRevealArea(pos)
end

---comment Unreveals a territory sector
---@param player PlayerID
---@param sectorID Integer
function FOW_UnRevealTerritory(player, sectorID)
end

---comment force the gamma
function fx_dump()
end

---comment force the LOD of the FX system (use 0 to enable dynamic LOD)
---@param lod Integer
function fx_forcelod(lod)
end

---comment enable logging of fx, it it wasn't already
---@param enable Boolean
function fx_logenable(enable)
end

---comment Force effects to be recreated.
function fx_refresh()
end

---comment toggle effects on or off
function fx_toggle()
end

---comment toggle effects rendering on or off
function fx_toggleRendering()
end

---comment use the debugshader, which will render all fx green
---@param enable Boolean
function fx_usedebugshader(enable)
end

---comment Take over control of the local player
function Game_AIControlLocalPlayer()
end

---comment Returns the input enabled flag as an integer.
---@param flag InputEnabledFlag
function Game_ConvertInputEnabledFlagEnumToInt(flag)
end

---comment Returns the visibility flag as an integer.
---@param flag VisibilityFlag
function Game_ConvertVisibilityFlagEnumToInt(flag)
end

---comment deletes save game(s), even if it is not loadable with the current version of the game
---@param filename String
function Game_DeleteSaveGameDev(filename)
end

---comment Enables/Disables all input EXCEPT for ESC and F10.
---@param enable Boolean
function Game_EnableInput(enable)
end

---comment Removes title text displayed with Game_SubTextFade(...) immediately
function Game_EndSubTextFade()
end

---comment Removes title text displayed with Game_TextTitleFade(...) immediately
function Game_EndTextTitleFade()
end

---comment Fast forward all production queues as if x seconds passed, returns info about what has been produced Returns a lua table of the format { (string)PlayerID : { (string)EntityProducerName : { "research" : { (string)researchedItemName : (int)number of times researched }, "production" : { (string)producedItemName : (int)number of items produced }, }, }, } for each player present, for each entity that produced after fast forwarding, for each item researched and produced
---@param secondsForward Real
function Game_FastForwardProduction(secondsForward)
end

---comment For all players fast forwards their resource income as if x seconds passed
---@param secondsForward Real
function Game_FastForwardResourceIncome(secondsForward)
end

---comment Returns the input enabled flag.
function Game_GetInputEnabledFlag()
end

---comment Get the local player. (should only be used for UI purpose) (not deterministic)
function Game_GetLocalPlayer()
end

---comment Get the local player id. (should only be used for UI purpose) (not deterministic)
function Game_GetLocalPlayerID()
end

---comment get the simulation update rate
function Game_GetSimRate()
end

---comment Returns current single player difficulty. Values are GD_EASY, GD_NORMAL, GD_HARD, GD_EXPERT.
function Game_GetSPDifficulty()
end

---comment injects terrain type values into passed table to use for terrain creation
---@param terrainVars StackVarTable
function Game_GetTerrainTypeVariables(terrainVars)
end

---comment Returns the game's visibility flag.
function Game_GetVisibilityFlag()
end

---comment Determine if there is a valid local player. (UI only -- nondeterminstic) (not deterministic)
function Game_HasLocalPlayer()
end

---comment Returns lock state of stored data at location named by dataID.
---@param dataID String
function Game_IsDataLocked(dataID)
end

---comment check if scenario has FTUE boolean set in match setup
function Game_IsFtue()
end

---comment Returns whether the game is paused.
function Game_IsPaused()
end

---comment Returns true if the we're running the performance test.
function Game_IsPerformanceTest()
end

---comment Use to test whether the game is running in RTM mode or not. Using -rtm from the command line will cause this function to also return true in non-RTM builds.
function Game_IsRTM()
end

---comment Checks that the save system has a save queued or is actively saving.
function Game_IsSaving()
end

---comment load this scenario as an single player match
---@param biomePbgName String
---@param layoutPbgName String
---@param sizePbgName String
---@param difficulty Integer
---@param terrainResult StackVarTable
function Game_LaunchSPGeneratedMap(biomePbgName, layoutPbgName, sizePbgName, difficulty, terrainResult)
end

---comment Load data store to disk
---@param id String
---@param path String
---@param binary Boolean
function Game_LoadDataStore(id, path, binary)
end

---comment load this game as a single player match, full path is expected excluding extension
---@param filename String
function Game_LoadFromFileDev(filename)
end

---comment load the savegame with the given internal name from Campaign or Skirmish folder depending on currently running scenario
---@param name String
function Game_LoadGame(name)
end

---comment load this scenario as an single player match
---@param scenarioName String
---@param difficulty Integer
function Game_LoadSP(scenarioName, difficulty)
end

---comment If you are running something that is non-deterministic like a getlocalplayer conditional, you can lock the random to make sure no one down the callstack will throw the game random index out of sync and cause a sync error. REMEMBER TO UNLOCK WHEN YOU ARE DONE
function Game_LockRandom()
end

---comment Pauses tracking of challenges.
function Game_PauseChallengeTracking()
end

---comment Quits the app immediately
function Game_QuitApp()
end

---comment Quits the app immediately with the given exitCode
---@param exitCode Integer
function Game_QuitAppWithCode(exitCode)
end

---comment Removes the data store at the given path.
---@param path String
function Game_RemoveTableData(path)
end

---comment Requests the local player to be set on the next update. (not deterministic)
---@param player PlayerID
function Game_RequestSetLocalPlayer(player)
end

---comment Resumes tracking of challenges. Note: Paused is not the same as stopped/disabled.
function Game_ResumeChallengeTracking()
end

---comment Loads table data stored at datastore[dataID] into global lua table var named <dataID>. Set clearFromStorage to true to clear data from store.
---@param dataID String
---@param clearFromStorage Boolean
function Game_RetrieveTableData(dataID, clearFromStorage)
end

---comment Save data store to disk
---@param id String
---@param path String
---@param binary Boolean
function Game_SaveDataStore(id, path, binary)
end

---comment checks if the save game exists in dev folder and is loadable, filename is expected excluding folder and extension
---@param filename String
function Game_SaveGameExistsDev(filename)
end

---comment Fades the screen to a given RGBA colour over a number of seconds
---@param r Real
---@param g Real
---@param b Real
---@param a Real
---@param timeSecs Real
function Game_ScreenFade(r, g, b, a, timeSecs)
end

---comment Updates the status of an in-game achievement or challenge.
---@param player PlayerID
---@param eventType ChallengeEventType
---@param amount Real
function Game_SendCustomChallengeEvent(player, eventType, amount)
end

---comment sets lock state for stored data at location named by dataID.
---@param dataID String
---@param lock Boolean
function Game_SetDataLock(dataID, lock)
end

---comment Sets the input enabled flag.
---@param flag Integer
function Game_SetInputEnabledFlag(flag)
end

---comment Sets the map explored state for the ExploredAll cheat
---@param player PlayerID
function Game_SetMapExplored(player)
end

---comment Set the player color for the world visuals from preset colors defined in tuning_simulation\ui_team_colours.
---@param player target
---@param "Colour_Neutral". or
function Game_SetPlayerColour(player, "Colour_Neutral".)
end

---comment Set the player color for the world visuals by slot index from preset colors defined in tuning_simulation\ui_player_colours.
---@param player target
---@param oneBasedPlayerSlotIndex Integer
function Game_SetPlayerSlotColour(player, oneBasedPlayerSlotIndex)
end

---comment Set the player color for the UI from preset colors defined in tuning_simulation\ui_team_colours. Does not affect world visuals.
---@param player target
---@param "Colour_Neutral". or
function Game_SetPlayerUIColour(player, "Colour_Neutral".)
end

---comment Set the player color for the UI by slot index from preset colors defined in tuning_simulation\ui_player_colours. Does not affect world visuals.
---@param player target
---@param oneBasedPlayerSlotIndex Integer
function Game_SetPlayerUISlotColour(player, oneBasedPlayerSlotIndex)
end

---comment set the simulation update rate
---@param rate Real
function Game_SetSimRate(rate)
end

---comment Sets the visibility of the specified game visibility flag.
---@param flag VisibilityFlag
---@param visible Boolean
function Game_SetVisibility(flag, visible)
end

---comment Sets the game visibility flag.
---@param flag Integer
function Game_SetVisibilityFlag(flag)
end

---comment Brings up the pause menu. The game does not get paused until the end of the current sim tick, so anything that comes after Game_ShowPauseMenu in your function will still get executed, as well as any rules set to run during that frame.
function Game_ShowPauseMenu()
end

---comment Skips all events. Can either delete or skip queued events.
---@param deleteQueued Boolean
function Game_SkipAllEvents(deleteQueued)
end

---comment Skips the currently playing event (and stops current sound).
function Game_SkipEvent()
end

---comment Stores provided table into long-lived data store at location named by dataID.
---@param dataID String
---@param table RefTable
function Game_StoreTableData(dataID, table)
end

---comment Shows title text that fades in and out over a specified durations
---@param text String
---@param fadeIn Real
---@param duration Real
---@param fadeOut Real
function Game_TextTitleFade(text, fadeIn, duration, fadeOut)
end

---comment Transitions to another atmosphere. Overwrites current transitions. Uses predefined atmosphere settings (only compatible with EEditor maps).
---@param stateName String
---@param transitionTimeSec Real
function Game_TransitionToState(stateName, transitionTimeSec)
end

---comment unlock the random from a previous lockrandom call only
function Game_UnLockRandom()
end

---comment get camera name from PBG path
---@param pbgPath String
function GetCameraNameFromPbgName(pbgPath)
end

---comment Gets the type of game we are playing ( GT_SP = 0, GT_MP = 1, GT_Skirmish = 2)
function getgametype()
end

---comment Returns the local player index
function getlocalplayer()
end

---comment Returns the scenario name (shortname version eg. "2P Semois")
function getmapname()
end

---comment Get physics debug toggle value
function GetPhysicsDebug()
end

---comment Get physics debug toggle value
function GetPhysicsRaycastAsCapsuleDebug()
end

---comment Returns the current simulation rate.
function getsimrate()
end

---comment Disable the spotting of enemy entities that may become ghosts in the FoW.
function Ghost_DisableSpotting()
end

---comment Enable the spotting of enemy entities that may become ghosts in the FoW.
function Ghost_EnableSpotting()
end

---comment Deprecated.
---@param egroup EGroupID
---@param priority Integer
---@param visible Boolean
---@param function LuaFunction
---@param dataTemplate String
---@param hint String
---@param arrow Boolean
---@param arrowOffset Position
---@param actionType Integer
---@param iconName String
---@param visibleInFOW Boolean
function HintPoint_AddToEGroup(egroup, priority, visible, function, dataTemplate, hint, arrow, arrowOffset, actionType, iconName, visibleInFOW)
end

---comment For internal use only.
---@param entity EntityID
---@param priority Integer
---@param visible Boolean
---@param function LuaFunction
---@param dataTemplate String
---@param hint String
---@param arrow Boolean
---@param arrowOffset Position
---@param objectiveID Integer
---@param actionType Integer
---@param iconName String
---@param visibleInFOW Boolean
function HintPoint_AddToEntity(entity, priority, visible, function, dataTemplate, hint, arrow, arrowOffset, objectiveID, actionType, iconName, visibleInFOW)
end

---comment For internal use only.
---@param position Position
---@param priority Integer
---@param visible Boolean
---@param function LuaFunction
---@param dataTemplate String
---@param hint String
---@param arrow Boolean
---@param arrowOffset Position
---@param objectiveID Integer
---@param actionType Integer
---@param iconName String
---@param visibleInFOW Boolean
function HintPoint_AddToPosition(position, priority, visible, function, dataTemplate, hint, arrow, arrowOffset, objectiveID, actionType, iconName, visibleInFOW)
end

---comment Deprecated.
---@param sgroup SGroupID
---@param priority Integer
---@param visible Boolean
---@param function LuaFunction
---@param dataTemplate String
---@param hint String
---@param arrow Boolean
---@param arrowOffset Position
---@param actionType Integer
---@param iconName String
---@param visibleInFOW Boolean
function HintPoint_AddToSGroup(sgroup, priority, visible, function, dataTemplate, hint, arrow, arrowOffset, actionType, iconName, visibleInFOW)
end

---comment For internal use only.
---@param squad SquadID
---@param priority Integer
---@param visible Boolean
---@param function LuaFunction
---@param dataTemplate String
---@param hint String
---@param arrow Boolean
---@param arrowOffset Position
---@param objectiveID Integer
---@param actionType Integer
---@param iconName String
---@param visibleInFOW Boolean
function HintPoint_AddToSquad(squad, priority, visible, function, dataTemplate, hint, arrow, arrowOffset, objectiveID, actionType, iconName, visibleInFOW)
end

---comment Clear the hint point arrow facing value.
---@param id Integer
function HintPoint_ClearFacing(id)
end

---comment Remove all hint points.
function HintPoint_RemoveAll()
end

---comment Add a projected offset to the specified hint point.
---@param id Integer
---@param offset Position
function HintPoint_SetDisplayOffsetInternal(id, offset)
end

---comment Face the hint point arrow towards this entity.
---@param id Integer
---@param entity EntityID
function HintPoint_SetFacingEntity(id, entity)
end

---comment Face the hint point arrow towards this position.
---@param id Integer
---@param position Position
function HintPoint_SetFacingPosition(id, position)
end

---comment Face the hint point arrow towards this squad.
---@param id Integer
---@param squad SquadID
function HintPoint_SetFacingSquad(id, squad)
end

---comment Show or hide the specified hint point.
---@param id Integer
---@param visible Boolean
function HintPoint_SetVisibleInternal(id, visible)
end

---comment Toggle hold info
function Hold_Info()
end

---comment Dump content of inventory to a file
function inv_dump()
end

---comment Returns true if the pbg class list contains a type that has economic utility
---@param pbg PropertyBagGroup
function IsEconomyClassStructure_CS(pbg)
end

---comment Can this structure be used to secure territory
---@param pbg PropertyBagGroup
function IsSecuringStructure_CS(pbg)
end

---comment Can this structure be used to secure territory
---@param pbg PropertyBagGroup
function IsSecuringStructurePlacedOnPoint_CS(pbg)
end

---comment Returns true if this object is a structure (something with a site_ext)
---@param pbg PropertyBagGroup
function IsStructure_CS(pbg)
end

---comment turns on the watcher and displays the lists if any
---@param on Boolean
function LCWatcher_Activate(on)
end

---comment Needs the proper luaConfig id, and looks through that list to add the filter.
---@param stateName String
---@param filter String
function LCWatcher_AddFilter(stateName, filter)
end

---comment Needs the proper luaConfig id, returns true if filter exists.
---@param stateName String
---@param filter String
function LCWatcher_FilterExists(stateName, filter)
end

---comment Returns true if LCWatcher is active.
function LCWatcher_IsActive()
end

---comment Needs the proper luaConfig id, removes filter added by LCWatch_AddFilter.
---@param stateName String
---@param filter String
function LCWatcher_RemoveFilter(stateName, filter)
end

---comment Selects a LuaConfig state to watch.  Returns true if state is registered and false if it has not.
---@param state String
function LCWatcher_SelectState(state)
end

---comment Print all players information.
function listplayers()
end

---comment Get the player's equipped elite at the specified index for their currently set race
---@param player PlayerID
---@param index Integer
function Loadout_GetEquippedArmyUnitAtIndex(player, index)
end

---comment Get the number of elites currently equipped for the player's current race
---@param player PlayerID
function Loadout_GetEquippedArmyUnitsCount(player)
end

---comment DEV ONLY: Converts ansi text to localized text.
---@param string String
function LOC(string)
end

---comment Returns an empty localized string.
function Loc_Empty()
end

---comment Returns a localized string containing the integer.
---@param integer Integer
function Loc_FormatInteger(integer)
end

---comment Returns a localized string containing the number to the specified number of decimal places.
---@param number Real
---@param numDecimalPlaces Integer
function Loc_FormatNumber(number, numDecimalPlaces)
end

---comment Returns a formatted time string in hours, minutes, and seconds. can omit leading zeroes.
---@param secs Real
---@param leading_zeroes Boolean
function Loc_FormatTime_H_M_S(secs, leading_zeroes)
end

---comment Returns a formatted time string in minutes and seconds. can omit leading zeroes.
---@param secs Real
---@param leading_zeroes Boolean
function Loc_FormatTime_M_S(secs, leading_zeroes)
end

---comment Returns a formatted time string in minutes, seconds, and milliseconds. can omit leading zeroes.
---@param secs Real
---@param leading_zeroes Boolean
function Loc_FormatTime_M_S_MS(secs, leading_zeroes)
end

---comment Returns the localized string identified by the specified id.
---@param id StackVar
function Loc_GetString(id)
end

---comment Send a entity command to a entity group(CMD_DefaultAction, CMD_Stop, CMD_Destroy, CMD_BuildSquad, CMD_CancelProduction, CMD_RallyPoint, CMD_AttackForced)
---@param player PlayerID
---@param egroup EGroupID
---@param entityCommand EntityCommandType
function LocalCommand_Entity(player, egroup, entityCommand)
end

---comment Send an entity ability command (CMD_Ability) to an entity
---@param player PlayerID
---@param egroup EGroupID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_EntityAbility(player, egroup, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a squad command to a entity group with custom data
---@param player PlayerID
---@param egroup EGroupID
---@param squadPbg ScarSquadPBG
function LocalCommand_EntityBuildSquad(player, egroup, squadPbg)
end

---comment Send a entity-based command to an entity group.
---@param player PlayerID
---@param egroup EGroupID
---@param entityCommand EntityCommandType
---@param target EGroupID
function LocalCommand_EntityEntity(player, egroup, entityCommand, target)
end

---comment Send a squad command to a squad group with custom data
---@param player PlayerID
---@param egroup EGroupID
---@param entityCommand EntityCommandType
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_EntityExt(player, egroup, entityCommand, cmdparam, queued)
end

---comment Send a position command to an entity group.
---@param player PlayerID
---@param egroup EGroupID
---@param entityCommand EntityCommandType
---@param target Position
function LocalCommand_EntityPos(player, egroup, entityCommand, target)
end

---comment Send a positional ability command (CMD_Ability) to an entity
---@param player PlayerID
---@param egroup EGroupID
---@param pos Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_EntityPosAbility(player, egroup, pos, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a positional/directional ability command (CMD_Ability) to an entity
---@param player PlayerID
---@param egroup EGroupID
---@param pos Position
---@param dir Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_EntityPosDirAbility(player, egroup, pos, dir, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a dual target (position and squad) command to an entity group.
---@param player PlayerID
---@param egroup EGroupID
---@param entityCommand EntityCommandType
---@param target Position
---@param sgroup SGroupID
function LocalCommand_EntityPosSquad(player, egroup, entityCommand, target, sgroup)
end

---comment Send a squad-based command to an entity group.
---@param player PlayerID
---@param egroup EGroupID
---@param entityCommand EntityCommandType
---@param target SGroupID
function LocalCommand_EntitySquad(player, egroup, entityCommand, target)
end

---comment Send an entity-targeting ability command (CMD_Ability) to an entity
---@param player PlayerID
---@param egroup EGroupID
---@param entityTarget EntityID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_EntityTargetEntityAbility(player, egroup, entityTarget, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send an squad-targeting ability command (CMD_Ability) to an entity
---@param player PlayerID
---@param egroup EGroupID
---@param squadTarget SquadID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_EntityTargetSquadAbility(player, egroup, squadTarget, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a squad command to a entity group with custom data
---@param player PlayerID
---@param egroup EGroupID
---@param upgrade ScarUpgradePBG
---@param instant Boolean
---@param queued Boolean
function LocalCommand_EntityUpgrade(player, egroup, upgrade, instant, queued)
end

---comment Send a player command to a player
---@param player PlayerID
---@param dest PlayerID
---@param playerCommand PlayerCommandType
function LocalCommand_Player(player, dest, playerCommand)
end

---comment Send a player ability command (PCMD_Ability) to a player
---@param player PlayerID
---@param dest PlayerID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function LocalCommand_PlayerAbility(player, dest, abilityPBG, skipCostAndPrereq)
end

---comment Send an entity command to a player.
---@param player PlayerID
---@param dest PlayerID
---@param playerCommand PlayerCommandType
---@param target EGroupID
function LocalCommand_PlayerEntity(player, dest, playerCommand, target)
end

---comment Send a player command to a player with a custom flag
---@param player PlayerID
---@param dest PlayerID
---@param playerCommand PlayerCommandType
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_PlayerExt(player, dest, playerCommand, cmdparam, queued)
end

---comment Send a player a command to use a multi-target ability on the given targets.
---@param caster PlayerID
---@param targets vector<ConstTargetHandle>
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function LocalCommand_PlayerMultiTargetAbility(caster, targets, abilityPBG, skipCostAndPrereq)
end

---comment Place a planned structure
---@param player PlayerID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
---@param payOnApply Boolean
function LocalCommand_PlayerPlaceAndConstructEntitiesPlanned(player, ebp, position, facingPos, queued, payOnApply)
end

---comment Place a planned fence
---@param player PlayerID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
---@param payOnApply Boolean
function LocalCommand_PlayerPlaceAndConstructFencePlanned(player, ebp, posStart, posEnd, queued, payOnApply)
end

---comment Place a planned slotted spline
---@param player PlayerID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
---@param payOnApply Boolean
function LocalCommand_PlayerPlaceAndConstructSlottedSplinePlanned(player, ebp, posStart, posEnd, queued, payOnApply)
end

---comment Send a position command to a player.
---@param player PlayerID
---@param dest PlayerID
---@param playerCommand PlayerCommandType
---@param pos Position
function LocalCommand_PlayerPos(player, dest, playerCommand, pos)
end

---comment Send a positional ability command (PCMD_Ability) to a player
---@param player PlayerID
---@param dest PlayerID
---@param pos Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function LocalCommand_PlayerPosAbility(player, dest, pos, abilityPBG, skipCostAndPrereq)
end

---comment Send a positional/directional ability command (PCMD_Ability) to a player
---@param player PlayerID
---@param dest PlayerID
---@param pos Position
---@param dir Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function LocalCommand_PlayerPosDirAbility(player, dest, pos, dir, abilityPBG, skipCostAndPrereq)
end

---comment Send a position command to a player with extra info
---@param player PlayerID
---@param dest PlayerID
---@param playerCommand PlayerCommandType
---@param pos Position
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_PlayerPosExt(player, dest, playerCommand, pos, cmdparam, queued)
end

---comment Send a player command to itself to order squads in the sgroup to construct the building at specific position and facing
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructBuilding(player, sgroup, ebp, position, facingPos, queued)
end

---comment Send a player command to itself to order squads in the sgroup to construct the building at specific position and facing
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructBuildingCheat(player, sgroup, ebp, position, facingPos, queued)
end

---comment Send a player command to itself to order squads in the sgroup to construct fences from posStart to posEnd
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructFence(player, sgroup, ebp, posStart, posEnd, queued)
end

---comment Send a player command to itself to order squads in the sgroup to construct fences from posStart to posEnd
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructFenceCheat(player, sgroup, ebp, posStart, posEnd, queued)
end

---comment Send a player command to itself to order squads in the sgroup to construct a field ranging from posStart to posEnd
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructField(player, sgroup, ebp, posStart, posEnd, queued)
end

---comment Send a player command to itself to order squads in the sgroup to construct a field ranging from posStart to posEnd
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructFieldCheat(player, sgroup, ebp, posStart, posEnd, queued)
end

---comment Send a command from player to sgroup to build ebp as a slotted spline from posStart to posEnd.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructSlottedSpline(player, sgroup, ebp, posStart, posEnd, queued)
end

---comment Send a command from player to sgroup to build ebp as a slotted spline from posStart to posEnd.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param posStart Position
---@param posEnd Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructSlottedSplineCheat(player, sgroup, ebp, posStart, posEnd, queued)
end

---comment Send a command from player to sgroup to build ebp as a slotted spline dependent entity.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructSlottedSplineDependent(player, sgroup, ebp, position, facingPos, queued)
end

---comment Send a command from player to sgroup to build ebp as a slotted spline dependent entity.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructSlottedSplineDependentCheat(player, sgroup, ebp, position, facingPos, queued)
end

---comment Send a command from player to sgroup to build ebp as a slotted spline replacer entity.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructSlottedSplineReplacer(player, sgroup, ebp, position, facingPos, queued)
end

---comment Send a command from player to sgroup to build ebp as a slotted spline replacer entity.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facingPos Position
---@param queued Boolean
function LocalCommand_PlayerSquadConstructSlottedSplineReplacerCheat(player, sgroup, ebp, position, facingPos, queued)
end

---comment Sends an upgrade command to a player
---@param player PlayerID
---@param upgrade ScarUpgradePBG
---@param instant Boolean
---@param queued Boolean
function LocalCommand_PlayerUpgrade(player, upgrade, instant, queued)
end

---comment Send a squad command to a squad group
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param queued Boolean
function LocalCommand_Squad(player, sgroup, squadCommand, queued)
end

---comment Send a ability command (SCMD_Ability) to a squad
---@param player PlayerID
---@param sgroup SGroupID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_SquadAbility(player, sgroup, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a position ATTACK MOVE command to a squad group with custom data.
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target Position
---@param planName String
---@param queued Boolean
---@param split Boolean
function LocalCommand_SquadAttackMovePos(player, sgroup, squadCommand, target, planName, queued, split)
end

---comment Send an entity command to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target EGroupID
---@param queued Boolean
function LocalCommand_SquadEntity(player, sgroup, squadCommand, target, queued)
end

---comment Send a entity ability command (SCMD_Ability) to a squad
---@param player PlayerID
---@param sgroup SGroupID
---@param target EGroupID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_SquadEntityAbility(player, sgroup, target, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send an entity command ATTACK to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param target EGroupID
---@param bCheckFOW Boolean
---@param bStationary Boolean
---@param planName String
---@param queued Boolean
function LocalCommand_SquadEntityAttack(player, sgroup, target, bCheckFOW, bStationary, planName, queued)
end

---comment Send a entity command to a squad group with custom BOOLEAN data
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target EGroupID
---@param cmdparam Boolean
---@param queued Boolean
function LocalCommand_SquadEntityBool(player, sgroup, squadCommand, target, cmdparam, queued)
end

---comment Send a entity command to a squad group with custom data
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target EGroupID
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_SquadEntityExt(player, sgroup, squadCommand, target, cmdparam, queued)
end

---comment Send special squad command to a squad group with squad load parameters
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target EGroupID
---@param bOverLoad Boolean
---@param queued Boolean
function LocalCommand_SquadEntityLoad(player, sgroup, squadCommand, target, bOverLoad, queued)
end

---comment Send a squad command to a squad group with custom data
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_SquadExt(player, sgroup, squadCommand, cmdparam, queued)
end

---comment Send a move to position command for a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param target Position
---@param queued Boolean
---@param reverseMove Boolean
---@param split Boolean
---@param acceptableProximity Real
function LocalCommand_SquadMovePos(player, sgroup, target, queued, reverseMove, split, acceptableProximity)
end

---comment Send a move-facing command to a squad group
---@param player PlayerID
---@param sgroup SGroupID
---@param target Position
---@param facing Position
---@param queued Boolean
---@param reverseMove Boolean
---@param split Boolean
---@param acceptableProximity Real
function LocalCommand_SquadMovePosFacing(player, sgroup, target, facing, queued, reverseMove, split, acceptableProximity)
end

---comment Send a squad a command to use a multi-target ability on the given targets.
---@param caster SquadID
---@param targets vector<ConstTargetHandle>
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_SquadMultiTargetAbility(caster, targets, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a squad patrol command (SCMD_Patrol) to a squad
---@param pPlayer PlayerID
---@param pSGroup SGroupID
---@param pathName String
---@param pathIndex Integer
---@param bFromClosest Boolean
---@param loopType LoopType
---@param bAttackMove Boolean
---@param pauseTime Real
---@param bMoveForward Boolean
---@param queued Boolean
function LocalCommand_SquadPath(pPlayer, pSGroup, pathName, pathIndex, bFromClosest, loopType, bAttackMove, pauseTime, bMoveForward, queued)
end

---comment Send a position command to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target Position
---@param queued Boolean
function LocalCommand_SquadPos(player, sgroup, squadCommand, target, queued)
end

---comment Send a positional ability command (SCMD_Ability) to a squad
---@param player PlayerID
---@param sgroup SGroupID
---@param pos Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_SquadPosAbility(player, sgroup, pos, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send a position command to a squad group with custom data
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target Position
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_SquadPosExt(player, sgroup, squadCommand, target, cmdparam, queued)
end

---comment Send an position command ATTACK to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param target Position
---@param bCheckFOW Boolean
---@param bStationary Boolean
---@param planName String
---@param queued Boolean
function LocalCommand_SquadPositionAttack(player, sgroup, target, bCheckFOW, bStationary, planName, queued)
end

---comment Send a retreat position command to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param target Position
---@param queued Boolean
---@param allowNonInteractiveStages Boolean
function LocalCommand_SquadRetreatPos(player, sgroup, target, queued, allowNonInteractiveStages)
end

---comment Send a set CombatStance command to the squads
---@param player PlayerID
---@param sgroup SGroupID
---@param stanceType StanceType
---@param queued Boolean
function LocalCommand_SquadSetCombatStance(player, sgroup, stanceType, queued)
end

---comment Send a set Weapon Preference command to the squads
---@param player PlayerID
---@param sgroup SGroupID
---@param weaponPreference WeaponPreference
---@param queued Boolean
function LocalCommand_SquadSetWeaponPreference(player, sgroup, weaponPreference, queued)
end

---comment Send an squad-based command to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target SGroupID
---@param queued Boolean
function LocalCommand_SquadSquad(player, sgroup, squadCommand, target, queued)
end

---comment Send a squad ability command (SCMD_Ability) to a squad
---@param player PlayerID
---@param sgroup SGroupID
---@param target SGroupID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
---@param queued Boolean
function LocalCommand_SquadSquadAbility(player, sgroup, target, abilityPBG, skipCostAndPrereq, queued)
end

---comment Send an squad-based command to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param target SGroupID
---@param bCheckFOW Boolean
---@param bStationary Boolean
---@param planName String
---@param queued Boolean
function LocalCommand_SquadSquadAttack(player, sgroup, target, bCheckFOW, bStationary, planName, queued)
end

---comment Send a squad command to a squad group with custom data
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target SGroupID
---@param cmdparam Integer
---@param queued Boolean
function LocalCommand_SquadSquadExt(player, sgroup, squadCommand, target, cmdparam, queued)
end

---comment Send special squad command to a squad group with squad load parameters
---@param player PlayerID
---@param sgroup SGroupID
---@param squadCommand SquadCommandType
---@param target SGroupID
---@param bOverLoad Boolean
---@param queued Boolean
function LocalCommand_SquadSquadLoad(player, sgroup, squadCommand, target, bOverLoad, queued)
end

---comment Sends an upgrade command to a squad group.
---@param player PlayerID
---@param sgroup SGroupID
---@param upgrade ScarUpgradePBG
---@param instant Boolean
---@param queued Boolean
function LocalCommand_SquadUpgrade(player, sgroup, upgrade, instant, queued)
end

---comment Run simulation and presentation in lockstep, with simulation ticked every frame (useful for debugging sync errors)
function lockstep_simulation_presentation_toggle()
end

---comment Print text to specified file
---@param file String
---@param txt String
function LogPrintTo(file, txt)
end

---comment Clear the map icon facing value.
---@param id Integer
function MapIcon_ClearFacing(id)
end

---comment Create a map icon targetting an entity.
---@param entity EntityID
---@param icon String
---@param scale Real
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
function MapIcon_CreateEntity(entity, icon, scale, red, green, blue, alpha)
end

---comment Create a map icon targetting a position.
---@param position Position
---@param icon String
---@param scale Real
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
function MapIcon_CreatePosition(position, icon, scale, red, green, blue, alpha)
end

---comment Create a map icon targetting a squad.
---@param squad SquadID
---@param icon String
---@param scale Real
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
function MapIcon_CreateSquad(squad, icon, scale, red, green, blue, alpha)
end

---comment Remove a map icon.
---@param id Integer
function MapIcon_Destroy(id)
end

---comment Remove all map icons.
function MapIcon_DestroyAll()
end

---comment Face the map icon towards this entity.
---@param id Integer
---@param entity EntityID
function MapIcon_SetFacingEntity(id, entity)
end

---comment Face the map icon towards this position.
---@param id Integer
---@param position Position
function MapIcon_SetFacingPosition(id, position)
end

---comment Face the map icon towards this squad.
---@param id Integer
---@param squad SquadID
function MapIcon_SetFacingSquad(id, squad)
end

---comment Returns a newly created marker with the given attributes [direction] is expecting a direction vector and not a position relative to [pos]
---@param name String
---@param type String
---@param pos Position
---@param direction Position
---@param radius Real
function Marker_Create(name, type, pos, direction, radius)
end

---comment Finds a marker in an entity, creates a SCAR marker there and returns the new marker's name.
---@param entity EntityID
---@param internalMarker String
---@param newMarker String
function Marker_CreateMarkerFromEntityMarker(entity, internalMarker, newMarker)
end

---comment Delete this marker, only recommended for dynamically created markers
---@param marker MarkerID
function Marker_Destroy(marker)
end

---comment Returns true if a generic number attribute exists for the marker type.
---@param marker MarkerID
---@param name String
function Marker_DoesNumberAttributeExist(marker, name)
end

---comment Returns true if a generic string attribute exists for the marker type.
---@param marker MarkerID
---@param name String
function Marker_DoesStringAttributeExist(marker, name)
end

---comment Returns true if marker exists. If you don't care about the type, pass in an empty string ( "" )
---@param name String
---@param type String
function Marker_Exists(name, type)
end

---comment Returns a ScarMarker from the Scenario Editor. If you don't care about the type, pass in an empty string ( "" )
---@param name String
---@param type String
function Marker_FromName(name, type)
end

---comment Returns a vector for the marker direction
---@param marker MarkerID
function Marker_GetDirection(marker)
end

---comment Returns the name of a given marker.  This value gets set in the Scenario Editor.
---@param marker MarkerID
function Marker_GetName(marker)
end

---comment Returns a generic number attribute defined in a marker.
---@param marker MarkerID
---@param name String
function Marker_GetNumberAttribute(marker, name)
end

---comment Returns the position of a given marker.
---@param marker MarkerID
function Marker_GetPosition(marker)
end

---comment Returns the proximity dimensions of a given marker.  If non rectangular, default value is returned Dimensions are 2d but returned in 3d world space (terrain mapped to x,z) This value gets set in the Scenario Editor.
---@param marker MarkerID
---@param defaultWidth Real
---@param defaultHeight Real
function Marker_GetProximityDimensionsOrDefault(marker, defaultWidth, defaultHeight)
end

---comment Returns the proximity radius of a given marker.  If non circular, default value is returned This value gets set in the Scenario Editor.
---@param marker MarkerID
function Marker_GetProximityRadius(marker)
end

---comment Returns the proximity radius of a given marker.  If non circular, default value is returned This value gets set in the Scenario Editor.
---@param marker MarkerID
---@param defaultValue Real
function Marker_GetProximityRadiusOrDefault(marker, defaultValue)
end

---comment Returns a generic string attribute defined in a marker.
---@param marker MarkerID
---@param name String
function Marker_GetStringAttribute(marker, name)
end

---comment Returns the typename of a given marker. This is the typename from the Scenario Editor (name displayed when placing markers)
---@param marker MarkerID
function Marker_GetType(marker)
end

---comment Returns if a marker has a defined (non-default) proximity range
---@param marker MarkerID
function Marker_HasProximityRange(marker)
end

---comment Returns true if the given position is in the markers proximity radius or proximity rectangle (depending on the type).
---@param marker MarkerID
---@param pos Position
function Marker_InProximity(marker, pos)
end

---comment Set the proximity shape of a marker to a circle with size radius
---@param marker MarkerID
---@param radius Real
function Marker_SetProximityCircle(marker, radius)
end

---comment Set the proximity shape of a marker to point marker (no proximity)
---@param marker MarkerID
function Marker_SetProximityPoint(marker)
end

---comment Set the proximity shape of a marker to a rectangle with dimensions width and height
---@param marker MarkerID
---@param width Real
---@param height Real
function Marker_SetProximityRectangle(marker, width, height)
end

---comment Start an Action at the given position.  Returns the id so the Action can be stopped using Marker_StopActionById.
---@param name String
---@param pos Position
function Marker_StartActionAt(name, pos)
end

---comment Stop an Action by id.  Marker_StartActionAt returns an id that can be used here.
---@param id Integer
function Marker_StopActionById(id)
end

---comment Returns the number of ScarMarkers with the given name If you don't care about the type, pass in an empty string ( "" )
---@param name String
---@param type String
function MarkerCountFromName(name, type)
end

---comment Write the OS map of allocated memory to the log folder
function memdump()
end

---comment Write the OS map of allocated memory to the log folder
---@param foldername String
function memdumpf(foldername)
end

---comment Disable collecting and displaying render stats
function MemoryStats_Disable()
end

---comment Enable collecting and displaying render stats
function MemoryStats_Enable()
end

---comment Toggle collecting and displaying render stats
function MemoryStats_Toggle()
end

---comment Returns the numbers of memory pools
function mempoolcount()
end

---comment Given a poolID it will return the current memory in use
---@param int Integer
function mempoolinuse(int)
end

---comment Given a poolID it will return the max amount of memory this pool has allocated
---@param int Integer
function mempoolmax(int)
end

---comment Given a poolID it will return the name of the pool
---@param poolid Integer
function mempoolname(poolid)
end

---comment Ask the OS to reduce the memory allocated to the game
function memshrink()
end

---comment Write to a file all allocation content for specified pool
---@param pool String
function memtofile(pool)
end

---comment Abort straight out of the game to the frontend, without asking the user
function Misc_AbortToFE()
end

---comment Appends the provided EntityIDs to the EGroup
---@param group EGroupID
---@param entityIDsEncoded String
---@param includeSquads Boolean
function Misc_AddEntitiesToGroup(group, entityIDsEncoded, includeSquads)
end

---comment Add another circle in which commands are restricted to.
---@param position Position
---@param radius Real
function Misc_AddRestrictCommandsCircle(position, radius)
end

---comment Add another marker in which commands are restricted to.
---@param marker MarkerID
function Misc_AddRestrictCommandsMarker(marker)
end

---comment Add another AABB in which commands are restricted to.
---@param minPosition Position
---@param maxPosition Position
function Misc_AddRestrictCommandsOBB(minPosition, maxPosition)
end

---comment Appends the provided SquadIDs to the SGroup
---@param group SGroupID
---@param entityIDsEncoded String
function Misc_AddSquadsToGroup(group, entityIDsEncoded)
end

---comment Let AI take over local player
function Misc_AIControlLocalPlayer()
end

---comment Appends given string to a file expects to receive a filename with an alias conserves existing file content \return Number returned is # bytes successfully written
---@param filename String
---@param text String
function Misc_AppendToFile(filename, text)
end

---comment Returns the enabled/disabled state of the right-click command input.  (not deterministic)
function Misc_AreDefaultCommandsEnabled()
end

---comment Clears a specific control group.
---@param groupIndex Integer
function Misc_ClearControlGroup(groupIndex)
end

---comment Clears the current selection.
function Misc_ClearSelection()
end

---comment Clears the current sub selection.
function Misc_ClearSubselection()
end

---comment Returns true if the app has had any keyboard input in the last second
---@param sinceTime Real
function Misc_DetectKeyboardInput(sinceTime)
end

---comment Returns true if the app has had any mouse input in the last second
---@param sinceTime Real
function Misc_DetectMouseInput(sinceTime)
end

---comment Checks if the given position has an associated district.
---@param pos Position
function Misc_DoesPositionHaveAssociatedDistrict(pos)
end

---comment Do weapon hit effect on the entity from the view camera origin
---@param entity EntityID
---@param pos Position
---@param weaponPBG ScarWeaponPBG
---@param penetrated Boolean
function Misc_DoWeaponHitEffectOnEntity(entity, pos, weaponPBG, penetrated)
end

---comment Do weapon hit effect on the ground
---@param pos Position
---@param weaponPBG ScarWeaponPBG
---@param penetrated Boolean
function Misc_DoWeaponHitEffectOnPosition(pos, weaponPBG, penetrated)
end

---comment Turn on or off the performance test monitoring
---@param toEnable Boolean
function Misc_EnablePerformanceTest(toEnable)
end

---comment Find deposits within the specified range of a squad
---@param group EGroupID
---@param squad SquadID
---@param searchRange Real
function Misc_FindDepositsCloseToSquad(group, squad, searchRange)
end

---comment Finds resource deposits of given type within the specified range of a position, that can be collected by the provided gathererEBP
---@param resourceType ResourceType
---@param gathererEBP EBP
---@param position Position
---@param searchRange Number
function Misc_FindDepositsOfTypeCloseToPosition(resourceType, gathererEBP, position, searchRange)
end

---comment Returns the string argument for a command line option. ex: for "-init test.lua" it would return "test.lua"
---@param option String
function Misc_GetCommandLineString(option)
end

---comment Returns contents of a control group (0 to 9). Squads are put into an sgroup, and non-squad entities are put into an egroup.
---@param groupIndex Integer
---@param squads SGroupID
---@param nonSquadEntities EGroupID
function Misc_GetControlGroupContents(groupIndex, squads, nonSquadEntities)
end

---comment Return the entity generating the district containing the given position. Use with Misc_DoesPositionHaveAssociatedDistrict
---@param pos Position
function Misc_GetDistrictGeneratorFromPosition(pos)
end

---comment Return the district value of the district containing the given position. Use with Misc_DoesPositionHaveAssociatedDistrict
---@param pos Position
function Misc_GetDistrictValueFromPosition(pos)
end

---comment Returns the control group index that this entity belongs to, from 0 to 9, or -1 if none.
---@param entity EntityID
function Misc_GetEntityControlGroup(entity)
end

---comment returns the size of the file expects to receive a filename with an alias \return file size OR 0 if the file can not be read
---@param filename String
function Misc_GetFileSize(filename)
end

---comment Returns a hidden position on path from origin to destination. If there's none, it returns the origin position
---@param checkType Integer
---@param origin Position
---@param destination Position
---@param ebpID Integer
---@param stepDistance Real
---@param cameraPadding Real
---@param FOWPlayer PlayerID
---@param debugDisplay Boolean
function Misc_GetHiddenPositionOnPath(checkType, origin, destination, ebpID, stepDistance, cameraPadding, FOWPlayer, debugDisplay)
end

---comment Returns the world position of the mouse on the terrain (not deterministic)
function Misc_GetMouseOnTerrain()
end

---comment Returns the entity under the mouse (if any) (not deterministic)
function Misc_GetMouseOverEntity()
end

---comment Returns the entity squad under the mouse (if any) (not deterministic)
function Misc_GetMouseOverSquad()
end

---comment Clears a given group and adds the current full selection (or subselection if true) to the group.
---@param group EGroupID
---@param subselection Boolean
function Misc_GetSelectedEntities(group, subselection)
end

---comment Clears a given group and adds the current full selection (or subselection if true) to the group.
---@param group SGroupID
---@param subselection Boolean
function Misc_GetSelectedSquads(group, subselection)
end

---comment Returns the default simulation rate.
function Misc_GetSimDefaultStepsPerSecond()
end

---comment Returns the current simulation rate.
function Misc_GetSimRate()
end

---comment Returns the control group index that this squad belongs to, from 0 to 9, or -1 if none.
---@param squad SquadID
function Misc_GetSquadControlGroup(squad)
end

---comment Returns true if -option is specified on the command line
---@param option String
function Misc_IsCommandLineOptionSet(option)
end

---comment Returns whether the game is running in dev mode.
function Misc_IsDevMode()
end

---comment Check if the squad is on screen currently (not deterministic)
---@param entity EntityID
---@param percent Real
function Misc_IsEntityOnScreen(entity, percent)
end

---comment Returns true if the specified entity is currently selected.
---@param entity EntityID
function Misc_IsEntitySelected(entity)
end

---comment Returns true if the mouse is over an entity (not deterministic)
function Misc_IsMouseOverEntity()
end

---comment Returns true if the mouse is over a squad (not deterministic)
function Misc_IsMouseOverSquad()
end

---comment Check if position is on screen, (1 being the entire screen, 0.5 being 50% of the screen from the center point)
---@param pos Position
---@param percent Real
function Misc_IsPosOnScreen(pos, percent)
end

---comment Returns the enabled/disabled state of the selection input.  (not deterministic)
function Misc_IsSelectionInputEnabled()
end

---comment Check if the entity is on screen currently (not deterministic)
---@param squad SquadID
---@param percent Real
function Misc_IsSquadOnScreen(squad, percent)
end

---comment Returns true if the specified squad is currently selected.
---@param squad SquadID
function Misc_IsSquadSelected(squad)
end

---comment Assumes 'data:' as root; Returns a table containing the names of files matching the supplied path.
---@param pathQuery String
---@param recursiveFind Boolean
function Misc_QueryDataDirectory(pathQuery, recursiveFind)
end

---comment Returns a table containing the names of files matching the supplied path.
---@param pathQuery String
---@param recursiveFind Boolean
function Misc_QueryDirectory(pathQuery, recursiveFind)
end

---comment Reads the file as string expects to receive a filename with an alias \return file content OR empty string if the file can not be read
---@param filename String
function Misc_ReadFile(filename)
end

---comment Remove all command restrictions.
function Misc_RemoveCommandRestriction()
end

---comment Deletes the given file expects to receive a filename with an alias \return true if file was deleted or did not exist in the first place, false otherwise
---@param filename String
function Misc_RemoveFile(filename)
end

---comment Set the marker in which commands are restricted to.
---@param marker MarkerID
function Misc_RestrictCommandsToMarker(marker)
end

---comment Save a screenshot
function Misc_Screenshot()
end

---comment Set the graphic file type for screenshot (.jpg, .tga)
---@param fileExtension String
function Misc_ScreenshotExt(fileExtension)
end

---comment Set the full selection to the specified entity.
---@param entity EntityID
function Misc_SelectEntity(entity)
end

---comment Set the full selection to the specified entity.
---@param squad SquadID
---@param selected Boolean
function Misc_SelectSquad(squad, selected)
end

---comment Sets the current autotest being used.  Used to set default text in the crash reports
---@param description String
function Misc_SetCurrentAutotest(description)
end

---comment Enables/disables right-click command input.
---@param enabled Boolean
function Misc_SetDefaultCommandsEnabled(enabled)
end

---comment Shows or hides designer splats, which are splats in the UI folder
---@param bVisible Boolean
function Misc_SetDesignerSplatsVisibility(bVisible)
end

---comment Makes an entity belong to a specific control group. If it already belongs to another control group, it's removed from that one before being added to the new one.
---@param entity EntityID
---@param groupIndex Integer
function Misc_SetEntityControlGroup(entity, groupIndex)
end

---comment Disable/enable selectability of the specified entity.
---@param entity EntityID
---@param selectable Boolean
function Misc_SetEntitySelectable(entity, selectable)
end

---comment Enables/disables selection input.
---@param enabled Boolean
function Misc_SetSelectionInputEnabled(enabled)
end

---comment Set the simulation rate
---@param rate Real
function Misc_SetSimRate(rate)
end

---comment Makes a squad belong to a specific control group. If it already belongs to another control group, it's removed from that one before being added to the new one.
---@param squad SquadID
---@param groupIndex Integer
function Misc_SetSquadControlGroup(squad, groupIndex)
end

---comment Disable/enable selectability of the specified squad.
---@param squad SquadID
---@param selectable Boolean
function Misc_SetSquadSelectable(squad, selectable)
end

---comment Updates the slotted spline system to handle the fact that the entities in the given EGroup have done a blueprint conversion. This must be called after converting slotted spline entities from script.
---@param egroup EGroupID
function Misc_UpdateSlottedSplinesContainingEGroupAfterBlueprintConversion(egroup)
end

---comment Writes the given string to a file expects to receive a filename with an alias overwrites any existing file content \return Number returned is # bytes successfully written
---@param filename String
---@param text String
function Misc_WriteFile(filename, text)
end

---comment Applies an entity modifier to an entity. Use a duration of 0 for an indefinite modifier.
---@param modifier ScarModifier
---@param entity EntityID
---@param durationSeconds Real
function Modifier_ApplyToEntity(modifier, entity, durationSeconds)
end

---comment Applies a player modifier to a player. Use a duration of 0 for an indefinite modifier.
---@param modifier ScarModifier
---@param player PlayerID
---@param durationSeconds Real
function Modifier_ApplyToPlayer(modifier, player, durationSeconds)
end

---comment Applies a squad modifier to a squad. Use a duration of 0 for an indefinite modifier.
---@param modifier ScarModifier
---@param squad SquadID
---@param durationSeconds Real
function Modifier_ApplyToSquad(modifier, squad, durationSeconds)
end

---comment Returns a modifier that you can apply to stuff.
---@param applicationType ModifierApplicationType
---@param modtype String
---@param usageType ModifierUsageType
---@param exclusive Boolean
---@param value Real
---@param v StackVar
function Modifier_Create(applicationType, modtype, usageType, exclusive, value, v)
end

---comment Checks whether the modifier is enabled (requires an Entity and an Entity enable/disable modifier)
---@param pEntity EntityID
---@param modtype String
---@param bEnabledByDefault Boolean
function Modifier_IsEnabled(pEntity, modtype, bEnabledByDefault)
end

---comment Start capturing a movie, optionally downscaling to low resolution.
---@param lowResolution Boolean
function MovieCapture_Start(lowResolution)
end

---comment Stop a previously started movie capture.
function MovieCapture_Stop()
end

---comment toggle the outstanding network call information
function network_show_calls()
end

---comment toggle the network statgraph
function network_show_statgraph()
end

---comment Create an objective and returns the unique ID for it
---@param player PlayerID
---@param title String
---@param desc String
---@param icon String
---@param dataTemplate String
---@param faction String
---@param type ObjectiveType
---@param parentID Integer
---@param telemetryTitle String
function Obj_Create(player, title, desc, icon, dataTemplate, faction, type, parentID, telemetryTitle)
end

---comment Delete the objective with the specified ID
---@param objectiveID Integer
function Obj_Delete(objectiveID)
end

---comment Delete all objectives
function Obj_DeleteAll()
end

---comment Get the count of the counter on the objective.
---@param objectiveID Integer
function Obj_GetCounterCount(objectiveID)
end

---comment Get the maximum count of the counter on the objective.
---@param objectiveID Integer
function Obj_GetCounterMax(objectiveID)
end

---comment Get the counter type of an objective.
---@param objectiveID Integer
function Obj_GetCounterType(objectiveID)
end

---comment Get objective progress bar value
---@param objectiveID Integer
function Obj_GetProgress(objectiveID)
end

---comment Get objective progress bar visibility  (not deterministic)
---@param objectiveID Integer
function Obj_GetProgressVisible(objectiveID)
end

---comment Get objective state ( OS_Off, OS_Incomplete, OS_Complete, OS_Failed ) (not deterministic)
---@param objectiveID Integer
function Obj_GetState(objectiveID)
end

---comment Get objective visibility  (not deterministic)
---@param objectiveID Integer
function Obj_GetVisible(objectiveID)
end

---comment Hide the objective progress panel.
function Obj_HideProgress()
end

---comment Hide the specified objective progress panel.
---@param progressBarIndex Integer
function Obj_HideProgressEx(progressBarIndex)
end

---comment Set colour of objective. In order red, green, blue, alpha.
---@param objectiveID Integer
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
function Obj_SetColour(objectiveID, red, green, blue, alpha)
end

---comment Set the count of the counter on the objective.
---@param objectiveID Integer
---@param count Integer
function Obj_SetCounterCount(objectiveID, count)
end

---comment Set the maximum count of the counter on the objective.
---@param objectiveID Integer
---@param max Integer
function Obj_SetCounterMax(objectiveID, max)
end

---comment Set the number of seconds on an objective with a timer. Only used to inform the UI.
---@param objectiveID Integer
---@param timerSeconds Real
function Obj_SetCounterTimerSeconds(objectiveID, timerSeconds)
end

---comment Set the counter type of an objective.
---@param objectiveID Integer
---@param counterType Integer
function Obj_SetCounterType(objectiveID, counterType)
end

---comment Set description text localization ID for the objective
---@param objectiveID Integer
---@param desc String
function Obj_SetDescription(objectiveID, desc)
end

---comment Set icon path for the objective
---@param objectiveID Integer
---@param icon String
function Obj_SetIcon(objectiveID, icon)
end

---comment Set callback functions for the objective.  (not deterministic)
---@param id Integer
---@param fnType ObjectiveFn
---@param f LuaFunction
function Obj_SetObjectiveFunction(id, fnType, f)
end

---comment Set objective progress bar value
---@param objectiveID Integer
---@param progress Real
function Obj_SetProgress(objectiveID, progress)
end

---comment Make the objective progress bar blink or stop blinking.
---@param blinking Boolean
function Obj_SetProgressBlinking(blinking)
end

---comment Set objective progress bar visibility
---@param objectiveID Integer
---@param visible Boolean
function Obj_SetProgressVisible(objectiveID, visible)
end

---comment Set objective state ( OS_Off, OS_Incomplete, OS_Complete, OS_Failed )
---@param objectiveID Integer
---@param state State
function Obj_SetState(objectiveID, state)
end

---comment Set title text localization ID for the objective
---@param objectiveID Integer
---@param title String
function Obj_SetTitle(objectiveID, title)
end

---comment Set objective visibility
---@param objectiveID Integer
---@param visible Boolean
function Obj_SetVisible(objectiveID, visible)
end

---comment Show the objective progress panel with a progress bar - call repeatedly to update progress.  Value should be normalized between [0 - 1].
---@param title String
---@param progress Real
function Obj_ShowProgress(title, progress)
end

---comment Show the objective progress panel with a progress bar - call repeatedly to update progress.  Value should be normalized between [0 - 1].  Appears in center of screen.
---@param title String
---@param progress Real
function Obj_ShowProgress2(title, progress)
end

---comment Show the specified objective progress panel with a progress bar - call repeatedly to update progress. Value should be normalized between [0 - 1].  If critical, progress bar will pulse.
---@param progressBarIndex Integer
---@param title String
---@param progress Real
---@param critical Boolean
function Obj_ShowProgressEx(progressBarIndex, title, progress, critical)
end

---comment Show the objective progress panel with a timer icon - call repeatedly to update progress.  Value should be in seconds.
---@param progress Real
function Obj_ShowProgressTimer(progress)
end

---comment Clear entire draw pathfinding cell list
function Path_ClearCells()
end

---comment Draw pathfinding impassable map
function Path_DrawImpass()
end

---comment Toggle pathfinding entity path
function Path_DrawPath()
end

---comment Draw pathfinding grid overlay
---@param onoff Boolean
function Path_DrawPathMap(onoff)
end

---comment Add pathfinding cell to draw cell list
---@param x Integer
---@param y Integer
function Path_ShowCell(x, y)
end

---comment Add pathfinding precise cell to draw cell list
---@param x Integer
---@param y Integer
function Path_ShowPreciseCell(x, y)
end

---comment Toggle pathfinding collision circles
function Path_ToggleCollisionCircle()
end

---comment Reload mouse over entity's entire list of extension info's
function PBG_ReloadMouseOverEntity()
end

---comment Reload mouse over squad's entire list of extension info's
function PBG_ReloadMouseOverSquad()
end

---comment Reload mouse over squad's weapon property bag
function PBG_ReloadMouseOverWeapon()
end

---comment Disable displaying the Essence Profiler
function PerfStats_Disable()
end

---comment Dump the Essence Profiler data onto a file
function PerfStats_Dump()
end

---comment Enable displaying the Essence Profiler
function PerfStats_Enable()
end

---comment Get perf stats toggle value
function PerfStats_IsEnabled()
end

---comment Toggle displaying the Essence Profiler
function PerfStats_Toggle()
end

---comment Returns the number of rigid bodies in the physical world
function Physics_GetNumRBodies()
end

---comment Returns true if the current specs allows for physics to play
function Physics_IsEnabled()
end

---comment Add an ability to a player
---@param player Player&
---@param pAbilityPBG ScarAbilityPBG
function Player_AddAbility(player, pAbilityPBG)
end

---comment Specifies a marker where an ability cannot be used. This only applies to abilities where you use the cursor to pick a location in the world (like a location to paradrop at).
---@param player Player&
---@param abilityPBG ScarAbilityPBG
---@param marker MarkerID
function Player_AddAbilityLockoutZone(player, abilityPBG, marker)
end

---comment Gives the player new command points to spent on
---@param player Player&
---@param points Real
function Player_AddUnspentCommandPoints(player, points)
end

---comment Tests if the player can currently use an ability on target entity
---@param player PlayerID
---@param abilityPBG ScarAbilityPBG
---@param targetEntity EntityID
function Player_CanCastAbilityOnEntity(player, abilityPBG, targetEntity)
end

---comment Tests if the player can currently use an ability on target player
---@param player PlayerID
---@param abilityPBG ScarAbilityPBG
---@param targetPlayer PlayerID
function Player_CanCastAbilityOnPlayer(player, abilityPBG, targetPlayer)
end

---comment Tests if the player can currently use an ability on target position
---@param player PlayerID
---@param abilityPBG ScarAbilityPBG
---@param targetPosition Position
function Player_CanCastAbilityOnPosition(player, abilityPBG, targetPosition)
end

---comment Tests if the player can currently use an ability on target squad
---@param player PlayerID
---@param abilityPBG ScarAbilityPBG
---@param targetSquad SquadID
function Player_CanCastAbilityOnSquad(player, abilityPBG, targetSquad)
end

---comment Tests if the player is able to construct a given blueprint
---@param player PlayerID
---@param pbg PropertyBagGroup
function Player_CanConstruct(player, pbg)
end

---comment Check if a player of specified group can place an entity at the specified position and facing angle.
---@param player PlayerID
---@param sgroup SGroupID
---@param ebp ScarEntityPBG
---@param position Position
---@param facing Position
function Player_CanPlaceStructureOnPosition(player, sgroup, ebp, position, facing)
end

---comment Returns true if a player can see a given entity (revealed in FOW)
---@param player PlayerID
---@param entity EntityID
function Player_CanSeeEntity(player, entity)
end

---comment Returns true if a player can see a given position.
---@param player PlayerID
---@param pos Position
function Player_CanSeePosition(player, pos)
end

---comment Returns true if a player can see ALL or ANY units in a given squad (revealed in FOW)
---@param player PlayerID
---@param squad SquadID
---@param all Boolean
function Player_CanSeeSquad(player, squad, all)
end

---comment Clears item, command and construction menu availabilities for the player.
---@param player Player&
function Player_ClearAvailabilities(player)
end

---comment Clears the pop cap override so that modifiers can take effect again
---@param player Player&
function Player_ClearPopCapOverride(player)
end

---comment Clears a TargetHandle value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_ClearStateModelEnumTableTarget(player, key, tableRowIndex)
end

---comment Clears a TargetHandle value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_ClearStateModelTarget(player, key)
end

---comment Finish upgrade for a player
---@param pPlayer Player&
---@param pUpgradePBG ScarUpgradePBG
function Player_CompleteUpgrade(pPlayer, pUpgradePBG)
end

---comment Searches the player list in the world and returns the id of the first enemy player
---@param player PlayerID
function Player_FindFirstEnemyPlayer(player)
end

---comment Searches the player list in the world and returns the id of the first neutral player
---@param player PlayerID
function Player_FindFirstNeutralPlayer(player)
end

---comment Returns a player given a player id from the ME.
---@param id Integer
function Player_FromId(id)
end

---comment Returns the modified cost of the given ability including all modifications added by the given player
---@param pPlayer PlayerID
---@param pbg PropertyBagGroup
function Player_GetAbilityBPCost(pPlayer, pbg)
end

---comment Returns the type of the given player if it is an AI.
---@param player Player&
function Player_GetAIType(player)
end

---comment Returns an sim::EntityGroupObs containing all the players entities including ones in squad.
---@param player Player&
function Player_GetAllEntities(player)
end

---comment Use capType CT_Personnel to get current squad cap, CT_Vehicle to get current vehicle cap, CT_Medic to get current medic cap
---@param player Player&
---@param capType CapType
function Player_GetCurrentPopulation(player, capType)
end

---comment Get current popcap. Use capType CT_Personnel to get current squad cap or CT_VehicleCap to get current vehicle cap.
---@param player Player&
---@param capType CapType
function Player_GetCurrentPopulationCap(player, capType)
end

---comment Returns the players UI name.
---@param player Player&
function Player_GetDisplayName(player)
end

---comment Returns an sim::EntityGroupObs containing all the players entities excluding ones in squad.
---@param player Player&
function Player_GetEntities(player)
end

---comment Gets all the player's current entities and loads them into the specified egroup.
---@param player Player&
---@param group EGroupID
function Player_GetEntitiesEGroup(player, group)
end

---comment Returns the modified cost of the given entity including all modifications added by the given player
---@param player PlayerID
---@param pbg PropertyBagGroup
function Player_GetEntityBPCost(player, pbg)
end

---comment Returns the number of entities a player currently owns
---@param player Player&
function Player_GetEntityCount(player)
end

---comment Returns the number of entities of a certain unit type
---@param player Player&
---@param unitTypeString String
function Player_GetEntityCountByUnitType(player, unitTypeString)
end

---comment Returns the name of an entity a player currently owns
---@param player Player&
---@param index Integer
function Player_GetEntityName(player, index)
end

---comment Returns the id of the player
---@param player Player&
function Player_GetID(player)
end

---comment Get maximum popcap. Use capType CT_Personnel to get max squad cap or CT_VehicleCap to get max vehicle cap.
---@param player Player&
---@param capType CapType
function Player_GetMaxPopulationCap(player, capType)
end

---comment Get maximum popcap including any overrides. Use capType CT_Personnel to get max squad cap or CT_VehicleCap to get max vehicle cap. If there are no overrides, the default max pop cap is returned.
---@param player Player&
---@param capType CapType
function Player_GetMaxPopulationCapOverride(player, capType)
end

---comment Returns the number of squads currently gathering resources of a given type
---@param player Player&
---@param type Integer
function Player_GetNumGatheringSquads(player, type)
end

---comment Returns the number of strategic points (not objectives) this player owns
---@param p Player&
function Player_GetNumStrategicPoints(p)
end

---comment Returns the number of strategic objectives this player owns
---@param p Player&
function Player_GetNumVictoryPoints(p)
end

---comment Returns the race for the given player.
---@param player Player&
function Player_GetRace(player)
end

---comment Returns the name of the race for a given player (always in english)
---@param player Player&
function Player_GetRaceName(player)
end

---comment DEPRECATED, use Player_ObserveRelationship instead.
---@param player1 PlayerID
---@param player2 PlayerID
function Player_GetRelationship(player1, player2)
end

---comment Returns the amount of resources a given player has.
---@param player Player&
---@param type Integer
function Player_GetResource(player, type)
end

---comment Returns the amount of resources a given player is getting per second.
---@param player Player&
---@param type Integer
function Player_GetResourceRate(player, type)
end

---comment Returns the list of all the resources a given player has.
---@param player Player&
function Player_GetResources(player)
end

---comment Returns the lobby slot index for this player, starting at one
---@param player Player&
function Player_GetSlotIndex(player)
end

---comment Returns the modified cost of the given unit including all modifications added by the given player
---@param pPlayer PlayerID
---@param pbg PropertyBagGroup
function Player_GetSquadBPCost(pPlayer, pbg)
end

---comment Returns the number of squads a player currently owns
---@param player Player&
function Player_GetSquadCount(player)
end

---comment Returns a SquadGroupObs containing all the players units.
---@param player Player&
function Player_GetSquads(player)
end

---comment Returns the starting position for this player
---@param player Player&
function Player_GetStartingPosition(player)
end

---comment Returns the current game state of the player.
---@param pPlayer PlayerID
function Player_GetState(pPlayer)
end

---comment Returns a boolean value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelBool(player, key)
end

---comment Returns an Entity value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelEntityTarget(player, key)
end

---comment Returns a boolean value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTableBool(player, key, tableRowIndex)
end

---comment Returns an Entity value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTableEntityTarget(player, key, tableRowIndex)
end

---comment Returns a float value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTableFloat(player, key, tableRowIndex)
end

---comment Returns an integer value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTableInt(player, key, tableRowIndex)
end

---comment Returns a Player value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTablePlayerTarget(player, key, tableRowIndex)
end

---comment Returns a Squad value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTableSquadTarget(player, key, tableRowIndex)
end

---comment Returns a Vector3f value from the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
function Player_GetStateModelEnumTableVector3f(player, key, tableRowIndex)
end

---comment Returns a float value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelFloat(player, key)
end

---comment Returns an integer value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelInt(player, key)
end

---comment Returns a Player value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelPlayerTarget(player, key)
end

---comment Returns a Squad value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelSquadTarget(player, key)
end

---comment Returns a Vector3f value from the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
function Player_GetStateModelVector3f(player, key)
end

---comment Returns a value (-1.0 to 1.0) of how close a point is to being controlled by the team of the player provided
---@param player PlayerID
---@param strategicPoint EntityID
function Player_GetStrategicPointCaptureProgress(player, strategicPoint)
end

---comment Get the team a player is on
---@param p Player&
function Player_GetTeam(p)
end

---comment Returns the current game state of the player.
function Player_GetTributeIncrementModifier()
end

---comment Returns the UI colour of a player with respect to the local machine. Access with .r .g .b .a. Values are in the range 0-255.
---@param player Player&
function Player_GetUIColour(player)
end

---comment Returns the current number of units the player has.
---@param player Player&
function Player_GetUnitCount(player)
end

---comment Returns the cost of an upgrade.
---@param player PlayerID
---@param upgradePBG ScarUpgradePBG
function Player_GetUpgradeBPCost(player, upgradePBG)
end

---comment Returns the cost of an upgrade in a specific resource.
---@param player PlayerID
---@param upgradePBG ScarUpgradePBG
---@param type Integer
function Player_GetUpgradeBPCostByResource(player, upgradePBG, type)
end

---comment Set the gifted resource amount for a given player A positive resource amount means the player receives the resources A negative resource amount means the player sends the resources Ignores income cap and resource sharing.
---@param player Player&
---@param type Integer
---@param amount Real
function Player_GiftResource(player, type, amount)
end

---comment Tests to see if a player has an ability
---@param player Player&
---@param pAbilityPBG ScarAbilityPBG
function Player_HasAbility(player, pAbilityPBG)
end

---comment Returns true if the given player has units that are able to capture in the capturable area of the given strategic point
---@param player PlayerID
---@param strategicPoint EntityID
function Player_HasCapturingSquadNearStrategicPoint(player, strategicPoint)
end

---comment Tests to see if the player has any entities with the specified PBG
---@param player Player&
---@param entity ScarEntityPBG
function Player_HasEntity(player, entity)
end

---comment Returns whether a player has a map entry position
---@param player PlayerID
function Player_HasMapEntryPosition(player)
end

---comment Return true if the squad has purchased the specified upgrade.
---@param pPlayer PlayerID
---@param upgradePBG ScarUpgradePBG
function Player_HasUpgrade(pPlayer, upgradePBG)
end

---comment Returns true or false, depending on whether the passed in player ability is active on the player
---@param player Player&
---@param abilityPBG ScarAbilityPBG
function Player_IsAbilityActive(player, abilityPBG)
end

---comment Returns true if player is still alive and false if player is dead.  Will error if playerIdx is an invalid index.
---@param player Player&
function Player_IsAlive(player)
end

---comment Returns whether a player is human controlled (local or remote), not dead, and not replaced by an AI
---@param player Player&
function Player_IsHuman(player)
end

---comment Returns true if player has surrendered and false if not.  Will error if playerIdx is an invalid index.
---@param player Player&
function Player_IsSurrendered(player)
end

---comment Check if id corresponds to a player
---@param id Integer
function Player_IsValid(id)
end

---comment Returns the number of upgrades that this player has.
---@param player Player&
---@param upgradePBG ScarUpgradePBG
function Player_NumUpgradeComplete(player, upgradePBG)
end

---comment Get the relationship that observer has to target.
---@param observer PlayerID
---@param target PlayerID
function Player_ObserveRelationship(observer, target)
end

---comment Get the reputation that observer has to target.
---@param observer PlayerID
---@param target PlayerID
function Player_ObserveReputation(observer, target)
end

---comment Removes a marker that was previously a lockout zone.
---@param player Player&
---@param abilityPBG ScarAbilityPBG
---@param marker MarkerID
function Player_RemoveAbilityLockoutZone(player, abilityPBG, marker)
end

---comment Removes all upgrade from a player
---@param player Player&
function Player_RemoveAllUpgrades(player)
end

---comment Removes an upgrade from a player
---@param player Player&
---@param upgrade ScarUpgradePBG
function Player_RemoveUpgrade(player, upgrade)
end

---comment Reset the cooldown of an ability on every unit a player has, and the player itself.
---@param player Player&
---@param ability ScarAbilityPBG
function Player_ResetAbilityCooldowns(player, ability)
end

---comment Reset the resource amount for a given player to zero.
---@param player Player&
---@param type Integer
function Player_ResetResource(player, type)
end

---comment Sets availability of ALL entity, squad and player commands.
---@param player Player&
---@param availability Availability
---@param reason String
function Player_SetAllCommandAvailabilityInternal(player, availability, reason)
end

---comment Set default squad mood mode which can be overrided by squad level mood mode settings
---@param player Player&
---@param mood SquadCombatBehaviourMoodMode
function Player_SetDefaultSquadMoodMode(player, mood)
end

---comment Sets a pop cap override that ignores any modifiers.
---@param player Player&
---@param personnel Real
function Player_SetPopCapOverride(player, personnel)
end

---comment Set the relationship that observer has to target. If the relationship does not match the current reputation, the reputation will be changed to match it.
---@param observer PlayerID
---@param target PlayerID
---@param relationship Relation
function Player_SetRelationship(observer, target, relationship)
end

---comment Set the reputation that observer has to target. If the reputation does not match the current relationship, the relationship will be changed to match it.
---@param observer PlayerID
---@param target PlayerID
---@param reputation BaseType
function Player_SetReputation(observer, target, reputation)
end

---comment Set the resource amount for a given player.  Ignores income cap and resource sharing.
---@param player Player&
---@param type Integer
---@param amt Real
function Player_SetResource(player, type, amt)
end

---comment Set the resource amount for a given player.  Ignores income cap and resource sharing.
---@param player Player&
---@param type Integer
---@param amt Real
---@param reason AddResourceReason
function Player_SetResourceInternal(player, type, amt, reason)
end

---comment Set all the resource amount for a given player.  Ignores income cap and resource sharing.
---@param player Player&
---@param resourceAmount ResourceAmount
function Player_SetResources(player, resourceAmount)
end

---comment Sets a boolean value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value Boolean
function Player_SetStateModelBool(player, key, value)
end

---comment Sets an Entity TargetHandle value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value EntityID
function Player_SetStateModelEntityTarget(player, key, value)
end

---comment Sets a boolean value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value Boolean
function Player_SetStateModelEnumTableBool(player, key, tableRowIndex, value)
end

---comment Sets an Entity TargetHandle value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value EntityID
function Player_SetStateModelEnumTableEntityTarget(player, key, tableRowIndex, value)
end

---comment Sets a float value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value Real
function Player_SetStateModelEnumTableFloat(player, key, tableRowIndex, value)
end

---comment Sets an integer value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value Integer
function Player_SetStateModelEnumTableInt(player, key, tableRowIndex, value)
end

---comment Sets a Player TargetHandle value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value PlayerID
function Player_SetStateModelEnumTablePlayerTarget(player, key, tableRowIndex, value)
end

---comment Sets a Squad TargetHandle value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value SquadID
function Player_SetStateModelEnumTableSquadTarget(player, key, tableRowIndex, value)
end

---comment Sets a Vector3f value in the player's state model corresponding to the given key and table row index (0 based).
---@param player Player&
---@param key String
---@param tableRowIndex Integer
---@param value Position
function Player_SetStateModelEnumTableVector3f(player, key, tableRowIndex, value)
end

---comment Sets a float value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value Real
function Player_SetStateModelFloat(player, key, value)
end

---comment Sets an integer value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value Integer
function Player_SetStateModelInt(player, key, value)
end

---comment Sets a Player TargetHandle value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value PlayerID
function Player_SetStateModelPlayerTarget(player, key, value)
end

---comment Sets a Squad TargetHandle value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value SquadID
function Player_SetStateModelSquadTarget(player, key, value)
end

---comment Sets a Vector3f value in the Player's state model corresponding to the given key.
---@param player Player&
---@param key String
---@param value Position
function Player_SetStateModelVector3f(player, key, value)
end

---comment Abruptly stops an active ability
---@param player PlayerID
---@param ability ScarAbilityPBG
---@param bIsEarlyExit Boolean
function Player_StopAbility(player, ability, bIsEarlyExit)
end

---comment Clears the config changed callback
function PlayerColour_ClearConfigChangedCallback()
end

---comment Clear player color overriding and use the "PlayerColour" setting instead.
function PlayerColour_Disable()
end

---comment Force enable player color that overrides the current "PlayerColour" setting.
function PlayerColour_Enable()
end

---comment Sets a callback firing when user changes the config for player colour
---@param function LuaFunction
function PlayerColour_SetConfigChangedCallback(function)
end

---comment Exit to windows
function quit()
end

---comment Disable rendering and render update
function render_viewport_toggle()
end

---comment Disable collecting and displaying render stats
function RenderStats_Disable()
end

---comment Output the render stats to a CSV LogFile for viewing
function RenderStats_DumpToLogFile()
end

---comment Enable collecting and displaying render stats
function RenderStats_Enable()
end

---comment Set the render stats refresh update interval (seconds)
---@param time Real
function RenderStats_SetUpdateTime(time)
end

---comment Sort render stats by model instances (descending sort)
function RenderStats_SortInstances()
end

---comment Sort render stats by render calls (descending sort)
function RenderStats_SortRenderCalls()
end

---comment Sort render stats by shader changes (descending sort)
function RenderStats_SortShaderChanges()
end

---comment Sort render stats by mesh triangles (descending sort)
function RenderStats_SortTris()
end

---comment Toggle collecting and displaying render stats
function RenderStats_Toggle()
end

---comment Cleanup resources in cache. Only for debug purposes, not in RTM.
---@param cacheName String
function ResourceContainer_ClearCache(cacheName)
end

---comment Create a cache to load resources into giving its name and number of resources to hold
---@param cacheName String
---@param cacheSize Integer
function ResourceContainer_CreateCache(cacheName, cacheSize)
end

---comment Log resource references to log. Only for debug purposes, not in RTM.
function ResourceContainer_LogRefs()
end

---comment Restart a single player game, skirmish game, or the front end. (doesn't work in multiplayer games)
function restart()
end

---comment Activate the scar RulesProfiler
---@param on Boolean
function RulesProfiler_Activate(on)
end

---comment Enable the scar RulesProfiler so it runs in the background. Call this before RulesProfiler_Activate
---@param on Boolean
function RulesProfiler_Enable(on)
end

---comment Returns true if the scar RulesProfiler is active
function RulesProfiler_IsActive()
end

---comment Don't filter the RulesProfiler displayed rules.
function RulesProfiler_ResetTypeFilter()
end

---comment Filter the RulesProfiler to filter displayed rules to given type. E.g., "SCAR", "AI"
---@param filter String
function RulesProfiler_SetTypeFilter(filter)
end

---comment Returns true if a squad blueprint exists with the given name.
---@param pbgShortname String
function SBP_Exists(pbgShortname)
end

---comment Get the first entity blueprint property bag in a provided squad blueprint property bag.
---@param sbp ScarSquadPBG
function SBP_GetFirstEBP(sbp)
end

---comment Returns whether the squad blueprint is of specified race
---@param pbgShortname String
---@param race ScarRacePBG
function SBP_IsOfRace(pbgShortname, race)
end

---comment Register an init function with the scar system.
---@param f LuaFunction
function Scar_AddInit(f)
end

---comment execute command string in cheat menu domain. Will only work if dev mode is enabled! (it's OFF by default in RTM builds)
---@param command String
function Scar_DebugCheatMenuExecute(command)
end

---comment execute console command string. Will only work if dev mode is enabled! (it's OFF by default in RTM builds)
---@param command String
function Scar_DebugConsoleExecute(command)
end

---comment Run the specified scar script file
---@param scriptName String
function Scar_DoFile(scriptName)
end

---comment Run the specified scar command
---@param str String
function Scar_DoString(str)
end

---comment Toggle drawing debug info for scar markers
function Scar_DrawMarkers()
end

---comment Toggle mouse over debug info on which group the entity belongs to
function Scar_GroupInfo()
end

---comment Toggle a list of all egroups and sgroups in the game
function Scar_GroupList()
end

---comment Lets lua tell the game when it has finished initializing
function Scar_InitComplete()
end

---comment Returns true if an init function exists
---@param f LuaFunction
function Scar_InitExists(f)
end

---comment Reload all scar scripts
function Scar_Reload()
end

---comment Unregister an init function that was registered from Scar_AddInit
---@param f LuaFunction
function Scar_RemoveInit(f)
end

---comment Returns ST_NIL,ST_BOOLEAN,ST_NUMBER,ST_STRING,ST_TABLE,ST_FUNCTION,ST_SCARPOS,ST_EGROUP,ST_ENTITY,ST_SGROUP,ST_SQUAD,ST_TEAM,ST_MARKER, ST_PBG, or ST_UNKNOWN
---@param v StackVar
function scartype(v)
end

---comment Returns a string representing the scartype when passed a scartype enum value
---@param v StackVar
function scartype_enum_tostring(v)
end

---comment Returns a string representing the scartype
---@param v StackVar
function scartype_tostring(v)
end

---comment Try to group the squads, returning the squads in groupings that are at least the ideal squad range apart
---@param not or
---@param smallvector<SGroup SGroupID
---@param sgroup SGroupID
---@param spawnedOnly Boolean
---@param idealSquadRadius Real
function separated(not, smallvector<SGroup, sgroup, spawnedOnly, idealSquadRadius)
end

---comment Set the simulation rate
---@param fcap Real
function setsimframecap(fcap)
end

---comment Pause the simulation.
function setsimpause()
end

---comment Set the simulation rate
---@param rate Real
function setsimrate(rate)
end

---comment Fill table with win condition options - schema is loaded from .win file
---@param outOptions StackVarTable
function Setup_GetWinConditionOptions(outOptions)
end

---comment Set the UI name of a given player.
---@param player PlayerID
---@param name String
function Setup_SetPlayerName(player, name)
end

---comment Set the race for a given player.  Use World_GetRaceBlueprint() to get the race id from the ME name.
---@param player PlayerID
---@param racePBG ScarRacePBG
function Setup_SetPlayerRace(player, racePBG)
end

---comment Set the starting position of a given player.
---@param player PlayerID
---@param pos Position
function Setup_SetPlayerStartingPosition(player, pos)
end

---comment Put a player in a team. Use TEAM_NEUTRAL as the team_id to set the player as neutral
---@param p PlayerID
---@param team_id Integer
function Setup_SetPlayerTeam(p, team_id)
end

---comment Adds an squadron to the end of a group if the group doesn't already have it.
---@param group SGroupID
---@param squadron SquadID
function SGroup_Add(group, squadron)
end

---comment Same as EGroup_AddGroup.  Note: You cannot mix squad groups and entity groups.
---@param group SGroupID
---@param grouptoadd SGroupID
function SGroup_AddGroup(group, grouptoadd)
end

---comment Try group the given list of squads into clusters and returns the average distance between these clusters.  Returns -1 if any error occurs.
---@param sgroup SGroupID
---@param spawnedOnly Boolean
---@param numClusters Integer
function SGroup_CalculateClusterSeparation(sgroup, spawnedOnly, numClusters)
end

---comment Removes all entities from a group.
---@param sgroup SGroupID
function SGroup_Clear(sgroup)
end

---comment Clears any previous posture suggestions made to a squad
---@param sgroup SGroupID
function SGroup_ClearPostureSuggestion(sgroup)
end

---comment Returns true if the contents of the two groups are equal. Order of the entities does not matter.
---@param group1 SGroupID
---@param group2 SGroupID
function SGroup_Compare(group1, group2)
end

---comment Returns true if SGroup1 contains ANY or ALL of SGroup2
---@param group1 SGroupID
---@param group2 SGroupID
---@param all Boolean
function SGroup_ContainsSGroup(group1, group2, all)
end

---comment Returns true if SGroup contains a particular SquadID
---@param group SGroupID
---@param SquadID Integer
---@param includeDespawned Boolean
function SGroup_ContainsSquad(group, SquadID, includeDespawned)
end

---comment Returns the total number of spawned and despawned squads in a group.
---@param sgroup SGroupID
function SGroup_Count(sgroup)
end

---comment Returns the number of squads within an Sgroup that match an alliance with the player passed in
---@param group SGroupID
---@param player PlayerID
function SGroup_CountAlliedSquads(group, player)
end

---comment Returns the number of despawned squads in a group.
---@param sgroup SGroupID
function SGroup_CountDeSpawned(sgroup)
end

---comment Returns the number of squads within an Sgroup that match an alliance with the player passed in
---@param group SGroupID
---@param player PlayerID
function SGroup_CountEnemySquads(group, player)
end

---comment Returns the number of spawned squads in a group.
---@param sgroup SGroupID
function SGroup_CountSpawned(sgroup)
end

---comment Returns a new squadron group with the given name.
---@param name String
function SGroup_Create(name)
end

---comment Returns a new squad group with an autogenerated unique name, optionally prefixed by the string passed in.
---@param prefix String
function SGroup_CreateUniqueWithPrefix(prefix)
end

---comment Manually destroy a group that you don't need anymore.
---@param sgroup SGroupID
function SGroup_Destroy(sgroup)
end

---comment Returns true if the squad group with the given name exists
---@param name String
function SGroup_Exists(name)
end

---comment Works like Squad_FacePosition.  All Squads will face the same direction, with the squad the closest to the center determining the direction.
---@param sgroup SGroupID
---@param pos Position
function SGroup_FacePosition(sgroup, pos)
end

---comment Call a lua function for each item in a group. Function will recieve (groupid, itemindex, itemid) and should return true to break or false to continue.
---@param sgroup SGroupID
---@param f StackVarFunction
function SGroup_ForEach(sgroup, f)
end

---comment Call a lua function for each item in a group. Function will receive (groupid, itemindex, itemid) and should return a bool.
---@param sgroup SGroupID
---@param all Boolean
---@param f StackVarFunction
function SGroup_ForEachAllOrAny(sgroup, all, f)
end

---comment Same as SGroup_ForEachAllOrAny except you have a choice to iterate over spawned squads, despawned squads, or both.
---@param sgroup SGroupID
---@param all Boolean
---@param f StackVarFunction
---@param spawned Boolean
---@param despawned Boolean
function SGroup_ForEachAllOrAnyEx(sgroup, all, f, spawned, despawned)
end

---comment Same as SGroup_ForEach except you have a choice to iterate over spawned squads, despawned squads, or both.
---@param sgroup SGroupID
---@param f StackVarFunction
---@param spawned Boolean
---@param despawned Boolean
function SGroup_ForEachEx(sgroup, f, spawned, despawned)
end

---comment Find an squadron group with a given name.
---@param name String
function SGroup_FromName(name)
end

---comment Returns the despawned squad at a certain position in the group.
---@param group SGroupID
---@param int Integer
function SGroup_GetDeSpawnedSquadAt(group, int)
end

---comment Returns the name of a given squad group.
---@param sgroup SGroupID
function SGroup_GetName(sgroup)
end

---comment Returns the center position of a squad group.
---@param group SGroupID
function SGroup_GetPosition(group)
end

---comment Returns the spawned squad at a certain position in the group.
---@param group SGroupID
---@param int Integer
function SGroup_GetSpawnedSquadAt(group, int)
end

---comment Returns the squad at a certain position in the group.
---@param group SGroupID
---@param int Integer
function SGroup_GetSquadAt(group, int)
end

---comment Same as EGroup_Intersection. Note: You cannot mix squad groups and entity groups.
---@param group SGroupID
---@param grouptointersect SGroupID
function SGroup_Intersection(group, grouptointersect)
end

---comment Check to see if an sgroup still exists without needing the name.
---@param sgroupID Integer
function SGroup_IsValid(sgroupID)
end

---comment Removes an squadron from a group.
---@param group SGroupID
---@param squadron SquadID
function SGroup_Remove(group, squadron)
end

---comment Works like SGroup_FacePosition except with no interpolation.  All Squads will face the same direction, with the squad the closest to the center determining the direction.
---@param sgroup SGroupID
---@param pos Position
function SGroup_SnapFacePosition(sgroup, pos)
end

---comment Suggests a posture to an SGroup, lasting the passed duration
---@param sgroup SGroupID
---@param posture Integer
---@param duration Real
function SGroup_SuggestPosture(sgroup, posture, duration)
end

---comment Disable collecting and displaying render stats
function ShaderStats_Disable()
end

---comment Output the render stats to a CSV LogFile for viewing
function ShaderStats_DumpToLogFile()
end

---comment Enable collecting and displaying render stats
function ShaderStats_Enable()
end

---comment Set the render stats refresh update interval (seconds)
---@param time Real
function ShaderStats_SetUpdateTime(time)
end

---comment Sort render stats by model instances (descending sort)
function ShaderStats_SortPixelCount()
end

---comment Sort render stats by model instances (descending sort)
function ShaderStats_SortShaderNames()
end

---comment Toggle collecting and displaying render stats
function ShaderStats_Toggle()
end

---comment Toggle check requirements information
function Sim_CheckRequirements()
end

---comment Draw the current sim tick
function Sim_DebugDrawSimTick()
end

---comment Toggle drawing debug info for the attention system
function Sim_DrawAttention()
end

---comment Toggle the crush OBB
function Sim_DrawEntityCrusherOBB()
end

---comment Toggle entity information
function Sim_DrawEntityExtensions()
end

---comment Toggle entity move state debug drawing
function Sim_DrawEntityStateMove()
end

---comment Toggle a list of all active abilities on the entity
function Sim_EntityAbility()
end

---comment Draw the per-entity decision delay if there is one
function Sim_EntityDelay()
end

---comment Toggle posture info text for selected entities
function Sim_EntityDrawPosture()
end

---comment Toggle a list of all active modifiers on the entity
function Sim_EntityHistory()
end

---comment Toggle entity information
function Sim_EntityInfo()
end

---comment Toggle a list of all active modifiers on the entity
function Sim_EntityModifier()
end

---comment Draw the OBBs for the entity
function Sim_EntityOBB()
end

---comment Draw OOC target debug info
function Sim_EntityOOCTarget()
end

---comment Toggle visualization of entity state tree commands
function Sim_EntityStateTreeCommands()
end

---comment Toggle a list of all completed upgrades on the entity.
function Sim_EntityUpgrades()
end

---comment Is the Market info currently being drawn?
function Sim_GetDrawMarketInfo()
end

---comment Toggle a list of all active player abilities
function Sim_PlayerInfo()
end

---comment Toggle a list of all active player modifiers
function Sim_PlayerModifiers()
end

---comment Set/clear drawing of the market info.
---@param bEnable Boolean
function Sim_SetDrawMarketInfo(bEnable)
end

---comment Toggle simulation boxes for shot blockers only
function Sim_ShotBlockers()
end

---comment Toggle simulation boxes for entities
function Sim_SimBox()
end

---comment Toggle a list of all active modifiers on the entity
function Sim_SquadHistory()
end

---comment Toggle squad information
function Sim_SquadInfo()
end

---comment Toggle squad suppression information
function Sim_SquadSuppression()
end

---comment Play the specified movie.
---@param url String
function SitRep_PlayMovie(url)
end

---comment Stop the currently playing movie.
function SitRep_StopMovie()
end

---comment Toggles the display of the terrain audio environment zones on/off.
---@param enable Boolean
function Sound_Debug_ShowAudioRegions(enable)
end

---comment for the cheat menu
function Sound_ForceMusicEnabled()
end

---comment Force set the combat intensity to be at least combatIntensity for a duration.
---@param combatIntensity Real
---@param durationSeconds Real
function Sound_ForceSetMinimumMusicCombatIntensity(combatIntensity, durationSeconds)
end

---comment for the cheat menu
function Sound_ForceSilenceEnabled()
end

---comment Returns true if the sound associated with the handle is currently playing.
---@param handle Integer
function Sound_IsPlaying(handle)
end

---comment stops the music immediately and go into silence.
function Sound_MusicStop()
end

---comment Plays a 2D sound. Returns a handle to the sound event.
---@param eventName String
function Sound_Play2D(eventName)
end

---comment Plays a 3D sound on the entity. Returns a handle to the sound event.
---@param eventName String
---@param actor EntityID
function Sound_Play3D(eventName, actor)
end

---comment Play a speech event based on the local player's race.
---@param eventName String
---@param eventArgs Integer
function Sound_PlaySpeech(eventName, eventArgs)
end

---comment Play a speech event based on a player's race.
---@param player PlayerID
---@param eventName String
---@param eventArgs Integer
function Sound_PlaySpeechForPlayer(player, eventName, eventArgs)
end

---comment Posts an event on an already playing sound. Returns a handle to the new sound event.
---@param eventName String
---@param handle Integer
function Sound_PostEvent(eventName, handle)
end

---comment tells the music system if it should be trying to enter/stay in the playing music state
---@param value Boolean
function Sound_SetForceMusic(value)
end

---comment tells the music system if it should be trying to enter/stay in the silent state
---@param value Boolean
function Sound_SetForceSilence(value)
end

---comment Prevents the music system from automatically switching between layers and stopping for the duration.
---@param durationSecs Real
function Sound_SetManualMusicSelectDuration(durationSecs)
end

---comment Set the target combat intensity to at least the value of value combatIntensity for a duration.
---@param combatIntensity Real
---@param durationSeconds Real
function Sound_SetMinimumMusicCombatIntensity(combatIntensity, durationSeconds)
end

---comment sets the scaling multiplier for the music intensity value
---@param scale Real
function Sound_SetMusicIntensityScaling(scale)
end

---comment sets the race rtpc for controlling what race's music gets played
---@param raceCode String
function Sound_SetMusicRaceCode(raceCode)
end

---comment stops the music immediately and go into silence.
---@param outroEvent String
function Sound_StartMusicOutro(outroEvent)
end

---comment Stops sound associated with the handle.
---@param handle Integer
function Sound_Stop(handle)
end

---comment Add a splat to the terrain. Returns a unique decal id allow for future removal via Splat_Destroy
---@param splatName String
---@param position Position
---@param xScale Real
---@param zScale Real
---@param rotationDegrees Real
---@param r Integer
---@param g Integer
---@param b Integer
---@param a Integer
---@param mirrorX Boolean
---@param mirrorZ Boolean
function Splat_Create(splatName, position, xScale, zScale, rotationDegrees, r, g, b, a, mirrorX, mirrorZ)
end

---comment Destroy a splat by unique id
---@param handle TerrainSplatObject*
function Splat_Destroy(handle)
end

---comment Get the Splat ID that represents an invalid splat (useful to check if creation failed)
function Splat_GetInvalidID()
end

---comment Allows the squad to use this ability
---@param squad SquadID
---@param ability ScarAbilityPBG
function Squad_AddAbility(squad, ability)
end

---comment Add resources of all types to the specified squad by the specified amount, specifically to the SquadResourceExt.
---@param squad SquadID
---@param amount Real
function Squad_AddAllResources(squad, amount)
end

---comment Add to the list of slot items to drop when this squad is wiped out
---@param squad SquadID
---@param pbg ScarSlotItemPBG
---@param dropChance Real
---@param exclusive Boolean
function Squad_AddSlotItemToDropOnDeath(squad, pbg, dropChance, exclusive)
end

---comment Advance ability cooldown
---@param squad SquadID
---@param tickAmount Integer
function Squad_AdjustAbilityCooldown(squad, tickAmount)
end

---comment Check if squad can attack target
---@param attacker SquadID
---@param target EntityID
---@param checkFOW Boolean
---@param checkVis Boolean
function Squad_CanAttackEntity(attacker, target, checkFOW, checkVis)
end

---comment Returns true if squad can capture stategic point
---@param squad SquadID
---@param entity EntityID
function Squad_CanCaptureStrategicPoint(squad, entity)
end

---comment True if the squad can capture the entity sync weapon
---@param pSquad SquadID
---@param pEntity EntityID
function Squad_CanCaptureTeamWeapon(pSquad, pEntity)
end

---comment Test whether a squad can be ordered to do this ability on the target squad
---@param castingSquad SquadID
---@param abilityPBG ScarAbilityPBG
---@param targetEntity EntityID
function Squad_CanCastAbilityOnEntity(castingSquad, abilityPBG, targetEntity)
end

---comment Test whether a squad can be ordered to do this ability on the target squad
---@param castingSquad SquadID
---@param abilityPBG ScarAbilityPBG
---@param targetPos Position
function Squad_CanCastAbilityOnPosition(castingSquad, abilityPBG, targetPos)
end

---comment Test whether a squad can be ordered to do this ability on the target squad
---@param castingSquad SquadID
---@param abilityPBG ScarAbilityPBG
---@param targetSquad SquadID
function Squad_CanCastAbilityOnSquad(castingSquad, abilityPBG, targetSquad)
end

---comment Cancels an item in a production queue.  Index 0 is the currently producing item.
---@param squad SquadID
---@param index Integer
function Squad_CancelProductionQueueItem(squad, index)
end

---comment Checks whether a squad can hold any squad
---@param squad SquadID
function Squad_CanHold(squad)
end

---comment Returns true if the squad is available to be reinforced
---@param squad SquadID
function Squad_CanInstantReinforceNow(squad)
end

---comment Checks whether a squad can load another squad
---@param squad SquadID
---@param loadthis SquadID
---@param assumeEmpty Boolean
---@param assumeVisible Boolean
function Squad_CanLoadSquad(squad, loadthis, assumeEmpty, assumeVisible)
end

---comment True if the squad can pickup the entity slot item
---@param pSquad SquadID
---@param pEntity EntityID
function Squad_CanPickupSlotItem(pSquad, pEntity)
end

---comment True if the squad can recrew the entity
---@param pSquad SquadID
---@param pEntity EntityID
function Squad_CanRecrew(pSquad, pEntity)
end

---comment Returns true if the distance between a target entity and the source squad is less than it squad's sight distance.  There is no LOS or FOW check.
---@param squad SquadID
---@param entity EntityID
function Squad_CanSeeEntity(squad, entity)
end

---comment Returns true if the distance between a target squad and the source squad is less than it squad's sight distance.  There is no LOS or FOW check.
---@param squad SquadID
---@param target SquadID
function Squad_CanSeeSquad(squad, target)
end

---comment Check if a squad can target and attack a given entity.
---@param squad Squad&
---@param target Entity&
---@param checkFOW Boolean
function Squad_CanTargetEntity(squad, target, checkFOW)
end

---comment Check if a squad can target and attack at least one entity in the given target squad.
---@param squad Squad&
---@param target Squad&
---@param checkFOW Boolean
function Squad_CanTargetSquad(squad, target, checkFOW)
end

---comment Clears any previous posture suggestions made to a squad
---@param squad SquadID
function Squad_ClearPostureSuggestion(squad)
end

---comment Clears a TargetHandle value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_ClearStateModelEnumTableTarget(squad, key, tableRowIndex)
end

---comment Clears a TargetHandle value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_ClearStateModelTarget(squad, key)
end

---comment Instantly adds an upgrade to a given squad
---@param pSquad SquadID
---@param upgradePBG ScarUpgradePBG
function Squad_CompleteUpgrade(pSquad, upgradePBG)
end

---comment Returns the number of units currently in a squad (spawned AND despawned!!)
---@param squad SquadID
function Squad_Count(squad)
end

---comment Create a squad, spawn it and assign it to a player.
---@param sbp ScarSquadPBG
---@param player PlayerID
---@param loadoutCount Integer
---@param pos Position
---@param toward Position
function Squad_CreateAndSpawnToward(sbp, player, loadoutCount, pos, toward)
end

---comment Despawn the entire squad at its current position.
---@param squad SquadID
function Squad_DeSpawn(squad)
end

---comment Remove an squad from the world and destroy it.
---@param squad SquadID
function Squad_Destroy(squad)
end

---comment Sets whether a squad can produce anything (including upgrades)
---@param squad SquadID
---@param enable Boolean
function Squad_EnableProductionQueue(squad, enable)
end

---comment Enables or disables the surprise feature on thie given squad
---@param squad SquadID
---@param enable Boolean
function Squad_EnableSurprise(squad, enable)
end

---comment Returns total squad extension count.
function Squad_ExtensionCount()
end

---comment Returns true if the squad has the specific extension enabled.
---@param pSquad SquadID
---@param extID ComponentDependencyIndex
function Squad_ExtensionEnabled(pSquad, extID)
end

---comment Returns a string name of the given extension on the squad.
---@param pSquad SquadID
---@param extID ComponentDependencyIndex
function Squad_ExtensionName(pSquad, extID)
end

---comment Set the rotation of all units in a squad to face the position.
---@param squad SquadID
---@param pos Position
function Squad_FacePosition(squad, pos)
end

---comment Get 2 squads to face each other. This function works on spawned squads only.
---@param squad1 SquadID
---@param squad2 SquadID
function Squad_FaceSquad(squad1, squad2)
end

---comment Tries to find cover within a certain radius of a position. If no cover is found, it returns the position used for the search.
---@param squad SquadID
---@param pos Position
---@param coverSearchRadius Real
function Squad_FindCover(squad, pos, coverSearchRadius)
end

---comment Tries to find cover within a certain radius of a position, traveling a max distance to get there, and possibly comparing against current position's cover. If no cover is found, it returns the position used for the search.
---@param squad SquadID
---@param pos Position
---@param coverSearchRadius Real
---@param maxPathDistanceFromGoal Real
---@param compareToCurrentCover Boolean
function Squad_FindCoverCompareCurrent(squad, pos, coverSearchRadius, maxPathDistanceFromGoal, compareToCurrentCover)
end

---comment Get a squad from a mission editor ID.
---@param id Integer
function Squad_FromID(id)
end

---comment Returns all active upgrades this squad has.
---@param squad Squad&
function Squad_GetActiveUpgrades(squad)
end

---comment Find the squad member current or forced targets. The sgroup is cleared, and any attack target squads found are added to the sgroup. Entity targets like buildings are ignored.
---@param squad SquadID
---@param sgroup SGroupID
function Squad_GetAttackTargets(squad, sgroup)
end

---comment Returns the squad blueprint of the squad (from the attribute editor)
---@param squad SquadID
function Squad_GetBlueprint(squad)
end

---comment Returns a number representing how good squad cover is -1 for awful, 0 for none, 1 for light, 2 for heavy
---@param squad SquadID
function Squad_GetCoverLevel(squad)
end

---comment Returns the squad's destination, if it's moving. IMPORTANT: you must only call this function if Squad_HasDestination has returned true.
---@param squad SquadID
function Squad_GetDestination(squad)
end

---comment Get the first entity (at index 0) in a squad.
---@param squad SquadID
function Squad_GetFirstEntity(squad)
end

---comment Returns the average heading of the spawned units in the squad. The heading is currently a lua table with three entries (x, y, z)
---@param squad SquadID
function Squad_GetHeading(squad)
end

---comment Returns the current health of a squad.
---@param squad SquadID
function Squad_GetHealth(squad)
end

---comment Returns the max health of the squad.
---@param squad SquadID
function Squad_GetHealthMax(squad)
end

---comment Returns how much of an original squad's health is left, accounting for deaths (ex: a squad of 3 riflemen would be at 50% health, since they started with 6 members) Note: This is the same percentage that the UI uses.
---@param squad SquadID
---@param bIncludeBonuses Boolean
function Squad_GetHealthPercentage(squad, bIncludeBonuses)
end

---comment Returns how much of the squad's health is left as a percentage.
---@param squad SquadID
---@param includeBonuses Boolean
function Squad_GetHealthPercentageWithShields(squad, includeBonuses)
end

---comment Get which building (entity) is the squad garrisoned
---@param squad SquadID
function Squad_GetHoldEntity(squad)
end

---comment Get which vehicle (squad) is the squad garrisoned
---@param squad SquadID
function Squad_GetHoldSquad(squad)
end

---comment Returns an integer containing the unqiue squad ID for this squad.
---@param squad SquadID
function Squad_GetID(squad)
end

---comment returns the Encounter that controls the Squad
---@param squad SquadID
function Squad_GetInternalAIEncounterPtr(squad)
end

---comment Returns the number of invulnerable member
---@param squad SquadID
function Squad_GetInvulnerableEntityCount(squad)
end

---comment Returns squad health min cap or the highest invulnerable min cap percentage from members of the squad.
---@param squad SquadID
function Squad_GetInvulnerableMinCap(squad)
end

---comment Find the last squad attacker on this squad. If found, the squad is added to the sgroup
---@param squad SquadID
---@param sgroup SGroupID
function Squad_GetLastAttacker(squad, sgroup)
end

---comment Find the squad attackers on this squad from the last seconds specified. The sgroup is cleared, then any squads found are added to the sgroup. Building attackers are ignored.
---@param squad SquadID
---@param group SGroupID
---@param timeSeconds Real
function Squad_GetLastAttackers(squad, group, timeSeconds)
end

---comment Find the last entity attacker on this squad. If found, the entity added to egroup
---@param squad SquadID
---@param egroup EGroupID
function Squad_GetLastEntityAttacker(squad, egroup)
end

---comment Returns the max number of units allowed in the squad
---@param squad SquadID
function Squad_GetMax(squad)
end

---comment Returns the sum of all entities in a squad's resourceDropOffDistance state model value if it exists and the entities have a state model ext.  Otherwise it will return 0.0f
---@param targetSquad SquadID
function Squad_GetMaxEntityDropOffDistance(targetSquad)
end

---comment Returns the current minimum armor of a squad.
---@param squad SquadID
function Squad_GetMinArmor(squad)
end

---comment Get the number of slot items with the same ID that the squad has
---@param squad SquadID
---@param pbg ScarSlotItemPBG
function Squad_GetNumSlotItem(squad, pbg)
end

---comment Returns the Player owner of the given squad. Squad MUST NOT be owned by the world.
---@param squad SquadID
function Squad_GetPlayerOwner(squad)
end

---comment Returns the average position of the spawned units in the squad. The position is currently a lua table with three entries (x, y, z)
---@param squad SquadID
function Squad_GetPosition(squad)
end

---comment Returns the average position of the despawned AND spawned units in the squad.
---@param squad SquadID
function Squad_GetPositionDeSpawned(squad)
end

---comment Returns the blueprint for a production queue item with index.
---@param squad SquadID
---@param index Integer
function Squad_GetProductionQueueItem(squad, index)
end

---comment Returns the production type (PITEM_Upgrade, PITEM_Spawn, PITEM_SquadUpgrade, PITEM_SquadReinforce, PITEM_PlayerUpgrade) for a production queue item with index.
---@param squad SquadID
---@param index Integer
function Squad_GetProductionQueueItemType(squad, index)
end

---comment Returns the number of items in the squad's production queue.
---@param squad SquadID
function Squad_GetProductionQueueSize(squad)
end

---comment Returns the race property bag group for the given squad
---@param squad SquadID
function Squad_GetRace(squad)
end

---comment Returns how much of the squad's shield is left as a percentage.
---@param squad SquadID
function Squad_GetShieldPercentage(squad)
end

---comment Returns the ID of the slot item. Use Squad_GetSlotItemCount to determine how many slot items the squad has. The first index is 1
---@param squad SquadID
---@param index Integer
function Squad_GetSlotItemAt(squad, index)
end

---comment Returns how many slot items this squad has
---@param squad SquadID
function Squad_GetSlotItemCount(squad)
end

---comment returns the Squad that sent the passed squad in a disable state
---@param pSquad SquadID
function Squad_GetSquadDoingDisableOnSquad(pSquad)
end

---comment Clear the sgroup, then add all squads held by 'squad' to it
---@param squad SquadID
---@param sgroup SGroupID
function Squad_GetSquadsHeld(squad, sgroup)
end

---comment Returns a boolean value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelBool(squad, key)
end

---comment Returns an Entity value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelEntityTarget(squad, key)
end

---comment Returns a boolean value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTableBool(squad, key, tableRowIndex)
end

---comment Returns an Entity value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTableEntityTarget(squad, key, tableRowIndex)
end

---comment Returns a float value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTableFloat(squad, key, tableRowIndex)
end

---comment Returns an integer value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTableInt(squad, key, tableRowIndex)
end

---comment Returns a Player value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTablePlayerTarget(squad, key, tableRowIndex)
end

---comment Returns a Squad value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTableSquadTarget(squad, key, tableRowIndex)
end

---comment Returns a Vector3f value from the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
function Squad_GetStateModelEnumTableVector3f(squad, key, tableRowIndex)
end

---comment Returns a float value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelFloat(squad, key)
end

---comment Returns an integer value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelInt(squad, key)
end

---comment Returns a Player value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelPlayerTarget(squad, key)
end

---comment Returns a Squad value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelSquadTarget(squad, key)
end

---comment Returns a Vector3f value from the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
function Squad_GetStateModelVector3f(squad, key)
end

---comment Check current squad suppresion level. Return value from 0 to 1
---@param squad SquadID
function Squad_GetSuppression(squad)
end

---comment Gets the mobile driver squad from a vehicle squad
---@param pSquad SquadID
function Squad_GetVehicleMobileDriverSquad(pSquad)
end

---comment Get current squad veterancy
---@param squad SquadID
function Squad_GetVeterancy(squad)
end

---comment Get current squad veterancy rank.
---@param squad SquadID
function Squad_GetVeterancyRank(squad)
end

---comment Gives a slot item to the squad. Can fail due to not enough slots left
---@param squad SquadID
---@param pbg ScarSlotItemPBG
function Squad_GiveSlotItem(squad, pbg)
end

---comment Tests to see if a squad has an ability
---@param squad SquadID
---@param ability ScarAbilityPBG
function Squad_HasAbility(squad, ability)
end

---comment Returns true if the squad has an accepted command that it will try to perform next
---@param squad SquadID
function Squad_HasAcceptedCommands(squad)
end

---comment Returns true if there's an active command currently for the squad
---@param squad SquadID
function Squad_HasActiveCommand(squad)
end

---comment Returns true if the given squad has a building in it (includes team weapons)
---@param pSquad SquadID
function Squad_HasBuilding(pSquad)
end

---comment Returns whether this squad is moving and has a destination, it will not return true on the same tick that the move request is issued
---@param squad SquadID
function Squad_HasDestination(squad)
end

---comment Returns if squad contains an entity with at least minAttachedCount attached interactibles of interactionTypeName type
---@param targetSquad SquadID
---@param interactionTypeName String
---@param minAttachedCount Integer
function Squad_HasEntityWithNInteractors(targetSquad, interactionTypeName, minAttachedCount)
end

---comment Returns true if the given squad has a heavy weapon (non moving setup weapon)
---@param pSquad SquadID
function Squad_HasHeavyWeapon(pSquad)
end

---comment Returns true if the given squad has at least one infantry unit in it (includes team weapons)
---@param pSquad SquadID
function Squad_HasInfantry(pSquad)
end

---comment Returns true if a squad has a production queue.
---@param squad SquadID
function Squad_HasProductionQueue(squad)
end

---comment Returns true if the given squad has team weapon setup for attack
---@param pSquad SquadID
function Squad_HasSetupTeamWeapon(pSquad)
end

---comment Returns true if the given squad has a team weapon
---@param pSquad SquadID
function Squad_HasTeamWeapon(pSquad)
end

---comment Return true if the squad has purchased the specified upgrade.
---@param squad SquadID
---@param pbg ScarUpgradePBG
function Squad_HasUpgrade(squad, pbg)
end

---comment Returns true if the given squad has a vehicle in it (includes team weapons)
---@param pSquad SquadID
function Squad_HasVehicle(pSquad)
end

---comment Returns true if the given squad has at least one Entity who has the specified weapon hardpoint.
---@param pSquad SquadID
---@param hardPointName String
function Squad_HasWeaponHardpoint(pSquad, hardPointName)
end

---comment Increase current squad veterancy
---@param squad SquadID
---@param veterancy Real
---@param silent Boolean
---@param applyModifiers Boolean
function Squad_IncreaseVeterancy(squad, veterancy, silent, applyModifiers)
end

---comment Increase current squad veterancy rank
---@param squad SquadID
---@param numranks Integer
---@param silent Boolean
function Squad_IncreaseVeterancyRank(squad, numranks, silent)
end

---comment Stops current squads activity and instant setup the team weapon if they have one
---@param squad SquadID
function Squad_InstantSetupTeamWeapon(squad)
end

---comment True if the ability is active
---@param squad SquadID
---@param pbg ScarAbilityPBG
function Squad_IsAbilityActive_CS(squad, pbg)
end

---comment Check if the squad is alive
---@param squad SquadID
function Squad_IsAlive(squad)
end

---comment Returns true if any unit in the squad is attacking within the time
---@param squad SquadID
---@param time Real
function Squad_IsAttacking(squad, time)
end

---comment Returns true if the squad is currently attack-moving.
---@param squad SquadID
function Squad_IsAttackMoving(squad)
end

---comment Returns true if the squad is currently capturing.
---@param squad SquadID
function Squad_IsCapturing(squad)
end

---comment Returns true if any spawned entity in the squad is a casualty
---@param squad SquadID
function Squad_IsCasualty(squad)
end

---comment Returns true if the squad is currently constructing.
---@param squad SquadID
function Squad_IsConstructing(squad)
end

---comment True if squad is currently performing the given ability
---@param squad SquadID
---@param pbg ScarAbilityPBG
function Squad_IsDoingAbility(squad, pbg)
end

---comment Returns whether the passed in squad is female
---@param squad SquadID
function Squad_IsFemale(squad)
end

---comment Returns if squad contains an entity that is performing a specific unit role
---@param targetSquad SquadID
---@param type Integer
function Squad_IsGatheringResourceType(targetSquad, type)
end

---comment Check if the squad has a hold on anything (use this on vehicles)
---@param squad SquadID
function Squad_IsHoldingAny(squad)
end

---comment Returns true if Squad is holding position.
---@param squad SquadID
function Squad_IsHoldingPosition(squad)
end

---comment Returns true if the squad is idling
---@param squad SquadID
function Squad_IsIdle(squad)
end

---comment returns true if the Squad is in an Encounter
---@param squad SquadID
function Squad_IsInAIEncounter(squad)
end

---comment Returns whether or not the squad is in the background. Default returns false (if the squad is empty)
---@param pSquad SquadID
function Squad_IsInBackground(pSquad)
end

---comment Check if the squad is garrisoned in entity (building)
---@param squad SquadID
function Squad_IsInHoldEntity(squad)
end

---comment Check if the squad is loaded in squad (vehicle
---@param squad SquadID
function Squad_IsInHoldSquad(squad)
end

---comment Returns true if the squad is in melee combat
---@param pSquad SquadID
function Squad_IsInMeleeCombat(pSquad)
end

---comment True if the squad is currently being knocked back
---@param squad SquadID
function Squad_IsKnockedBack(squad)
end

---comment Returns true if any unit in the squad is currently moving
---@param squad SquadID
function Squad_IsMoving(squad)
end

---comment Determines if this squad is of the given type. Types are defined in squad_type_ext/squad_type_list
---@param squad SquadID
---@param type String
function Squad_IsOfType(squad, type)
end

---comment Returns true if any entity of a squad (all=false) or the whole (all=true) squad is on walkable wall.
---@param squad SquadID
---@param all Boolean
function Squad_IsOnWalkableWall(squad, all)
end

---comment Returns true if the given squad is owned by the given player
---@param squad SquadID
---@param player PlayerID
function Squad_IsOwnedByPlayer(squad, player)
end

---comment True if squad is currently pinned
---@param squad SquadID
function Squad_IsPinned(squad)
end

---comment True if squad is currently pinned or suppressed
---@param squad SquadID
function Squad_IsPinnedOrSuppressed(squad)
end

---comment Returns true if the squad is currently reinforcing.  This function will return false if the squad does not have a reinforce ext.
---@param squad SquadID
function Squad_IsReinforcing(squad)
end

---comment Returns true if the squad is retreating
---@param squad SquadID
function Squad_IsRetreating(squad)
end

---comment Returns true if the given blueprint is of the given type. Types are defined in squad_type_ext/squad_type_list
---@param sbp ScarSquadPBG
---@param type String
function Squad_IsSBPOfType(sbp, type)
end

---comment Returns true if the squad is currently placing charges.
---@param squad SquadID
function Squad_IsSettingDemolitions(squad)
end

---comment Returns true if the supplied squad pbg is a siege unit
---@param pbg ScarSquadPBG
function Squad_IsSiege(pbg)
end

---comment True if the squad is currently stunned
---@param squad SquadID
function Squad_IsStunned(squad)
end

---comment True if squad is currently suppressed
---@param squad SquadID
function Squad_IsSuppressed(squad)
end

---comment Returns true if any unit in the squad is under attack within the time
---@param squad SquadID
---@param time Real
function Squad_IsUnderAttack(squad, time)
end

---comment Returns true if squad is under attack by enemy from a particular player
---@param squad SquadID
---@param pAttackerOwner PlayerID
---@param time Real
function Squad_IsUnderAttackByPlayer(squad, pAttackerOwner, time)
end

---comment Returns true if the squad was under attack from a certain direction (8 offset types, see ScarUtil.scar)
---@param squad SquadID
---@param offset Integer
---@param timeSeconds Real
function Squad_IsUnderAttackFromDirection(squad, offset, timeSeconds)
end

---comment Returns true if the squad is currently upgrading something specific.
---@param squad SquadID
---@param upgrade ScarUpgradePBG
function Squad_IsUpgrading(squad, upgrade)
end

---comment Returns true if the squad is currently upgrading anything.
---@param squad SquadID
function Squad_IsUpgradingAny(squad)
end

---comment Check if a squad with the given ID can be found in the world
---@param id Integer
function Squad_IsValid(id)
end

---comment Kill whole squad.  Sets health to 0, and triggers death effects.
---@param squad SquadID
function Squad_Kill(squad)
end

---comment Returns the number of upgrades that this squad has.
---@param squad SquadID
---@param upgradePBG ScarUpgradePBG
function Squad_NumUpgradeComplete(squad, upgradePBG)
end

---comment get squad pop cost, use CT_Personnel, CT_Vehicle, CT_Medic for captype
---@param squad SquadID
---@param type CapType
function Squad_Population(squad, type)
end

---comment Precache squad resources and listen for event GE_EntityPrecached that it is done
---@param sbp ScarSquadPBG
---@param skinItemDefinitionID Integer
---@param player PlayerID
---@param resourceContainerCacheName String
---@param source String
---@param id String
function Squad_Precache(sbp, skinItemDefinitionID, player, resourceContainerCacheName, source, id)
end

---comment Removes an ability that was previously added by Squad_AddAbility. You cannot remove static abilities (from AE: squad_ability_ext)
---@param squad SquadID
---@param ability ScarAbilityPBG
function Squad_RemoveAbility(squad, ability)
end

---comment Removes a slot item from the squad.
---@param squad SquadID
---@param index Integer
---@param bInstantWeaponChange Boolean
function Squad_RemoveSlotItemAt(squad, index, bInstantWeaponChange)
end

---comment Removes a boolean value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Boolean
function Squad_RemoveStateModelListBool(squad, key, value)
end

---comment Removes an Entity TargetHandle value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value EntityID
function Squad_RemoveStateModelListEntityTarget(squad, key, value)
end

---comment Removes a float value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Real
function Squad_RemoveStateModelListFloat(squad, key, value)
end

---comment Removes an integer value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Integer
function Squad_RemoveStateModelListInt(squad, key, value)
end

---comment Removes a Player TargetHandle value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value PlayerID
function Squad_RemoveStateModelListPlayerTarget(squad, key, value)
end

---comment Removes a Squad TargetHandle value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value SquadID
function Squad_RemoveStateModelListSquadTarget(squad, key, value)
end

---comment Removes a Vector3f value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Position
function Squad_RemoveStateModelListVector3f(squad, key, value)
end

---comment Removes an upgrade from a squad
---@param squad SquadID
---@param upgrade ScarUpgradePBG
function Squad_RemoveUpgrade(squad, upgrade)
end

---comment Give squad action points
---@param squad SquadID
---@param actionPoint Real
function Squad_RewardActionPoints(squad, actionPoint)
end

---comment ZERO-BASED get of entity blueprints out of squad blueprint
---@param sbp ScarSquadPBG
---@param index Integer
function Squad_SBPEntityAt(sbp, index)
end

---comment Returns the max number of units allowed in the squad blueprint
---@param sbp ScarSquadPBG
function Squad_SBPGetMax(sbp)
end

---comment Sets the squad to be in the background or foreground. By default, all squads are in the foreground
---@param pSquad SquadID
---@param isInBackground Boolean
function Squad_SetBackground(pSquad, isInBackground)
end

---comment Enables or disables the squad's UI extension (which controls all UI elements related to the squad)
---@param pSquad SquadID
---@param extID String
---@param enabled Boolean
function Squad_SetExtEnabled(pSquad, extID, enabled)
end

---comment Set the health of all units in a squad.  Health must be in range [0.0, 1.0]
---@param squad SquadID
---@param healthPercent Real
function Squad_SetHealth(squad, healthPercent)
end

---comment Make a squad invulnerable to physical damage when number of members drop to or below specified count.
---@param squad SquadID
---@param invEntityCount Integer
---@param resetTime Real
function Squad_SetInvulnerableEntityCount(squad, invEntityCount, resetTime)
end

---comment Make a squad invulnerable to physical damage.
---@param squad SquadID
---@param minHealthPercentage Real
---@param resetTime Real
function Squad_SetInvulnerableMinCap(squad, minHealthPercentage, resetTime)
end

---comment Set soldier mood mode.
---@param squad SquadID
---@param mood SquadCombatBehaviourMoodMode
function Squad_SetMoodMode(squad, mood)
end

---comment Sets the squad's move type
---@param squad SquadID
---@param movetypePBG ScarMoveTypePBG
function Squad_SetMoveType(squad, movetypePBG)
end

---comment Changes the owner of the given squad.
---@param squad SquadID
---@param owner PlayerID
function Squad_SetPlayerOwner(squad, owner)
end

---comment Moves the squad to a new position and snaps squad members onto grid cell centres.
---@param squad SquadID
---@param pos Position
---@param positionFacingToward Position
function Squad_SetPosition(squad, pos, positionFacingToward)
end

---comment Moves the squad to an arbitrary new 3D position.
---@param squad SquadID
---@param pos Position
---@param toward Position
function Squad_SetPosition3D(squad, pos, toward)
end

---comment Set entity inside the squad to be recrewable or not when it becomes abandoned
---@param squad SquadID
---@param capturable Boolean
function Squad_SetRecrewable(squad, capturable)
end

---comment This function uses squad resources rather than entity resources. For awarding resources to units, it's best to use Entity_AddResource instead (located in luaentity.cpp).
---@param squad SquadID
---@param resourceType Integer
---@param newAmount Real
function Squad_SetResource(squad, resourceType, newAmount)
end

---comment Enables shared team production on a building (teammates can build using THEIR resources)
---@param squad SquadID
---@param shared Boolean
function Squad_SetSharedProductionQueue(squad, shared)
end

---comment Sets a boolean value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Boolean
function Squad_SetStateModelBool(squad, key, value)
end

---comment Sets an Entity TargetHandle value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value EntityID
function Squad_SetStateModelEntityTarget(squad, key, value)
end

---comment Sets a boolean value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Boolean
function Squad_SetStateModelEnumTableBool(squad, key, tableRowIndex, value)
end

---comment Sets an Entity TargetHandle value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value EntityID
function Squad_SetStateModelEnumTableEntityTarget(squad, key, tableRowIndex, value)
end

---comment Sets a float value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Real
function Squad_SetStateModelEnumTableFloat(squad, key, tableRowIndex, value)
end

---comment Sets an integer value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Integer
function Squad_SetStateModelEnumTableInt(squad, key, tableRowIndex, value)
end

---comment Sets a Player TargetHandle value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value PlayerID
function Squad_SetStateModelEnumTablePlayerTarget(squad, key, tableRowIndex, value)
end

---comment Sets a Squad TargetHandle value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value SquadID
function Squad_SetStateModelEnumTableSquadTarget(squad, key, tableRowIndex, value)
end

---comment Sets a Vector3f value in the squad's state model corresponding to the given key and table row index (0 based).
---@param squad SquadID
---@param key String
---@param tableRowIndex Integer
---@param value Position
function Squad_SetStateModelEnumTableVector3f(squad, key, tableRowIndex, value)
end

---comment Sets a float value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Real
function Squad_SetStateModelFloat(squad, key, value)
end

---comment Sets an integer value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Integer
function Squad_SetStateModelInt(squad, key, value)
end

---comment Sets a boolean value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Boolean
---@param allowDuplicates Boolean
function Squad_SetStateModelListBool(squad, key, value, allowDuplicates)
end

---comment Sets an Entity TargetHandle value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value EntityID
---@param allowDuplicates Boolean
function Squad_SetStateModelListEntityTarget(squad, key, value, allowDuplicates)
end

---comment Sets a float value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Real
---@param allowDuplicates Boolean
function Squad_SetStateModelListFloat(squad, key, value, allowDuplicates)
end

---comment Sets an integer value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Integer
---@param allowDuplicates Boolean
function Squad_SetStateModelListInt(squad, key, value, allowDuplicates)
end

---comment Sets a Player TargetHandle value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value PlayerID
---@param allowDuplicates Boolean
function Squad_SetStateModelListPlayerTarget(squad, key, value, allowDuplicates)
end

---comment Sets a Squad TargetHandle value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value SquadID
---@param allowDuplicates Boolean
function Squad_SetStateModelListSquadTarget(squad, key, value, allowDuplicates)
end

---comment Sets a Vector3f value in the squad's state model list corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Position
---@param allowDuplicates Boolean
function Squad_SetStateModelListVector3f(squad, key, value, allowDuplicates)
end

---comment Sets a Player TargetHandle value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value PlayerID
function Squad_SetStateModelPlayerTarget(squad, key, value)
end

---comment Sets a Squad TargetHandle value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value SquadID
function Squad_SetStateModelSquadTarget(squad, key, value)
end

---comment Sets a Vector3f value in the squad's state model corresponding to the given key.
---@param squad SquadID
---@param key String
---@param value Position
function Squad_SetStateModelVector3f(squad, key, value)
end

---comment Set current squad suppression level. Suppression value range from 0 to 1
---@param squad SquadID
---@param percentage Real
function Squad_SetSuppression(squad, percentage)
end

---comment Turn on/off display of the unit portrait veterancy stars
---@param squad SquadID
---@param visible Boolean
function Squad_SetVeterancyDisplayVisibility(squad, visible)
end

---comment Makes a squad neutral
---@param squad SquadID
function Squad_SetWorldOwned(squad)
end

---comment Spawn the entire squad at a give  n position
---@param squad SquadID
---@param pos Position
---@param spawnType String
function Squad_Spawn(squad, pos, spawnType)
end

---comment Spawn the entire squad at a given position
---@param squad SquadID
---@param pos Position
---@param toward Position
---@param spawnType String
function Squad_SpawnToward(squad, pos, toward, spawnType)
end

---comment Split the squad into 2. The new squad size is specified by the number passed in
---@param squad SquadID
---@param int Integer
function Squad_Split(squad, int)
end

---comment Abruptly stops an active ability
---@param squad SquadID
---@param ability ScarAbilityPBG
---@param bIsEarlyExit Boolean
function Squad_StopAbility(squad, ability, bIsEarlyExit)
end

---comment Suggests a posture to a squad, lasting the passed duration
---@param squad SquadID
---@param posture Integer
---@param duration Real
function Squad_SuggestPosture(squad, posture, duration)
end

---comment Returns the closest free position to the target position for the squad
---@param squad SquadID
---@param targetPosition Position
function Squad_TryFindClosestFreePosition(squad, targetPosition)
end

---comment iterates through an sgroup, returns count with AIStatsSquad
---@param sgroup SGroupID
---@param player PlayerID
function SquadGroup_CountSpawnedAndStatsInitialized(sgroup, player)
end

---comment Run a global state tree on an entity
---@param keepAlive Boolean
---@param openingBranchName String
---@param entity EntityID
function StateTree_QueueGlobalStateTreeEntity(keepAlive, openingBranchName, entity)
end

---comment Run a global state tree on a player
---@param keepAlive Boolean
---@param openingBranchName String
---@param player PlayerID
function StateTree_QueueGlobalStateTreePlayer(keepAlive, openingBranchName, player)
end

---comment Run a global state tree on a squad
---@param keepAlive Boolean
---@param openingBranchName String
---@param squad SquadID
function StateTree_QueueGlobalStateTreeSquad(keepAlive, openingBranchName, squad)
end

---comment Save the statgraph output to a file
---@param begin Boolean
function statgraph_save(begin)
end

---comment Prematurely finish all queued speech
function Subtitle_EndAllSpeech()
end

---comment Prematurely finish currently playing speech and advance the next one in queue
function Subtitle_EndCurrentSpeech()
end

---comment Plays a narrative event as a series of subtitled speech transitions when given the event's reflect ID.
---@param str String
function Subtitle_PlayNarrativeEvent(str)
end

---comment Plays a global speech with subtitle and actor icon specified in the narrative line with given ID.
---@param str String
function Subtitle_PlayNarrativeLine(str)
end

---comment Plays a global speech with subtitle and actor icon in the overlay with speech bubbles on squad decorators.
---@param briefingActorPBG ScarBriefingActorPBG
---@param loc String
---@param disableIconSubtitle Boolean
---@param audioCtrlEvent String
---@param squad SquadID
---@param is3D Boolean
function Subtitle_PlaySpeechForSquadFromLocString(briefingActorPBG, loc, disableIconSubtitle, audioCtrlEvent, squad, is3D)
end

---comment Plays a global speech with subtitle and actor icon in the overlay
---@param briefingActorPBG ScarBriefingActorPBG
---@param loc String
---@param disableIconSubtitle Boolean
---@param audioCtrlEvent String
---@param squad SquadID
---@param is3D Boolean
function Subtitle_PlaySpeechInternal(briefingActorPBG, loc, disableIconSubtitle, audioCtrlEvent, squad, is3D)
end

---comment Removes "sticky" state from currently playing speech (if any)
function Subtitle_UnstickCurrentSpeech()
end

---comment Change the local player.
---@param state lua_State*
function switchplayer(state)
end

---comment Send a player ability command (PCMD_Ability) to a player.
---@param player PlayerID
---@param dest PlayerID
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function SynchronizedCommand_PlayerAbility(player, dest, abilityPBG, skipCostAndPrereq)
end

---comment Send a positional ability command (PCMD_Ability) to a player
---@param player PlayerID
---@param dest PlayerID
---@param pos Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function SynchronizedCommand_PlayerPosAbility(player, dest, pos, abilityPBG, skipCostAndPrereq)
end

---comment Send a positional/directional ability command (PCMD_Ability) to a player
---@param player PlayerID
---@param dest PlayerID
---@param pos Position
---@param dir Position
---@param abilityPBG ScarAbilityPBG
---@param skipCostAndPrereq Boolean
function SynchronizedCommand_PlayerPosDirAbility(player, dest, pos, dir, abilityPBG, skipCostAndPrereq)
end

---comment Returns true if the taskbar is visible. (not deterministic)
function Taskbar_IsVisible()
end

---comment Sets taskbar visibility.
---@param visible Boolean
function Taskbar_SetVisibility(visible)
end

---comment Returns the relationship between 2 teams.
---@param team1 Integer
---@param team2 Integer
function Team_GetRelationship(team1, team2)
end

---comment Create a splat on the terrain
---@param _name String
---@param xpos Real
---@param zpos Real
---@param scale Real
function Terrain_CreateSplat(_name, xpos, zpos, scale)
end

---comment Draw a grid on the terrain with tunable increment
---@param increment Integer
function Terrain_DrawGrid(increment)
end

---comment Draw lines on a grid on the terrain with tunable spacing
---@param spacing Integer
function Terrain_DrawGridLines(spacing)
end

---comment Draw terrain material map cells
---@param onoff Boolean
function Terrain_DrawMaterialMap(onoff)
end

---comment Takes a ScarPosition and returns a number representing the cover type at this position
---@param pos Position
function Terrain_GetCoverType_AsNumber(pos)
end

---comment Takes a ScarPosition and returns a string representing the cover type at this position
---@param pos Position
function Terrain_GetCoverType_AsString(pos)
end

---comment Load the saved terrain height map. This will restore the state of the terrain height map to
function Terrain_LoadHeightMap()
end

---comment Save the current terrain height map. It can be restored to that state by using Terrain_LoadHeightMap.
function Terrain_SaveHeightMap()
end

---comment Hide metadata layer overlay on terrain
function TerrainHighlight_Hide()
end

---comment Display metadata layer on terrain. Replaces previously displayed terrain highlight
---@param metadataLayerName String
---@param opacity Real
function TerrainHighlight_Show(metadataLayerName, opacity)
end

---comment Returns true if the Territory contains the given SectorID.
---@param sectorID SectorID
function Territory_ContainsSectorID(sectorID)
end

---comment Returns the SectorID of the closest Sector Generator point to the given ScarPosition.
---@param pos3D Position
function Territory_FindClosestSectorToPoint(pos3D)
end

---comment Returns a table of SectorIDs that are adjacent to the given SectorID.
---@param sectorID SectorID
function Territory_GetAdjacentSectors(sectorID)
end

---comment Returns the primary entity in the given sector, if one exists, and nil otherwise.
---@param sectorID SectorID
function Territory_GetPrimaryEntityInSector(sectorID)
end

---comment Returns the sector containing the given ScarPosition.
---@param pos3D Position
function Territory_GetSectorContainingPoint(pos3D)
end

---comment Get the creator entity of the sector by sectorID
---@param sectorID SectorID
function Territory_GetSectorCreatorEntity(sectorID)
end

---comment Returns the generator point of the given sector, snapped to the surface of the terrain.
---@param sectorID SectorID
function Territory_GetSectorGeneratorPointOnTerrain(sectorID)
end

---comment Get the ID of the owner of the sector
---@param sectorID SectorID
function Territory_GetSectorOwnerID(sectorID)
end

---comment Returns true if the territory is a HexagonTerritory.
function Territory_IsHexagonTerritory()
end

---comment Add a timer to be triggered every 'freqInSec'. the timer will then run the passed-in command
---@param command String
---@param freqInSec Real
function TimerAdd(command, freqInSec)
end

---comment Add a timer to be triggered every frame the timer will then run the passed-in command
---@param command String
function TimerAddFrame(command)
end

---comment Add a timer to be triggered once after 'freqInSec' has elapsed. the timer will then run the passed-in command
---@param command String
---@param timeInSec Real
function TimerAddOnce(command, timeInSec)
end

---comment Remove specified timer
---@param command String
function TimerDel(command)
end

---comment Toggles the scanning info from the ScanForTarget track for the debug entity
function Toggle_Scanning_Info()
end

---comment Toggle physics debug drawing
---@param enable Boolean
function TogglePhysicsDebug(enable)
end

---comment Toggle physics debug drawing
---@param enable Boolean
function TogglePhysicsRaycastAsCapsuleDebug(enable)
end

---comment Add a new child named childName and of type typeName to elementName.
---@param elementName String
---@param typeName String
---@param childName String
---@param propertyTable StackVarTable
function UI_AddChild(elementName, typeName, childName, propertyTable)
end

---comment Adds a command binding for groupName.bindingName to global function callbackName.
---@param groupName String
---@param bindingName String
---@param callbackName String
function UI_AddCommandBinding(groupName, bindingName, callbackName)
end

---comment Adds the event handler on elementName for event eventName to global function callbackName(elementName, eventName).
---@param elementName String
---@param eventName String
---@param callbackName String
function UI_AddEventHandler(elementName, eventName, callbackName)
end

---comment Add text to elementName.
---@param elementName String
---@param text String
function UI_AddText(elementName, text)
end

---comment Toggle off all territory lines. Each call to UI_AllTerritoryHide must be matched by a call to UI_AllTerritoryShow
function UI_AllTerritoryHide()
end

---comment Toggle on all territory lines. Each call to UI_AllTerritoryShow must be matched by a call to UI_AllTerritoryHide
function UI_AllTerritoryShow()
end

---comment DEPRECATED! Removes a message added by UI_AutosaveMessageShow.
function UI_AutosaveMessageHide()
end

---comment DEPRECATED! Shows a message indicating that the game is autosaving.
function UI_AutosaveMessageShow()
end

---comment Opens a pop-up which takes the user directly to the camera settings
function UI_CameraOptionsPopup()
end

---comment Toggle off capture-point boundary lines. Each call to UI_CapturePointLinesHide must be matched by a call to UI_CapturePointLinesShow
function UI_CapturePointLinesHide()
end

---comment Toggle on capture-point boundary lines. Each call to UI_CapturePointLinesShow must be matched by a call to UI_CapturePointLinesHide
function UI_CapturePointLinesShow()
end

---comment Clear the contents of elementName.
---@param elementName String
function UI_Clear(elementName)
end

---comment Clears an event cue with a specific ID. The ID is obtained as a return value from either UI_CreateEventCueClickable or UI_CreateEventCueClickableByType.
---@param id Integer
function UI_ClearEventCueFromID(id)
end

---comment Clears all active event cues
function UI_ClearEventCues()
end

---comment Clears the ability phase callback.
function UI_ClearModalAbilityPhaseCallback()
end

---comment Clears the construction phase callback.
function UI_ClearModalConstructionPhaseCallback()
end

---comment Clears the construction phase callback.
function UI_ClearModalHoverCallback()
end

---comment Clears the try-to-skip-NIS callback
function UI_ClearSkipNISCallback()
end

---comment Set the numner of columns in the command card.
---@param columns Integer
function UI_CommandCardSetColumns(columns)
end

---comment Set the numner of rows in the command card.
---@param rows Integer
function UI_CommandCardSetRows(rows)
end

---comment Toggle off cover preview. Each call to UI_CoverPreviewHide must be matched by a call to UI_CoverPreviewShow
function UI_CoverPreviewHide()
end

---comment Toggle on cover preview. Each call to UI_CoverPreviewShow must be matched by a call to UI_CoverPreviewHide
function UI_CoverPreviewShow()
end

---comment Docs for this function are too cooked check file:///C:/program%20files/steam/steamapps/common/age%20of%20empires%20iv/scardocs/html/function_list.htm#UI_CreateCustomEventCueFrom
function UI_CreateCustomEventCueFrom()
end

---comment Create a custom kicker message on the entity and display to the player, rgb values are 0-255.
---@param player PlayerID
---@param entity EntityID
---@param message String
function UI_CreateEntityKickerMessage(player, entity, message)
end

---comment Creates a custom event cue. The Lua function callback passed in takes an ID as an argument which can be used to clear the event cue with UI_ClearEventCueFromID.
---@param customEventType Integer
---@param lifetime Real
---@param repeatCount Integer
---@param repeatTime Real
---@param title String
---@param description String
---@param dataTemplate String
---@param iconPath String
---@param soundPath String
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
---@param visibility EventCueVisibility
---@param function LuaFunction
function UI_CreateEventCueClickable(customEventType, lifetime, repeatCount, repeatTime, title, description, dataTemplate, iconPath, soundPath, red, green, blue, alpha, visibility, function)
end

---comment Creates a named event cue. Returns the ID associated to the created event cue item. This ID can be used to clear the event cue item with UI_ClearEventCueFromID. The Lua function callback passed in takes an ID as an argument which can be used to clear the event cue with UI_ClearEventCueFromID.
---@param eventType UIEventType
---@param lifetime Real
---@param title String
---@param description String
---@param dataTemplate String
---@param iconPath String
---@param soundPath String
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
---@param visibility EventCueVisibility
---@param function LuaFunction
function UI_CreateEventCueClickableByType(eventType, lifetime, title, description, dataTemplate, iconPath, soundPath, red, green, blue, alpha, visibility, function)
end

---comment Creates a custom event cue. The Lua function callback passed in takes an ID as an argument which can be used to clear the event cue with UI_ClearEventCueFromID. Enables optional parameter that allows the event to only tick its duration whilst it is at the front of the stack to ensure it will always be visible in the high-priority stack.
---@param customEventType Integer
---@param lifetime Real
---@param repeatCount Integer
---@param repeatTime Real
---@param title String
---@param description String
---@param dataTemplate String
---@param iconPath String
---@param soundPath String
---@param red Integer
---@param green Integer
---@param blue Integer
---@param alpha Integer
---@param visibility EventCueVisibility
---@param function LuaFunction
function UI_CreateEventCueClickableCanQueue(customEventType, lifetime, repeatCount, repeatTime, title, description, dataTemplate, iconPath, soundPath, red, green, blue, alpha, visibility, function)
end

---comment Create a blips on a ScarMarker from a sender. sender is used for retrieving player information like team color
---@param sender PlayerID
---@param marker MarkerID
---@param lifeTime Real
---@param dataTemplate String
function UI_CreateMinimapBlipOnMarkerFrom(sender, marker, lifeTime, dataTemplate)
end

---comment Create a blips on a position from a sender. sender is used for retrieving player information like team color
---@param sender PlayerID
---@param position Position
---@param lifeTime Real
---@param dataTemplate String
function UI_CreateMinimapBlipOnPosFrom(sender, position, lifeTime, dataTemplate)
end

---comment Create a custom kicker message on the entity and display to the player, rgb values are 0-255.
---@param player PlayerID
---@param position Position
---@param message String
function UI_CreatePositionKickerMessage(player, position, message)
end

---comment Create a custom kicker message on the entity and display to the player, rgb values are 0-255.
---@param player PlayerID
---@param squad SquadID
---@param message String
function UI_CreateSquadKickerMessage(player, squad, message)
end

---comment Create a position tag.
---@param position Position
function UI_CreateTagForPosition(position)
end

---comment Hides the mouse cursor
function UI_CursorHide()
end

---comment Shows the mouse cursor if it has been hidden
function UI_CursorShow()
end

---comment Docs are cooked, check file:///C:/program%20files/steam/steamapps/common/age%20of%20empires%20iv/scardocs/html/function_list.htm#UI_DestroyTagForPosition
---@param position Position
function UI_DestroyTagForPosition(position)
end

---comment Enable or disable entity decorator. The default is decorator enabled.
---@param entity EntityID
---@param enabled Boolean
function UI_EnableEntityDecorator(entity, enabled)
end

---comment Enable or disable entity minimap indicator. The default is enabled.
---@param entity EntityID
---@param enabled Boolean
function UI_EnableEntityMinimapIndicator(entity, enabled)
end

---comment Enable or disable entity selection visuals. The default is visuals enabled.
---@param entity EntityID
---@param enabled Boolean
function UI_EnableEntitySelectionVisuals(entity, enabled)
end

---comment Enables or disables event cues.
---@param gameEventType GameEventID
---@param enable Boolean
function UI_EnableGameEventCueType(gameEventType, enable)
end

---comment Enables or disables resource kickers.
---@param resourceType ResourceType
---@param enable Boolean
function UI_EnableResourceTypeKicker(resourceType, enable)
end

---comment Enable or disable the squad decorator. The default is decorator enabled.
---@param squad SquadID
---@param enabled Boolean
function UI_EnableSquadDecorator(squad, enabled)
end

---comment Enable or disable squad minimap indicator. The default is enabled.
---@param squad SquadID
---@param enabled Boolean
function UI_EnableSquadMinimapIndicator(squad, enabled)
end

---comment Enables or disables event cues.
---@param uiEventType UIEventType
---@param enable Boolean
function UI_EnableUIEventCueType(uiEventType, enable)
end

---comment Triggers an event cue to start its fadeout animation. The animation is determined in XAML.
---@param id Integer
function UI_FadeOutEventCueFromID(id)
end

---comment Flash an ability command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param ability ScarAbilityPBG
---@param stopOnClick Boolean
function UI_FlashAbilityButton(ability, stopOnClick)
end

---comment Flash a construction item command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param ebp ScarEntityPBG
---@param stopOnClick Boolean
function UI_FlashConstructionButton(ebp, stopOnClick)
end

---comment Flashes the entity using attributes from [tuning][ui]
---@param entity EntityID
---@param actionOnName String
function UI_FlashEntity(entity, actionOnName)
end

---comment Flash an entity order command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param command EntityCommandType
---@param stopOnClick Boolean
function UI_FlashEntityCommandButton(command, stopOnClick)
end

---comment Flash an event cue item.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param eventCueID Integer
---@param stopOnClick Boolean
function UI_FlashEventCue(eventCueID, stopOnClick)
end

---comment Flash a menu command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param menuName String
---@param stopOnClick Boolean
function UI_FlashMenu(menuName, stopOnClick)
end

---comment Flash an objective counter.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param objectiveID Integer
function UI_FlashObjectiveCounter(objectiveID)
end

---comment Flash an objective.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param objectiveID Integer
---@param stopOnClick Boolean
function UI_FlashObjectiveIcon(objectiveID, stopOnClick)
end

---comment Flash a production building button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param type String
---@param stopOnClick Boolean
function UI_FlashProductionBuildingButton(type, stopOnClick)
end

---comment Flash a production item command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param type ProductionItemType
---@param pbg PropertyBagGroup
---@param stopOnClick Boolean
function UI_FlashProductionButton(type, pbg, stopOnClick)
end

---comment Flash a squad order command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param command SquadCommandType
---@param stopOnClick Boolean
function UI_FlashSquadCommandButton(command, stopOnClick)
end

---comment Flash a button on the USS for this entity.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param entity EntityID
---@param stopOnClick Boolean
function UI_FlashUSSEntityButton(entity, stopOnClick)
end

---comment Flash a button on the USS for this squad.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param squad SquadID
---@param stopOnClick Boolean
function UI_FlashUSSSquadButton(squad, stopOnClick)
end

---comment Returns the icon name for a given ability
---@param abilityBag ScarAbilityPBG
function UI_GetAbilityIconName(abilityBag)
end

---comment Returns the index of the currently opened page
function UI_GetActiveRadialMenuPage()
end

---comment Returns the type of the menu which is currently open. These types are: RMT_Invalid (returned as the default value if no radial is open), RMT_ContextualRadialMenu, RMT_RegimentsMenu, RMT_FindMenu, RMT_LandmarkMenu
function UI_GetActiveRadialMenuType()
end

---comment Returns whether all decorators are enabled or not
function UI_GetDecoratorsEnabled()
end

---comment Gets an enum value indicating the visibility of decorators for an entity.
---@param entity Entity
function UI_GetDecoratorVisibilityEntity(entity)
end

---comment Gets an enum value indicating the visibility of decorators for a squad.
---@param squad Squad
function UI_GetDecoratorVisibilitySquad(squad)
end

---comment Returns a resource amount representing the current weights the government/vilager automation system is using
function UI_GetGovernmentRadialWeights()
end

---comment Returns the current size of the selection marquee as a float.
function UI_GetMarqueeRadius()
end

---comment Turn on squad highlight UI feature for the specified duration.
---@param squad SquadID
---@param duration Real
function UI_HighlightSquad(squad, duration)
end

---comment Check if content is loaded for a specific layer
---@param layer FrontEnd_Layer
---@param contentPath String
function UI_IsLayerContentLoaded(layer, contentPath)
end

---comment Check if Salisbury Minimap focus mode is active (expanded Minimap with pings available to the controller)
function UI_IsMinimapFocusActive()
end

---comment Check if the player currently has the 'queue modifier' key down (shift on PC, LT on controller)
function UI_IsQueueModifierDown()
end

---comment Is a replay match currently.
function UI_IsReplay()
end

---comment Returns true when the user has a controller as their preferred input type
function UI_IsXboxControllerUI()
end

---comment Returns true when running on an xbox or PC with with the -showXboxUI argument
function UI_IsXboxUI()
end

---comment Fades the letterbox to a given RGBA colour over a number of seconds by a given aspect ratio.
---@param r Real
---@param g Real
---@param b Real
---@param a Real
---@param duration Real
---@param aspectRatio Real
---@param persistent Boolean
function UI_LetterboxFade(r, g, b, a, duration, aspectRatio, persistent)
end

---comment If the message box is activated, close it.  The callback will receive the button parameter given.
---@param dialogResult DialogResult
function UI_MessageBoxHide(dialogResult)
end

---comment Reset message box data set by previous calls (to display a new message box).
function UI_MessageBoxReset()
end

---comment Set the text/tooltip/enabled state of a button on the dialog.
---@param dialogResult DialogResult
---@param text String
---@param tooltip String
---@param icon String
---@param isEnabled Boolean
function UI_MessageBoxSetButton(dialogResult, text, tooltip, icon, isEnabled)
end

---comment Set the title and message body of the dialog.
---@param title String
---@param message String
function UI_MessageBoxSetText(title, message)
end

---comment Create a reticule
---@param reticulePbg ScarReticulePBG
---@param radius Real
function UI_ModalVisual_CreateReticule(reticulePbg, radius)
end

---comment Destroy a modal visual
---@param id Integer
function UI_ModalVisual_Destroy(id)
end

---comment Brings up a message and arrow pointing to a HUD feature.
---@param newHUDFeature HUDFeatureType
---@param featureText String
---@param featureIcon String
---@param duration Real
function UI_NewHUDFeature(newHUDFeature, featureText, featureIcon, duration)
end

---comment Toggle off terrain out of bounds lines. Each call to UI_OutOfBoundsLinesHide must be matched by a call to UI_OutOfBoundsLinesShow
function UI_OutOfBoundsLinesHide()
end

---comment Toggle on terrain out of bounds lines. Each call to UI_OutOfBoundsLinesShow must be matched by a call to UI_OutOfBoundsLinesShowHide
function UI_OutOfBoundsLinesShow()
end

---comment Will select the correct locID based on the preferred input mode.
---@param kbmID Integer
---@param gamepadID Integer
function UI_PickIDForInputMode(kbmID, gamepadID)
end

---comment Remove elementName from its parent.
---@param elementName String
function UI_Remove(elementName)
end

---comment Removes a command binding for groupName.bindingName.
---@param groupName String
---@param bindingName String
function UI_RemoveCommandBinding(groupName, bindingName)
end

---comment Removes the event handler on elementName for event eventName to global function callbackName(elementName, eventName).
---@param elementName String
---@param eventName String
---@param callbackName String
function UI_RemoveEventHandler(elementName, eventName, callbackName)
end

---comment Only allow buildings to be placed inside a marker.
---@param marker MarkerID
function UI_RestrictBuildingPlacement(marker)
end

---comment Fades the screen to a given RGBA colour over a number of seconds. mouse input is blocked during the fade, and you can control whether the input keeps being blocked after the fade has ended (be careful!)
---@param r Real
---@param g Real
---@param b Real
---@param a Real
---@param duration Real
---@param persistent Boolean
function UI_ScreenFade(r, g, b, a, duration, persistent)
end

---comment Toggle off sector lines. Each call to UI_SectorsHide must be matched by a call to UI_SectorsShow
function UI_SectorsHide()
end

---comment Toggle on sector lines. Each call to UI_SectorsShow must be matched by a call to UI_SectorsHide
function UI_SectorsShow()
end

---comment Sets the game to allow allied squads to be selected at the same time as your own squads
---@param allow Boolean
function UI_SetAlliedBandBoxSelection(allow)
end

---comment Enables or disable load and save features at the pause menu
---@param allowLoadAndSave Boolean
function UI_SetAllowLoadAndSave(allowLoadAndSave)
end

---comment Sets a callback firing when user select a control group either by hotkey or by control group button in the format function(controlGroupIndex)
---@param callback function
function UI_SetControlGroupSelectedCallback(callback)
end

---comment Sets the visibility of the Command Point meter.
---@param visible Boolean
function UI_SetCPMeterVisibility(visible)
end

---comment Converts table to a data context for bindings of elementName.
---@param elementName String
---@param table StackVarTable
function UI_SetDataContext(elementName, table)
end

---comment Enables or disables all decorators
---@param enabled Boolean
function UI_SetDecoratorsEnabled(enabled)
end

---comment Enable/Disable pause menu showing up when the pause menu hot key is pressed.
---@param isEnable Boolean
function UI_SetEnablePauseMenu(isEnable)
end

---comment Converts table to a data context exposed through entity models.
---@param entity EntityID
---@param table StackVarTable
function UI_SetEntityDataContext(entity, table)
end

---comment Explicitly set the decorator a squad should use.
---@param entity EntityID
---@param decorator String
function UI_SetEntityDecorator(entity, decorator)
end

---comment Sets the game to show the entity ghost in a spotted state
---@param entity EntityID
function UI_SetEntityGhostSpottedStaggered(entity)
end

---comment Sets the game to force show subtitles even if the player has them turned off.
---@param forceShowSubtitles Boolean
function UI_SetForceShowSubtitles(forceShowSubtitles)
end

---comment Sets the angle of True North for the minimap in degrees
---@param trueNorthAngleDeg Real
function UI_SetMinimapTrueNorth(trueNorthAngleDeg)
end

---comment Sets a function to be called when the player clicks an ability and gets a targeting UI. Your function will have 2 arguments: [Blueprint] ability blueprint, [integer] phase: TP_Position, TP_Facing (only if ability requires facing), TP_Issued (not deterministic) or TP_Cancelled (for all issuables)
---@param function LuaFunction
function UI_SetModalAbilityPhaseCallback(function)
end

---comment Sets a function to be called when the player clicks a construction item and gets a targeting UI. Your function will have 2 arguments: [Blueprint] ability blueprint, [integer] phase: TP_Position, TP_Facing (only if ability requires facing), TP_Issued (not strict) or TP_Cancelled (for all issuables)
---@param function LuaFunction
function UI_SetModalConstructionPhaseCallback(function)
end

---comment Sets a function to be called when the player clicks a construction item and gets a targeting UI. Your function will have 2 arguments: [Blueprint] ability blueprint, [integer] phase: TP_Position, TP_Facing (only if ability requires facing), TP_Issued (not strict) or TP_Cancelled (for all issuables)
---@param function LuaFunction
function UI_SetModalHoverCallback(function)
end

---comment Converts table to a data context exposed through player models.
---@param player PlayerID
---@param table StackVarTable
function UI_SetPlayerDataContext(player, table)
end

---comment Sets the property propertyName on elementName to value stackVar.
---@param elementName String
---@param propertyName String
---@param stackVar StackVar
function UI_SetPropertyValue(elementName, propertyName, stackVar)
end

---comment Sets the properties on elementName to the key/value pairs in propertyTable.
---@param elementName String
---@param propertyTable StackVarTable
function UI_SetPropertyValues(elementName, propertyTable)
end

---comment Sets a callback firing when user try to skip the NIS
---@param function LuaFunction
function UI_SetSkipNISCallback(function)
end

---comment Converts table to a data context exposed through squad models.
---@param squad SquadID
---@param table StackVarTable
function UI_SetSquadDataContext(squad, table)
end

---comment Explicitly set the decorator a squad should use.
---@param squad SquadID
---@param decorator String
function UI_SetSquadDecorator(squad, decorator)
end

---comment Turn on of off the squad decorator being always visible. The default is decorator not always visible.
---@param squad SquadID
---@param alwaysVisible Boolean
function UI_SetSquadDecoratorAlwaysVisible(squad, alwaysVisible)
end

---comment Removes a message added by Game_ShowSystemMessage.
---@param message String
function UI_SystemMessageHide(message)
end

---comment Shows a system message in the area where Game Paused text appears.
---@param message String
function UI_SystemMessageShow(message)
end

---comment Toggles all decorators on or off.
function UI_ToggleDecorators()
end

---comment Removes the restriction on building placement.
function UI_UnrestrictBuildingPlacement()
end

---comment Displays a brief UI warning in the critical alert message area.
---@param text String
function UIWarning_Show(text)
end

---comment Toggles on or off vaulting debug drawing
function Vaulting_DrawDebug()
end

---comment Calculates the length of the provided vector
---@param pos Position
function Vector_Length(pos)
end

---comment Linearly interpolates between the two provided vectors based on the provided factor
---@param factor Real
---@param pos1 Position
---@param pos2 Position
function Vector_Lerp(factor, pos1, pos2)
end

---comment Returns the normalized version of the provided vector
---@param pos Position
function Vector_Normalize(pos)
end

---comment Toggle enabling all weapon gound attack
function Weapon_AllWeaponAttackGround()
end

---comment Toggle weapon animation information
function Weapon_AnimInfo()
end

---comment Toggle weapon attack radii around the entities
function Weapon_AttackRadii()
end

---comment Toggle weapon firing lines
function Weapon_Firing()
end

---comment Toggle weapon hard point information
function Weapon_HardPointInfo()
end

---comment Toggle weapon state and calculation information
function Weapon_Info()
end

---comment Toggle weapon best target result
function Weapon_PrintBestTarget()
end

---comment Toggle weapon priority information (must TAG entity you want info about)
function Weapon_PriorityInfo()
end

---comment Toggle weapon projectile denotation timer
function Weapon_ProjectileDetonateTimer()
end

---comment Toggle weapon projectile information
function Weapon_ProjectileInfo()
end

---comment Toggle weapon scatter target information
function Weapon_ScatterInfo()
end

---comment Toggle weapon tracking lines and maximum angles
function Weapon_Tracking()
end

---comment Triggers a UI event cue and an audio cue that the player is about to lose the game.
---@param player PlayerID
---@param warningLevel Integer
function WinWarning_PublishLoseReminder(player, warningLevel)
end

---comment Call UI_TitleDestroy to remove.
---@param text String
---@param fadeIn Real
---@param duration Real
---@param fadeOut Real
function WinWarning_ShowLoseWarning(text, fadeIn, duration, fadeOut)
end

---comment Returns the average positions of the entities in the area
---@param player PlayerID
---@param pos Position
---@param radius Real
---@param ownerType OwnerType
---@param onlyEntitiesInSquads Boolean
function World_CalculateEntitiesAveragePositionInArea(player, pos, radius, ownerType, onlyEntitiesInSquads)
end

---comment Changes target interactivity zones to adjusted interactivity (255 max), probably only safe to use post NIS
---@param targetInteractivity Integer
---@param adjustedInteractivity Integer
function World_ChangeZoneInteractivity(targetInteractivity, adjustedInteractivity)
end

---comment Destroys walls (entities with a wall_ext) near a marker
---@param marker MarkerID
function World_DestroyWallsNearMarker(marker)
end

---comment Get the distance between a squad group and a point.
---@param egroup EGroupID
---@param p1 Position
---@param closest Boolean
function World_DistanceEGroupToPoint(egroup, p1, closest)
end

---comment Get the distance between two points.
---@param p1 Position
---@param p2 Position
function World_DistancePointToPoint(p1, p2)
end

---comment Get the distance between a squad group and a point.
---@param sgroup SGroupID
---@param p1 Position
---@param closest Boolean
function World_DistanceSGroupToPoint(sgroup, p1, closest)
end

---comment Get the distance squared between two points.
---@param p1 Position
---@param p2 Position
function World_DistanceSquaredPointToPoint(p1, p2)
end

---comment Determines whether empty players get converted to null resource points.
---@param enable Boolean
function World_EnableReplacementObjectForEmptyPlayers(enable)
end

---comment Enables or disables shared line of sight between these two players
---@param p0 PlayerID
---@param p1 PlayerID
---@param enableSharedVision Boolean
function World_EnableSharedLineOfSight(p0, p1, enableSharedVision)
end

---comment Wins/loses a single team mission for the local teams, with given win reason
---@param localPlayerWon Boolean
---@param winReason WinReason
function World_EndSP(localPlayerWon, winReason)
end

---comment Clears the egroup, then finds and adds all entities to it
---@param egroup EGroupID
function World_GetAllEntities(egroup)
end

---comment Clears the egroup, then finds and adds all entities of the given type to it
---@param egroup EGroupID
---@param type String
function World_GetAllEntitiesOfType(egroup, type)
end

---comment Clears the egroup, then finds and adds all neutral entities to it
---@param egroup EGroupID
function World_GetAllNeutralEntities(egroup)
end

---comment Clears the sgroup, then finds and adds all neutral squads to it
---@param sgroup SGroupID
function World_GetAllNeutralSquads(sgroup)
end

---comment Clears the sgroup, then finds and adds all squads to it
---@param sgroup SGroupID
function World_GetAllSquads(sgroup)
end

---comment Clears the sgroup, then finds and adds all squads of the given type to it
---@param sgroup SGroupID
---@param type String
function World_GetAllSquadsOfType(sgroup, type)
end

---comment Returns all entities with this blueprint - warning this function iterates over all entities so it is slow
---@param pbg ScarEntityPBG
---@param outEntities EGroupID
function World_GetBlueprintEntities(pbg, outEntities)
end

---comment Appends all cover points to an egroup.
---@param group EGroupID
function World_GetCoverPoints(group)
end

---comment Clears the egroup, then finds and adds entities near the marker to the egroup
---@param player PlayerID
---@param egroup EGroupID
---@param marker MarkerID
---@param ownerType OwnerType
function World_GetEntitiesNearMarker(player, egroup, marker, ownerType)
end

---comment Clears the egroup, then finds and adds entities near the point to the egroup
---@param player PlayerID
---@param egroup EGroupID
---@param pos Position
---@param radius Real
---@param ownerType OwnerType
function World_GetEntitiesNearPoint(player, egroup, pos, radius, ownerType)
end

---comment Clears the egroup, then finds and adds entities within the territory sector to the egroup
---@param player PlayerID
---@param egroup EGroupID
---@param inSectorID Integer
---@param ownerType OwnerType
function World_GetEntitiesWithinTerritorySector(player, egroup, inSectorID, ownerType)
end

---comment Return the total number of game (simulation) ticks elapsed.
function World_GetGameTicks()
end

---comment Return the total game time in seconds.
function World_GetGameTime()
end

---comment returns the height of ground at 2D pos x,y
---@param x Real
---@param y Real
function World_GetHeightAt(x, y)
end

---comment Returns the interaction stage of the cell in the provided position
---@param position Position
function World_GetInteractionStageAtPoint(position)
end

---comment Returns the total playable length of the game world (z coordinate)
function World_GetLength()
end

---comment Get the Biome PBG's name of the specified terrain metadata layer and the specified coordinates.
---@param layerName String
---@param x Real
---@param y Real
function World_GetMetadataBiomePBGName(layerName, x, y)
end

---comment Get the boolean value of the specified terrain metadata layer and the specified coordinates.
---@param layerName String
---@param x Real
---@param y Real
function World_GetMetadataLayerBoolean(layerName, x, y)
end

---comment Get the integer value of the specified terrain metadata layer and the specified coordinates.
---@param layerName String
---@param x Real
---@param y Real
function World_GetMetadataLayerInteger(layerName, x, y)
end

---comment Get the numeric value of the specified terrain metadata layer and the specified coordinates.
---@param layerName String
---@param x Real
---@param y Real
function World_GetMetadataLayerNumber(layerName, x, y)
end

---comment Get the PBG of the specified terrain metadata layer and the specified coordinates.
---@param layerName String
---@param x Real
---@param y Real
function World_GetMetadataLayerPBG(layerName, x, y)
end

---comment Get the PBG of the specified terrain metadata layer and the specified coordinates.
---@param layerName String
---@param x Real
---@param y Real
function World_GetMetadataLayerString(layerName, x, y)
end

---comment returns the nearest intractable position to the supplied position
---@param position Position
function World_GetNearestInteractablePoint(position)
end

---comment Find and add neutral entities near the marker to the egroup
---@param egroup EGroupID
---@param marker MarkerID
function World_GetNeutralEntitiesNearMarker(egroup, marker)
end

---comment Find and add neutral entities near the point to the egroup
---@param egroup EGroupID
---@param pos Position
---@param radius Real
function World_GetNeutralEntitiesNearPoint(egroup, pos, radius)
end

---comment Find and add neutral entities within the territory sector to the egroup
---@param egroup EGroupID
---@param sectorID Integer
function World_GetNeutralEntitiesWithinTerritorySector(egroup, sectorID)
end

---comment Return the number of entities of the same ebp in the sphere volume
---@param ebp ScarEntityPBG
---@param pos Position
---@param radius Real
function World_GetNumEntitiesNearPoint(ebp, pos, radius)
end

---comment Returns the number of strategic points on this map (does not count strat. objectives)
function World_GetNumStrategicPoints()
end

---comment Returns a position that is offset a certain distance from the position/heading passed in. see ScarUtil.scar for explanation of 'offset' parameter.
---@param position Position
---@param heading Position
---@param offset Integer
---@param distance Real
function World_GetOffsetPosition(position, heading, offset, distance)
end

---comment Offsets the input position relative to the facing target
---@param position Position
---@param facingTarget Position
---@param offset Real
function World_GetOffsetPositionRelativeToFacingTarget(position, facingTarget, offset)
end

---comment Returns a position that is offset from the input position by the offset vector rotated by the direction supplied
---@param position Position
---@param heading Position
---@param offset Position
function World_GetOffsetVectorPosition(position, heading, offset)
end

---comment Returns the player at a given index, numbers start at one
---@param index Integer
function World_GetPlayerAt(index)
end

---comment Return the total number of players in the world
function World_GetPlayerCount()
end

---comment Returns the player index given the Player*
---@param player PlayerID
function World_GetPlayerIndex(player)
end

---comment Returns the blueprint of a chosen squad for a race
---@param racePBG ScarRacePBG
---@param index Integer
function World_GetPossibleSquadsBlueprint(racePBG, index)
end

---comment Returns the number of types of squads a race can build
---@param racePBG ScarRacePBG
function World_GetPossibleSquadsCount(racePBG)
end

---comment Returns the race index of a race, given its name (from the ME).
---@param racename String
function World_GetRaceBlueprint(racename)
end

---comment Returns a random integer with range [min, max]
---@param min Integer
---@param max Integer
function World_GetRand(min, max)
end

---comment Returns maximum number of players in this match
function World_GetScenarioMaxPlayers()
end

---comment Given any position in the world, this function will return position safe for spawning a given entity
---@param around Position
---@param entity EntityID
function World_GetSpawnablePosition(around, entity)
end

---comment Clears the sgroup, then finds and adds squads near the marker to the sgroup
---@param player PlayerID
---@param sgroup SGroupID
---@param marker MarkerID
---@param ownerType OwnerType
function World_GetSquadsNearMarker(player, sgroup, marker, ownerType)
end

---comment Clears the sgroup, then finds and adds squads near the point to the sgroup
---@param player PlayerID
---@param sgroup SGroupID
---@param pos Position
---@param radius Real
---@param ownerType OwnerType
function World_GetSquadsNearPoint(player, sgroup, pos, radius, ownerType)
end

---comment Clears the sgroup, then finds and adds squads within territory sector identified by sector ID
---@param player PlayerID
---@param sgroup SGroupID
---@param inSectorID Integer
---@param ownerType OwnerType
function World_GetSquadsWithinTerritorySector(player, sgroup, inSectorID, ownerType)
end

---comment Appends all the strategic resource points to an egroup.
---@param group EGroupID
---@param bIncludeVP Boolean
function World_GetStrategyPoints(group, bIncludeVP)
end

---comment Returns one or more sector IDs that would connect two unconnected pieces of territory. return value is through a table (since there can be more than one way to connect territory) - each entry in this table is a table of sector IDs.
---@param sectorID1 Integer
---@param sectorID2 Integer
---@param results StackVarTable
function World_GetTeamTerritoryGaps(sectorID1, sectorID2, results)
end

---comment returns the cell type of the cell in the specified coordinates. 0 = Sky, 1 = Land, 2 = Water.
---@param x Real
---@param y Real
function World_GetTerrainCellType(x, y)
end

---comment Return the sector ID from the position
---@param pos Position
function World_GetTerritorySectorID(pos)
end

---comment Returns the position of a sectors generator point.
---@param inSectorID Integer
function World_GetTerritorySectorPosition(inSectorID)
end

---comment Returns the total playable width of the game world (x coordinate)
function World_GetWidth()
end

---comment Returns whether the interaction stage is currently active
---@param stage Integer
function World_IsCurrentInteractionStageActive(stage)
end

---comment Is the game over?
function World_IsGameOver()
end

---comment Returns true if position is in-supply for the given player
---@param player PlayerID
---@param pos Position
function World_IsInSupply(player, pos)
end

---comment Returns whether or not the game type of this world is multiplayer
function World_IsMultiplayerGame()
end

---comment Returns true if position if part of the entity territory
---@param player PlayerID
---@param position Position
function World_IsPointInPlayerTerritory(player, position)
end

---comment Returns if a position is on walkable wall
---@param p Position
function World_IsPosOnWalkableWall(p)
end

---comment Returns TRUE if the game is currently in a replay state.
function World_IsReplay()
end

---comment Find if player has ownership to this territory sector.
---@param player PlayerID
---@param inSectorID Integer
function World_IsTerritorySectorOwnedByPlayer(player, inSectorID)
end

---comment Kills the player with a reason.
---@param player PlayerID
---@param reason KillPlayerReason
function World_KillPlayer(player, reason)
end

---comment Quit the game without declaring it over and return to frontend.
function World_LeaveGameMatch()
end

---comment Returns true if the squad is owned by the world
---@param entity EntityID
function World_OwnsEntity(entity)
end

---comment Returns true if the squad is owned by the world
---@param squad SquadID
function World_OwnsSquad(squad)
end

---comment Returns true if two world positions are in proximity to each other
---@param p1 Position
---@param p2 Position
---@param prox Real
function World_PointPointProx(p1, p2, prox)
end

---comment Creates a new Position object.
---@param x Real
---@param y Real
---@param z Real
function World_Pos(x, y, z)
end

---comment Returns if given position is in playable area.
---@param pos Position
function World_PosInBounds(pos)
end

---comment DO NOT CALL UNLESS YOU DO AUTOMATED TESTING
function World_Reset()
end

---comment Unlocks all the interaction stages
---@param visibilityStatus Boolean
function World_SetAllInteractiveStagesVisibility(visibilityStatus)
end

---comment Sets a particular sector in the world as a supply provider (or not)
---@param point Position
---@param bSupply Boolean
function World_SetDesignerSupply(point, bSupply)
end

---comment Set current interaction stage to value supplied, must be >= 0
---@param stage Integer
function World_SetInteractionStage(stage)
end

---comment Sets the player to a lose state, with a reason for losing, and kills the player
---@param player PlayerID
function World_SetPlayerLose(player)
end

---comment Sets the player to a win state.
---@param player PlayerID
function World_SetPlayerWin(player)
end

---comment Enables or disables shared line of sight between these two players, and merges explored maps when needed
---@param p0 PlayerID
---@param p1 PlayerID
---@param enableSharedVision Boolean
function World_SetSharedLineOfSightEnabledAndMergeExploredMaps(p0, p1, enableSharedVision)
end

---comment Sets every player on a team to a win state, with a reason for winning. Also sets all other players to a lose state, and kills them (if they're not already dead)
---@param winningTeam Integer
---@param winReason WinReason
function World_SetTeamWin(winningTeam, winReason)
end

---comment spawn a demolitions charge at a position, 'player' is the one that owns the demolitions and can detonate them.
---@param player PlayerID
---@param pos Position
function World_SpawnDemolitionCharge(player, pos)
end

---comment Returns true if the two points are in the same territory region, and owned by the specified territory team, Returns false otherwise.
---@param team_index Integer
---@param p1 Position
---@param p2 Position
function World_TeamTerritoryPointsConnected(team_index, p1, p2)
end
