function onUpdate(elapsed)
    if curStep >= 0 then
        songPos = getSongPosition()
        local currentBeat = (songPos/3000)*(curBpm/80)
        doTweenX('tuin', 'camHUD', 56-75*math.sin((currentBeat*0.2)*math.pi), 0.005)
        --opponent
        noteTweenY('defaultPlayerStrumY0', 0, defaultPlayerStrumY0 - 30*math.sin((currentBeat+1*0.3)*math.pi), 0.3)
        noteTweenY('defaultPlayerStrumY1', 1, defaultPlayerStrumY1 + 30*math.sin((currentBeat+0*0.3)*math.pi), 0.3)
        noteTweenY('defaultPlayerStrumY2', 2, defaultPlayerStrumY2 - 30*math.sin((currentBeat+1*0.3)*math.pi), 0.3)
        noteTweenY('defaultPlayerStrumY3', 3, defaultPlayerStrumY3 + 30*math.sin((currentBeat+0*0.3)*math.pi), 0.3)
        noteTweenX(defaultPlayerStrumX0, 0, defaultPlayerStrumX0 - 10*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX1, 1, defaultPlayerStrumX1 + 20*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX2, 2, defaultPlayerStrumX2 + 30*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX3, 3, defaultPlayerStrumX3 - 20*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        --player
        noteTweenY('defaultOpponentStrumY0', 4, defaultOpponentStrumY0 - 50*math.sin((currentBeat+1*0.3)*math.pi), 0.3)
        noteTweenY('defaultOpponentStrumY1', 5, defaultOpponentStrumY1 - 50*math.sin((currentBeat-0*0.3)*math.pi), 0.3)
        noteTweenY('defaultOpponentStrumY2', 6, defaultOpponentStrumY2 - 50*math.sin((currentBeat+1*0.3)*math.pi), 0.3)
        noteTweenY('defaultOpponentStrumY3', 7, defaultOpponentStrumY3 - 50*math.sin((currentBeat-0*0.3)*math.pi), 0.3)
        noteTweenX(defaultOpponentStrumX0, 4, defaultOpponentStrumX0 + 20*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX1, 5, defaultOpponentStrumX1 + 10*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX2, 6, defaultOpponentStrumX2 - 30*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX3, 7, defaultOpponentStrumX3 - 60*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
    end
end