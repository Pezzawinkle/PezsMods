--MODIFY BARRELING RECIPES
---- These are modified bobs barrle recipes, since they are local functions (refining mod)
-- Creates a recipe to fill the provided barrel item with the provided fluid
--[[bobmods.lib.create_gas_bottle("gas-nitric-oxide")
bobmods.lib.create_gas_bottle("gas-nitrous-oxide")
bobmods.lib.create_gas_bottle("gas-hydrogen-cyanide")
bobmods.lib.create_gas_bottle("gas-phosgene")
bobmods.lib.create_gas_bottle("gas-vinyl-chloride")
if data.raw["fluid"]["gas-nitrogen"] then
bobmods.lib.create_gas_bottle("gas-nitrogen")
end
]]
--adds the tech unlock to gas bottling
--angelsmods.functions.OV.add_unlock("gas-canisters", "gas-nitric-oxide-barrelling")
--angelsmods.functions.OV.add_unlock("gas-canisters", "empty-" .. fluid.name .. "-barrel")
-- This generates bottle items and fill/empty recipes for gasses.

local function get_item(name)
  local items = data.raw["item"]
  if items then
    return items[name]
  end
  return nil
end

local function get_recipes_for_barrel(name)
  local recipes = data.raw["recipe"]
  if recipes then
    return recipes["fill-" .. name], recipes["empty-" .. name]
  end
  return nil
end

-- Generates the icons definition for a barrel item with the provided name and fluid definition using the provided empty barrel base icon
local function generate_barrel_item_icons(fluid)
  return
  {
    {
      icon = "__boblibrary__/graphics/icons/cylinder/gas-canister.png",
      icon_size = 32,
    },
    {
      icon = "__boblibrary__/graphics/icons/cylinder/cylinder-top.png",
      icon_size = 32,
      tint = fluid.flow_color
    },
    {
      icon = "__boblibrary__/graphics/icons/cylinder/cylinder-mid.png",
      icon_size = 32,
      tint = fluid.base_color
    },
  }
end
local function generate_fill_barrel_icons(fluid)
  local icon = generate_barrel_item_icons(fluid)
  if fluid.icon and fluid.icon_size then
    table.insert(icon, { icon = fluid.icon, icon_size = fluid.icon_size, scale = 16.0 / fluid.icon_size, shift = {4, -8}})
  elseif fluid.icons and util.combine_icons then
    icon = util.combine_icons(icon, fluid.icons, {scale = 0.5, shift = {4, -8}})
  end
  return icon
end
-- Generates the icons definition for a empty-barrel recipe with the provided barrel name and fluid definition
local function generate_empty_barrel_icons(fluid)
  local icon = generate_barrel_item_icons(fluid)
  if fluid.icon and fluid.icon_size then
    table.insert(icon, {icon = fluid.icon, icon_size = fluid.icon_size, scale = 16.0 / fluid.icon_size, shift = {7, 8}})
  elseif fluid.icons and util.combine_icons then
    icon = util.combine_icons(icon, fluid.icons, {scale = 0.5, shift = {7, 8}})
  end
  return icon
end

