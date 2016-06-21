-- MATH FUNCTIONS, NO NEED TO TOUCH THIS
-- TWEAK VALUES ELSEWHERE, DON'T MODIFY MATHEMATICAL TRUTHS
-- If you modify this its like modifing 1+1=2 to become 1+1=3; sin(0) should always be 0 and sin(180)=1
-- Modify at your own risk...

ExFmath={ -- "Class" Fmath

sine = function(x) -- Quick approximation of sine function (Instead of using math.sin)
local y = (4*x*(180-x)) / (40500-x*(180-x))
return y
end,

pulse = function(x) -- Quick pulse wave
if (x%180)<=90 then
y=1
elseif (x%180)>90 then
y=0
end
return y
end,

square = function(x) -- Quick square wave
if (x%180)<=90 then
y=1
elseif (x%180)>90 then
y=-1
end
return y
end,

abs = function(x) -- Quick absolute value
if x >=0 then
y = x
else
y = -1*x
end
return y
end,

zero = function(x) -- Quick negative filtering
if x < 0 then
y = 0
else
y = x
end
return y
end,

interval = function(x,lower,upper)
if x<lower then y=lower elseif x>upper then y=upper else y=x end
return y
end,

checkdiff = function(x,y,diff)
if ExFmath.abs(ExFmath.abs(x)-ExFmath.abs(y))<ExFmath.abs(diff) then
return false
else
return true
end
end

}