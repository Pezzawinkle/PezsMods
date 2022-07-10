angelsmods.functions.allow_productivity("liquid-plastic-abs")
angelsmods.functions.allow_productivity("liquid-plastic-pvc")
angelsmods.functions.allow_productivity("liquid-plastic-pmma")
angelsmods.functions.allow_productivity("liquid-plastic-pc")
--[[fallback require for glass
require("prototypes.bobs-glass-OV")
if data.raw.item["glass"] then
	angelsmods.functions.allow_productivity("pc-glass")
	angelsmods.functions.allow_productivity("pmma-glass")
	angelsmods.functions.OV.add_unlock("plastic-pmma", "pmma-glass")
	angelsmods.functions.OV.add_unlock("plastic-pc", "pc-glass")
end]]
if data.raw.item["zinc-ore"] and data.raw.item["gold-ore"] then
	data.raw.recipe["catalyst-metal-cyan"].ingredients ={
		{type="item", name="catalyst-metal-carrier", amount=10},
		{type="item", name="zinc-ore", amount=1},
		{type="item", name="gold-ore", amount=1},
	}
else
	data.raw.recipe["catalyst-metal-cyan"].ingredients ={
		{type="item", name="catalyst-metal-carrier", amount=10},
		{type="item", name="angels-iron-pebbles", amount=1},
		{type="item", name="angels-copper-pebbles", amount=1},
	}
end
if angelsmods.functions.is_special_vanilla() then --revert removal settings
  local unhide_rec= {
    {name = "catalyst-steam-cracking-butane", tech = "oil-steam-cracking-1"},
    {name = "liquid-styrene-catalyst", tech = "angels-advanced-chemistry-2"},
    {name = "liquid-ethylbenzene-catalyst", tech ="angels-advanced-chemistry-2"},
    {name = "cumene-process", tech = "angels-advanced-chemistry-4"},
    {name = "liquid-bisphenol-a", tech = "angels-advanced-chemistry-4"},
    {name = "gas-phosgene", tech = "chlorine-processing-3"},
  }
  for _,rec in pairs(unhide_rec) do
    recs=data.raw.recipe[rec.name]
    angelsmods.functions.OV.add_unlock(rec.tech, rec.name)
  end
  angelsmods.functions.OV.remove_unlock("resin-3", "PF-resin")
end

angelsmods.functions.OV.add_unlock("k-angels-advanced-chemistry-5", "liquid-phenol-catalyst")
angelsmods.functions.OV.add_unlock("angels-nitrogen-processing-2", "hydrogen-cyanide-synthesis")
angelsmods.functions.OV.add_unlock("angels-nitrogen-processing-2", "acetone-cyanohydrin-synthesis")
angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-4", "catalyst-metal-yellow")
angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-2", "methyl-methacrylate-synthesis")
angelsmods.functions.OV.add_unlock("chlorine-processing-1", "phosgene-synthesis")
angelsmods.functions.OV.add_unlock("chlorine-processing-2", "vinyl-chloride-synthesis")
angelsmods.functions.OV.add_unlock("k-angels-advanced-chemistry-5", "catalyst-metal-cyan")
angelsmods.functions.OV.add_unlock("resin-3", "PF-resin")

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

if data.raw.item["rubber"] or data.raw.item["solid-rubber"] --[[or data.raw.item["apm_rubber"] ]]then
  --  require("prototypes.rubber-extended")
  angelsmods.functions.OV.add_unlock("gas-steam-cracking-1", "catalyst-steam-cracking-butane-2")
  angelsmods.functions.OV.add_unlock("chlorine-processing-2", "butadiene-chlorination")
  angelsmods.functions.OV.add_unlock("chlorine-processing-2", "dichlorobutene-dechlorination")
  angelsmods.functions.OV.add_unlock("rubber", "liquid-rubber-2")
  angelsmods.functions.OV.add_unlock("chlorine-processing-2", "vinyl-acetlyene-chlorination")
  angelsmods.functions.OV.add_unlock("angels-advanced-chemistry-2", "acetylene-diomerisation")
  angelsmods.functions.OV.add_unlock("gas-steam-cracking-2", "catalyst-steam-cracking-acetylene")
  angelsmods.functions.allow_productivity("angels-roll-rubber-converting")
--[[  if data.raw.item["solid-saw"] and type(data.raw.recipe["rubber-slabbing"].ingredients)=="table" then
    table.insert(data.raw.recipe["rubber-slabbing"].ingredients,{type="item",name="solid-saw",amount=1})
    table.insert(data.raw.recipe["rubber-slabbing"].results,{type="item",name="solid-saw",{amount=1,probability=0.95}})
  end]]
end