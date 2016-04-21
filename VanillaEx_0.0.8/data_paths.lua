modname="__VanillaEx__"
iconpath=modname.."/graphics/icons/"
entitypath=modname.."/graphics/entity/"

function toicon(name)
local iconfile=iconpath..name..".png"
return iconfile
end

function toentity(name)
local entityfolder=entitypath..name.."/"
return entityfolder
end

function todefense(name)
local defensefolder=entitypath.."defense/"..name.."/"
return defensefolder
end