-- Resolve Free Bridge: current timeline audio export
-- Tested command pattern for DaVinci Resolve 21.1 Free.
-- This file is intentionally simple. The first bridge milestone is
-- executing equivalent code through the Resolve Lua Console.

pm = resolve:GetProjectManager()
p = pm:GetCurrentProject()
t = p:GetCurrentTimeline()

p:SetRenderSettings({
    SelectAllFrames = true,
    TargetDir = "C:\\Temp",
    CustomName = "resolve_free_bridge_audio.wav",
    ExportVideo = false,
    ExportAudio = true
})

j = p:AddRenderJob()
print("JOB:", j)
print("START:", p:StartRendering(j))