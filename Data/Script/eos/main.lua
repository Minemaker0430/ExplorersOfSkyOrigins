--[[
  main.lua
  
  This file is loaded persistently.
  Its main purpose is to include anything that needs to stay persistently in the lua state.
  Things like services.
  If this file is modded, additional requires are added ON TOP of the base's requires.
  This is the only file with this behavior; everything else is overwrite!
]]--

--------------------------------------------------------------------------------------------------------------
-- Service Packages
--------------------------------------------------------------------------------------------------------------
--require 'missiongen_lib.missiongen_service' [TEMPORARILY DISABLED]

require 'eos.services.menu_tools'
require 'eos.services.debug_tools'
require 'eos.services.upgrade_tools'

math.randomseed(os.time())