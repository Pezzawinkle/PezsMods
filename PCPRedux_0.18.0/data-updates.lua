require("prototypes.updates")
if settings.startup["pcp-glass-sink"].value ==true and
not mods["ScienceCostTweakerM"] and
not mods["MomoTweak"] and
not data.raw.item["flask"] then
    require("prototypes.flask")
end
--[[if mods["Hexy_AngelBob_Tweaks"] then
  if settings.startup["remove-phosgene"].value==true then
    settings.startup["remove-phosgene"].value=false
  end
  if settings.startup["pcp-gas-bottling"] and settings.startup["liquid-fuel-deuterium-barrels"].value==true then
    settings.startup["liquid-fuel-deuterium-barrels"].value=false
  end
end]]--
if settings.startup["pcp-gas-bottling"].value and data.raw["item-subgroup"]["bob-gas-bottle"] then
  require("prototypes.gas-bottling")
  data.raw.technology["gas-canisters"].prerequisites={"fluid-handling"}
  data.raw.technology["gas-canisters"].enabled = true
end
