local Players = game:GetService("Players")
local VoiceChatService = game:GetService("VoiceChatService")
 
local localPlayer = Players.LocalPlayer
local success, enabled = pcall(function()
    return VoiceChatService:IsVoiceEnabledForUserIdAsync(localPlayer.UserId)
end)
if success and enabled then
    localPlayer.PlayerGui.MyVoiceGui.Enabled = true
end
