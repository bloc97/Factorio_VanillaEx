--Generates all the paths for this mod. This makes it possible to easily change the name whenever it is necessary.
modname=modfolder
iconpath=modname.."/graphics/icons/"
entitypath=modname.."/graphics/entity/"
techpath=modname.."graphics/technology/"

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

function totech(name)
  local techfile=techpath..name..".png"
  return techfile
end
