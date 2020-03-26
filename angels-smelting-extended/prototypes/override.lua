require("prototypes.data-tables")
angelsmods.functions.OV.add_unlock("angels-tungsten-smelting-2","angels-roll-tungsten-casting")
angelsmods.functions.OV.add_unlock("angels-tungsten-smelting-2","angels-roll-tungsten-converting")
angelsmods.functions.allow_productivity("angels-roll-tungsten-converting")
if mods["bobplates"] then
  angelsmods.functions.OV.global_replace_item("angels-plate-brass", "brass-alloy")
  --		table.insert(data.raw["item"]["angels-plate-brass"].flags,"hidden")
  angelsmods.functions.OV.global_replace_item("angels-plate-bronze", "bronze-alloy")
  --		table.insert(data.raw["item"]["angels-plate-bronze"].flags,"hidden")
  angelsmods.functions.OV.global_replace_item("angels-plate-gunmetal", "gunmetal-alloy")
  --		table.insert(data.raw["item"]["angels-plate-gunmetal"].flags,"hidden")
  angelsmods.functions.OV.global_replace_item("angels-plate-invar", "invar-alloy")
  --		table.insert(data.raw["item"]["angels-plate-invar"].flags,"hidden")
  angelsmods.functions.OV.global_replace_item("angels-plate-nitinol", "nitinol-alloy")
  --		table.insert(data.raw["item"]["angels-plate-nitinol"].flags,"hidden")
  angelsmods.functions.OV.global_replace_item("angels-plate-cobalt-steel", "cobalt-steel-alloy")
  --		table.insert(data.raw["item"]["angels-plate-cobalt-steel"].flags,"hidden")
  -- regular plate uncoiling on level 2, leave level 3 for coolant recipe (still to write)
  angelsmods.functions.OV.add_unlock("angels-alloys-smelting-2","angels-roll-gunmetal-casting")
  angelsmods.functions.OV.add_unlock("angels-alloys-smelting-2","angels-roll-gunmetal-converting")
  angelsmods.functions.OV.add_unlock("angels-alloys-smelting-2","angels-roll-cobalt-steel-casting")
  angelsmods.functions.OV.add_unlock("angels-alloys-smelting-2","angels-roll-cobalt-steel-converting")
  angelsmods.functions.OV.add_unlock("angels-alloys-smelting-2","angels-roll-invar-casting")
  angelsmods.functions.OV.add_unlock("angels-alloys-smelting-2","angels-roll-invar-converting")
  angelsmods.functions.OV.add_unlock("nitinol-processing","angels-roll-nitinol-casting")
  angelsmods.functions.OV.add_unlock("nitinol-processing","angels-roll-nitinol-converting")
  angelsmods.functions.OV.add_unlock("angels-bronze-smelting-2","angels-roll-bronze-casting")
  angelsmods.functions.OV.add_unlock("angels-bronze-smelting-2","angels-roll-bronze-converting")
  angelsmods.functions.OV.add_unlock("angels-brass-smelting-2","angels-roll-brass-casting")
  angelsmods.functions.OV.add_unlock("angels-brass-smelting-2","angels-roll-brass-converting")
  angelsmods.functions.allow_productivity("angels-plate-brass")
  angelsmods.functions.allow_productivity("angels-plate-bronze")
  angelsmods.functions.allow_productivity("angels-plate-gunmetal")
  angelsmods.functions.allow_productivity("angels-plate-invar")
  angelsmods.functions.allow_productivity("angels-plate-nitinol")
  angelsmods.functions.allow_productivity("angels-plate-cobalt-steel")
  angelsmods.functions.allow_productivity("angels-roll-brass-converting")
  angelsmods.functions.allow_productivity("angels-roll-bronze-converting")
  angelsmods.functions.allow_productivity("angels-roll-nitinol-converting")
  angelsmods.functions.allow_productivity("angels-roll-nitinol-converting")
  angelsmods.functions.allow_productivity("angels-roll-invar-converting")
  angelsmods.functions.allow_productivity("angels-roll-cobalt-steel-converting")
  angelsmods.functions.allow_productivity("angels-roll-gunmetal-converting")
  -- category update SHOULD BE DONE ON RAW RECIPE FILE!!!
  --BRASS
  data.raw.recipe["angels-brass-smelting-1"].subgroup="angels-brass-casting"
  data.raw.recipe["angels-brass-smelting-1"].order="a"
  data.raw.recipe["angels-brass-smelting-2"].subgroup="angels-brass-casting"
  data.raw.recipe["angels-brass-smelting-2"].order="b"
  data.raw.recipe["angels-brass-smelting-3"].subgroup="angels-brass-casting"
  data.raw.recipe["angels-brass-smelting-3"].order="c"
  data.raw.recipe["brass-alloy"].subgroup="angels-brass-casting"
  data.raw.recipe["brass-alloy"].order="k"
  data.raw.recipe["angels-plate-brass"].subgroup="angels-brass-casting"
  data.raw.recipe["angels-plate-brass"].order="i"
  --Bronze
  data.raw.recipe["angels-bronze-smelting-1"].subgroup="angels-bronze-casting"
  data.raw.recipe["angels-bronze-smelting-1"].order="a"
  data.raw.recipe["angels-bronze-smelting-2"].subgroup="angels-bronze-casting"
  data.raw.recipe["angels-bronze-smelting-2"].order="b"
  data.raw.recipe["angels-bronze-smelting-3"].subgroup="angels-bronze-casting"
  data.raw.recipe["angels-bronze-smelting-3"].order="c"
  data.raw.recipe["bronze-alloy"].subgroup="angels-bronze-casting"
  data.raw.recipe["bronze-alloy"].order="k"
  data.raw.recipe["angels-plate-bronze"].subgroup="angels-bronze-casting"
  data.raw.recipe["angels-plate-bronze"].order="i"
  --Invar
  data.raw.recipe["angels-invar-smelting-1"].subgroup="angels-invar-casting"
  data.raw.recipe["angels-invar-smelting-1"].order="a"
  data.raw.recipe["invar-alloy"].subgroup="angels-invar-casting"
  data.raw.recipe["invar-alloy"].order="k"
  data.raw.recipe["angels-plate-invar"].subgroup="angels-invar-casting"
  data.raw.recipe["angels-plate-invar"].order="i"
  --Nitinol
  data.raw.recipe["angels-nitinol-smelting-1"].subgroup="angels-nitinol-casting"
  data.raw.recipe["angels-nitinol-smelting-1"].order="a"
  data.raw.recipe["nitinol-alloy"].subgroup="angels-nitinol-casting"
  data.raw.recipe["nitinol-alloy"].order="k"
  data.raw.recipe["angels-plate-nitinol"].subgroup="angels-nitinol-casting"
  data.raw.recipe["angels-plate-nitinol"].order="i"
  --Cobalt-Steel
  data.raw.recipe["angels-cobalt-steel-smelting-1"].subgroup="angels-cobalt-steel-casting"
  data.raw.recipe["angels-cobalt-steel-smelting-1"].order="a"
  data.raw.recipe["cobalt-steel-alloy"].subgroup="angels-cobalt-steel-casting"
  data.raw.recipe["cobalt-steel-alloy"].order="k"
  data.raw.recipe["angels-plate-cobalt-steel"].subgroup="angels-cobalt-steel-casting"
  data.raw.recipe["angels-plate-cobalt-steel"].order="i"
  --gunmetal
  data.raw.recipe["angels-gunmetal-smelting-1"].order="a"
  data.raw.recipe["angels-plate-gunmetal"].order="i"
  data.raw.recipe["gunmetal-alloy"].order="k"
  if mods["boblogistics"] then
    for n,metal in pairs(metal_tab) do
      angelsmods.functions.OV.add_unlock("angels-"..metal.."-smelting-1","angels-"..metal.."-pipe-casting")
      angelsmods.functions.OV.add_unlock("angels-"..metal.."-smelting-1","angels-"..metal.."-pipe-to-ground-casting")
    end
  end
end
--find activation settings
if mods["angelsindustries"] and (settings.startup["angels-enable-components"].value or settings.startup["angels-enable-tech"].value) then
  for item,i in pairs(a_inters) do
    angelsmods.functions.OV.add_unlock(i.tech,item.."-casting")
    angelsmods.functions.OV.add_unlock(i.tech,"ASE-"..item.."-casting-expendable")
    angelsmods.functions.OV.add_unlock(i.tech,"ASE-"..item.."-casting-advanced")
  end
  --check for also bobs
  if mods["bobplates"] then --replace icon gear icons
    data.raw.recipe["ASE-iron-gear-casting-expendable"].icons[1]={icon="__angelsindustries__/graphics/icons/gear.png",icon_size=32,}
    data.raw.recipe["ASE-iron-gear-casting-advanced"].icons[1]={icon="__angelsindustries__/graphics/icons/gear.png",icon_size=32,}
  end
end
-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