function gas_bottle_override(fluid)
  if data.raw.fluid[fluid] then
    --Bottling override functions for icons, localisation and tech unlocks
    --Filling Gas Bottle Recipe
    local gas=data.raw.fluid[fluid]
    if data.raw.recipe["fill-" .. gas.name .. "-barrel"] then
      local GasFill=data.raw.recipe["fill-" .. gas.name .. "-barrel"]
      GasFill.localised_name= {"recipe-name.fill-gas-canister", gas.localised_name or {"fluid-name." .. gas.name}}
      GasFill.icons=generate_fill_barrel_icons(gas)
      GasFill.ingredients =
      {
        {type = "fluid", name = gas.name, amount = 50},
        {type = "item", name = "gas-canister", amount = 1},
      }
      GasFill.results=
      {
        {type = "item", name = gas.name .. "-barrel", amount = 1}
      }
      GasFill.subgroup="bob-gas-bottle"
      --Tech Unlock location Change
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", "fill-" .. gas.name .. "-barrel")
      bobmods.lib.tech.add_recipe_unlock("gas-canisters", "fill-" .. gas.name .. "-barrel")
      --full canister Item icon change
      data.raw.item[gas.name.."-barrel"].icons=generate_fill_barrel_icons(gas)
      --Decanting Gas Bottle Recipe
      local GasEmpty=data.raw.recipe["empty-" .. gas.name .. "-barrel"]
      GasEmpty.icons = generate_empty_barrel_icons(gas)
      GasEmpty.ingredients =
      {
        {type = "item", name = gas.name .. "-barrel", amount = 1},
      }
      GasEmpty.results=
      {
        {type = "fluid", name = gas.name, amount = 50},
        {type = "item", name = "gas-canister", amount = 1},
      }
      GasEmpty.subgroup = "bob-empty-gas-bottle"
      GasEmpty.localised_name= {"recipe-name.empty-filled-gas-canister", gas.localised_name or {"fluid-name." .. gas.name}}
      --Tech Unlock location Change
      bobmods.lib.tech.remove_recipe_unlock("fluid-handling", "empty-" .. gas.name .. "-barrel")
      bobmods.lib.tech.add_recipe_unlock("gas-canisters", "empty-" .. gas.name .. "-barrel")
    end
  end
end
-- PCP gasses
gas_bottle_override("gas-hydrogen-cyanide")
gas_bottle_override("gas-vinyl-chloride")
-- AB gasses
gas_bottle_override("gas-hydrogen")
gas_bottle_override("gas-oxygen")
gas_bottle_override("gas-hydrogen-peroxide")
gas_bottle_override("gas-chlorine")
gas_bottle_override("gas-hydrogen-chloride")
gas_bottle_override("gas-carbon-monoxide")
gas_bottle_override("gas-carbon-dioxide")
gas_bottle_override("gas-allylchlorid")
gas_bottle_override("gas-epichlorhydrin")
gas_bottle_override("gas-phosgene")
gas_bottle_override("gas-methane")
gas_bottle_override("gas-ethane")
gas_bottle_override("gas-butane")
gas_bottle_override("gas-propene")
gas_bottle_override("gas-ethylene")
gas_bottle_override("gas-benzene")
gas_bottle_override("gas-synthesis")
gas_bottle_override("gas-butadiene")
gas_bottle_override("gas-phenol")
gas_bottle_override("gas-ethylbenzene")
gas_bottle_override("gas-styrene")
gas_bottle_override("gas-formaldehyde")
gas_bottle_override("gas-chlor-methane")
gas_bottle_override("gas-bisphenol-a")
gas_bottle_override("gas-compressed-air")
gas_bottle_override("gas-nitrogen")
gas_bottle_override("gas-ammonia")
gas_bottle_override("gas-nitrogen-monoxide")
gas_bottle_override("gas-nitrogen-dioxide")
gas_bottle_override("gas-dinitrogen-tetroxide")
gas_bottle_override("gas-ammonium-chloride")
gas_bottle_override("gas-urea")
gas_bottle_override("gas-melamine")
gas_bottle_override("gas-monochloramine")
gas_bottle_override("gas-hydrazine")
gas_bottle_override("gas-methylamine")
gas_bottle_override("gas-dimethylamine")
gas_bottle_override("gas-dimethylhydrazine")
gas_bottle_override("gas-acid")
gas_bottle_override("gas-residual")
gas_bottle_override("gas-hydrogen-sulfide")
gas_bottle_override("gas-sulfur-dioxide")
gas_bottle_override("gas-acetone")
gas_bottle_override("gas-vinyl-acetylene")
gas_bottle_override("gas-acetylene")
if data.raw.fluid["heavy-water"] then
gas_bottle_override("heavy-water")
gas_bottle_override("deuterium")
end
