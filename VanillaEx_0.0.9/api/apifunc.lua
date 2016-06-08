-- Custom API Functions

function apiprint(text)
  if APIdebug==true then
    print("APIEmu: Tick "..game.tick..", "..text)
  end
end

function modprint(text)
  if MODdebug==true then
    print("Debug: Tick "..game.tick..", "..text)
  end
end