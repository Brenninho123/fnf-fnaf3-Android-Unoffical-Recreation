local allowCountdown = false
function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then
        startVideo('cutscene1')
        allowCountdown = true
        for i = 1, 4 do
            noteTweenX("NoteMove" .. i, i - 1, -1500, 0.1, cubeOut)
        end
        return Function_Stop
    end
    return Function_Continue
end