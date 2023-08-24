function onEvent(n,v,b)
  if n == 'FastCameraOffset' then
  x = tonumber(split(v,',')[1])
  y = tonumber(split(v,',')[2])

  setProperty('camFollowPos.x',x)
setProperty('camFollowPos.y',y)
setProperty('camFollow.x',x)
setProperty('camFollow.y',y)

setProperty('camGame.scroll.x',x)
setProperty('camGame.scroll.y',y)

setProperty('isCameraOnForcedPos',true)
end
end

function split (inputstr, sep)
if sep == nil then
sep = "%s"
end
local t={}
for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
table.insert(t, str)
end
return t
end

function onStepHit()
  if curStep == 2624 then
    isCameraOnForcedPos=false
  end
  
end