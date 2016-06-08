-- THIS FILE IS ONLY USED FOR THE API EMULATOR, DOES NOT AFFECT THE MOD ITSELF.

MODdebug=true -- Tells the mod it is being run in this emulator, disable will stop the mod itself from printing extra information to console, just like in game. Will not affect APIEmu prints nor default mod prints.
APIdebug=true -- Tells the API to print or not, does not affect tickprint nor the MODdebug setting.

tickprint=10 -- How many ticks to wait before printing tick number, 0 to disable.

gameduration=1000 -- How long to run the "game"
maxplayers=5 -- How many players to spawn, 0 will prevent anything from happening, just like when you open Factorio, but do not enter a game.

buildeventticks = {20,100,120} -- Which ticks to place entities
buildeventname = {"wind-generator","tidal-generator","car"} -- What entity to place according to buildeventticks.


isload=true -- Is the mod loading from a previous save? False means it is the first time this mod is loaded
samesettings=false -- Same settings as before? Only valid if 'load' is true.