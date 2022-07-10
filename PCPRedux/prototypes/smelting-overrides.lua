angelsmods.functions.allow_productivity("pc-glass")
angelsmods.functions.allow_productivity("pmma-glass")
angelsmods.functions.OV.add_unlock("plastic-pmma", "pmma-glass")
angelsmods.functions.OV.add_unlock("plastic-pc", "pc-glass")
if angelsmods.trigger.smelting_products["glass"].flask then
  local packs = {}
  local excluded = {"steam-science-pack","burner-science-pack","transport-science-pack","logistics-science-pack","automation-science-pack","basic-datacore","angels-science-pack-grey","angels-science-pack-red","angels-science-pack-green"}
  --build tech items
  --UPDATE LABS INPUT
  for labs_n, labs in pairs(data.raw["lab"]) do
    if labs.inputs then
      --first check it does not exist
      for i, pack in ipairs(labs.inputs) do
        --check already added
        if (not packs.pack) and (not excluded.pack) then --not already in table or excluded
          table.insert(packs,pack)
        end
      end
    end
  end
  --add flasks to packs
  for _,pack in pairs(packs) do
    for _,rec in pairs(data.raw.recipe) do
      if string.find(pack,rec) then
        --recipe name matches, add flask
        angelsmods.OV.patch_recipes(rec,{ingredients = {{type = "item", name = "flask", amount = 1}}})
      end
    end
  end

  table.insert(data.raw.technology["angels-glass-smelting-1"].effects, {type = "unlock-recipe", recipe = "flask"})
  
  if data.raw.item["glass"] then
    data.raw.recipe["flask"].ingredients = {{type = "item", name = "glass", amount = 1}}
  end
  if mods["angelsindustries"] and settings.startup["angels-enable-tech"].value then
    move_item("flask", "angels-pack-components", "ba")
  end
end

if mods.bobplates or mods.apm_resource_pack and (data.raw.item["solid-rubber"] or data.raw.item["rubber"]) then
  angelsmods.functions.OV.add_unlock("rubber", "liquid-rubber-2")
  angelsmods.functions.OV.add_unlock("chlorine-processing-2", "butadiene-chlorination")
  angelsmods.functions.OV.add_unlock("chlorine-processing-2", "dichlorobutene-dechlorination")
  angelsmods.functions.OV.add_unlock("chlorine-processing-2", "vinyl-acetlyene-chlorination")
  angelsmods.functions.OV.add_unlock("gas-steam-cracking-1", "catalyst-steam-cracking-butane-2")
  angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-2", "acetylene-diomerisation")
  angelsmods.functions.OV.add_unlock("gas-steam-cracking-2", "catalyst-steam-cracking-acetylene")
  angelsmods.functions.allow_productivity("angels-roll-rubber-converting")
  if data.raw.item["solid-saw"] and type(data.raw.recipe["rubber-slabbing"].ingredients)=="table" then
    table.insert(data.raw.recipe["rubber-slabbing"].ingredients,{type="item",name="solid-saw",amount=1})
    table.insert(data.raw.recipe["rubber-slabbing"].results,{type="item",name="solid-saw",amount=1,probability=0.95,amount_min=0, amount_max=1})
  end
  if mods["angelssmelting"] then
    data.raw.recipe["rubber-powderisation"].category="powder-mixing"
    data.raw.recipe["rubber-pelletisation"].category="pellet-pressing"
    data.raw.recipe["angels-roll-rubber-casting"].category="casting"
    data.raw.recipe["angels-roll-rubber-converting"].subgroup="angels-alloys-casting"
    data.raw.recipe["angels-roll-rubber-casting"].subgroup="angels-alloys-casting"
  end
end
angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-3", "liquid-fuel-oil-catalyst")