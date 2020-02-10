--Ironworks recipes
-- IRONWORKS -- This needs rebalancing, and extension to cobalt-steel gears etc...
data:extend({
  {
    type = "recipe",
    name = "angels-iron-pipe-casting",
    category = "casting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=40},
    },
    results=
    {
      {type="item", name="pipe", amount=4},
    },
    order = "ya",
  },
  {
    type = "recipe",
    name = "angels-iron-pipe-to-ground-casting",
    category = "casting",
    subgroup = "angels-iron-casting",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=150},
    },
    results=
    {
      {type="item", name="pipe-to-ground", amount=2},
    },
    order = "yb",
  },
  {
    type = "recipe",
    name = "angels-iron-gear-wheel-casting",
    category = "casting",
    subgroup = "angels-iron-casting",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=40},
    },
    results=
    {
      {type="item", name="iron-gear-wheel", amount=9},
    },
    order = "yc",
  },
  {
    type = "recipe",
    name = "angels-steel-gear-wheel-casting",
    category = "casting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=40},
    },
    results=
    {
      {type="item", name="steel-gear-wheel", amount=12},
    },
    order = "yc",
  },
  {
    type = "recipe",
    name = "angels-brass-gear-wheel-casting",
    category = "casting",
    subgroup = "angels-brass-casting",
    energy_required = 20,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-brass", amount=40},
    },
    results=
    {
      {type="item", name="brass-gear-wheel", amount=12},
    },
    order = "yc",
  },
  {
    type = "recipe",
    name = "angels-titanium-gear-wheel-casting",
    category = "casting",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=40},
    },
    results=
    {
      {type="item", name="titanium-gear-wheel", amount=12},
    },
    order = "yc",
  },
})
--Advanced Casting 1 (using moulds)
data:extend({
  --temporary location: mold recipe sequences
  --expendable mold recipe (want roasted)
  {
    type = "recipe",
    name="mold-expendable",
    category="smelting",
    subgroup="angels-mold-casting",
    energy_required= 8,
    enabled="false",
    icons={
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
      },
    },
    icon_size=32,
    ingredients={
      {type="item", name="solid-sand",amount=40},
      {type="item",name="powder-steel", amount=1}
    },
    results={
      {type="item",name="mold-expendable",amount=8},
    },
    order="ae",
  },
  --non-expendable mold recipe (initial)
  {
    type = "recipe",
    name="mold-non-expendable",
    category="smelting",
    subgroup="angels-mold-casting",
    icons={
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size=32,
    energy_required= 8,
    enabled="false",
    ingredients={
      {type="item", name="solid-zinc-oxide",amount=40},
      {type="item",name="powder-steel", amount=10}
    },
    results={
      {type="item",name="mold-non-expendable",amount=8},
    },
    order="ae",
  },
  --spent-non-expendable mold
  {
    type = "item",
    name = "spent-mold-non-expendable",
    icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
	icon_size = 32,
    subgroup = "angels-mold-casting",
    order = "b",
    stack_size = 200
  },
  --non-expendable mold washing
  {
    type = "recipe",
    name="mold-non-expendable-wash",
    category="crafting-with-fluid",
    subgroup="angels-mold-casting",
    energy_required= 8,
    enabled="false",
    icons={
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size=32,
    ingredients={
      {type="item", name="spent-mold-non-expendable",amount=3},
      {type="fluid",name="liquid-nitric-acid", amount=20}
    },
    results={
      {type="item",name="mold-non-expendable",amount=3},
      {type="fluid",name="water-red-waste", amount=20},
    },
    order="ae",
  },
  --iron gears
  {
    type = "recipe",
    name = "ASE-iron-gear-casting-expendable",
    category = "casting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__base__/graphics/icons/iron-gear-wheel.png",icon_size=64,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=80},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="iron-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-iron-gear-casting-advanced",
    category = "casting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__base__/graphics/icons/iron-gear-wheel.png",icon_size=64,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=80},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="iron-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  --steel gears
  {
    type = "recipe",
    name = "ASE-steel-gear-casting-expendable",
    category = "casting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/steel-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=80},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="steel-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-steel-gear-casting-advanced",
    category = "casting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/steel-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=80},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="steel-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  --Brass gear wheels
  {
    type = "recipe",
    name = "ASE-brass-gear-casting-expendable",
    category = "casting",
    subgroup = "angels-brass-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/brass-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-brass", amount=80},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="brass-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-brass-gear-casting-advanced",
    category = "casting",
    subgroup = "angels-brass-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/brass-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-brass", amount=80},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="brass-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  --cobalt-steel gear wheels
  {
    type = "recipe",
    name = "ASE-cobalt-steel-gear-casting-expendable",
    category = "casting",
    subgroup = "angels-cobalt-steel-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/cobalt-steel-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt-steel", amount=80},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="cobalt-steel-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-cobalt-steel-gear-casting-advanced",
    category = "casting",
    subgroup = "angels-cobalt-steel-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/cobalt-steel-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt-steel", amount=80},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="cobalt-steel-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  {
    type = "recipe",
    name = "angels-cobalt-steel-gear-wheel-casting",
    category = "casting",
    subgroup = "angels-cobalt-steel-casting",
    energy_required = 20,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt-steel", amount=40},
    },
    results=
    {
      {type="item", name="cobalt-steel-gear-wheel", amount=12},
    },
    order = "yc",
  },
  --titanium gears
  {
    type = "recipe",
    name = "ASE-titanium-gear-casting-expendable",
    category = "casting",
    subgroup = "angels-titanium-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/titanium-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=80},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="titanium-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-titanium-gear-casting-advanced",
    category = "casting",
    subgroup = "angels-titanium-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/titanium-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=80},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="titanium-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  --tungsten gears
  {
    type = "recipe",
    name = "ASE-tungsten-gear-casting-expendable",
    category = "sintering",
    subgroup = "angels-tungsten-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/tungsten-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="item", name="casting-powder-tungsten", amount=12},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="tungsten-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-tungsten-gear-casting-advanced",
    category = "sintering",
    subgroup = "angels-tungsten-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/tungsten-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="item", name="casting-powder-tungsten", amount=12},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="tungsten-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  {
    type = "recipe",
    name = "angels-tungsten-gear-wheel-casting",
    category = "sintering",
    subgroup = "angels-tungsten-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="casting-powder-tungsten", amount=12},
    },
    results=
    {
      {type="item", name="tungsten-gear-wheel", amount=12},
    },
    order = "yc",
  },
  --nitinol gear wheels
  {
    type = "recipe",
    name = "ASE-nitinol-gear-casting-expendable",
    category = "casting",
    subgroup = "angels-nitinol-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/nitinol-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-nitinol", amount=80},
      {type="item", name="mold-expendable",amount=2}
    },
    results=
    {
      {type="item", name="nitinol-gear-wheel", amount=11},
      {type="item", name="solid-sand", amount=5},
    },
    order = "yd",
  },
  {
    type = "recipe",
    name = "ASE-nitinol-gear-casting-advanced",
    category = "casting",
    subgroup = "angels-nitinol-casting",
    energy_required = 0.5,
    enabled = "false",
    icons={
      {
        icon="__bobplates__/graphics/icons/nitinol-gear-wheel.png",icon_size=32,
      },
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        scale = 0.32,
        shift = {-12, -12},
      },
  },
    ingredients ={
      {type="fluid", name="liquid-molten-nitinol", amount=80},
      {type="item", name="mold-non-expendable",amount=3},
    },
    results=
    {
      {type="item", name="nitinol-gear-wheel", amount=15},
      {type="item", name="spent-mold-non-expendable",amount=3},
    },
    order = "ye",
  },
  {
    type = "recipe",
    name = "angels-nitinol-gear-wheel-casting",
    category = "casting",
    subgroup = "angels-nitinol-casting",
    energy_required = 20,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-nitinol", amount=40},
    },
    results=
    {
      {type="item", name="nitinol-gear-wheel", amount=12},
    },
    order = "yc",
  },
})
--[[if mods["boblogistics"] then
  data:extend(
  {
    {
      type = "recipe",
      name = "angels-iron-pipe-casting",
      category = "casting",
      subgroup = "angels-iron-casting",
      energy_required = 4,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-iron", amount=40},
      },
      results=
      {
        {type="item", name="pipe", amount=4},
      },
      order = "ya",
    },
    {
      type = "recipe",
      name = "angels-iron-pipe-to-ground-casting",
      category = "casting",
      subgroup = "angels-iron-casting",
      energy_required = 2,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-molten-iron", amount=150},
      },
      results=
      {
        {type="item", name="pipe-to-ground", amount=2},
      },
      order = "yb",
    },
  }
)
end]]
