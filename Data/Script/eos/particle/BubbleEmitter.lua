require "eos.common"

-- PARTICLES

local BubbleAnim = Class("BubbleAnim", RogueEssence.Content.LoopingAnim)

BubbleAnim.MovingTime = 0
BubbleAnim.StartLoc = RogueElements.Loc
BubbleAnim.EndLoc = RogueElements.Loc
BubbleAnim.StartHeight = 0
BubbleAnim.EndHeight = 0
BubbleAnim.Direction = RogueElements.Dir
BubbleAnim.LingerStart = 0
BubbleAnim.LingerEnd = 0

BubbleAnim.locHeight = 0
BubbleAnim.mapLoc = RogueElements.Loc

BubbleAnim.ResultAnim = nil
BubbleAnim.Layer = 0

function BubbleAnim:initialize(emittable, moveTime, startLoc, newEndPos, startHeight, endHeight, dir, lingerStart, lingerEnd, layer)
    RogueEssence.Content.LoopingAnim.initialize(self)

    BubbleAnim.MovingTime = moveTime
    BubbleAnim.StartLoc = startLoc
    BubbleAnim.EndLoc = newEndPos
    BubbleAnim.StartHeight = startHeight
    BubbleAnim.EndHeight = endHeight
    BubbleAnim.Direction = dir
    BubbleAnim.LingerStart = lingerStart
    BubbleAnim.LingerEnd = lingerEnd

    BubbleAnim.locHeight = BubbleAnim.StartHeight
    BubbleAnim.mapLoc = BubbleAnim.StartLoc
                
    BubbleAnim.ResultAnim = emittable
    BubbleAnim.Layer = layer
end

function BubbleAnim:Update(scene, elapsedTime)
    
    function ToFrames(ticks)
        return math.floor(ticks / 120)
    end

    function FractionOf(ticks, frac, time)
        return (ticks * frac) / time
    end

    RogueEssence.Content.LoopingAnim.Update(scene, elapsedTime)

    if BubbleAnim.ActionTime < BubbleAnim.LingerStart then
        BubbleAnim.locHeight = BubbleAnim.StartHeight
        BubbleAnim.mapLoc = BubbleAnim.StartLoc
    elseif BubbleAnim.ActionTime >= BubbleAnim.MovingTime + BubbleAnim.LingerStart then
        BubbleAnim.locHeight = BubbleAnim.EndHeight
        BubbleAnim.mapLoc = BubbleAnim.EndLoc
    else
        local midTime = BubbleAnim.ActionTime - BubbleAnim.LingerStart
        BubbleAnim.locHeight = BubbleAnim.StartHeight + FractionOf(tonumber(midTime), (BubbleAnim.EndHeight - BubbleAnim.StartHeight), BubbleAnim.MovingTime)
        BubbleAnim.mapLoc = BubbleAnim.StartLoc + (BubbleAnim.EndLoc - BubbleAnim.StartLoc) * ToFrames(midTime) / BubbleAnim.MovingTime
    end

    if BubbleAnim.Finished then
        scene.Anims[tonumber(BubbleAnim.Layer)].Add(BubbleAnim.ResultAnim.CreateStatic(BubbleAnim.mapLoc, BubbleAnim.locHeight, BubbleAnim.Direction))
    end
end

-- EMITTER

