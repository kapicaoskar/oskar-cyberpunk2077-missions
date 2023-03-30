function createMission(misName , misDesc, misCoords)
  local questName = misName
  local questDescription = misDesc
  local questCoords = misCoords

  local quest = Game.GetQuestsSystem():CreateQuest(questName, Game.GetPlayer())

  quest:SetFact(questName, true)
  quest:SetQuestRecordID(Game.GetTweakDB():GetRecord("Quests", questName))

  local questMarker = Game.GetTargetingSystem():CreateQuestMarker(questCoords, questName, Game.GetPlayer())
  questMarker:SetQuest(quest)

  quest:SetDescription(questDescription)
  quest:SetSourceRecordID(Game.GetTweakDB():GetRecord("QuestSources", "OskarDev"))

  quest:Activate()

  return quest
end

createMission("Search for Oskar" , "Find the developer." , Vector4.new(-2211.6, -408.8, 147.9, 0.0)
