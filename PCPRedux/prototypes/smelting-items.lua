data:extend(
  {
    {
      type = "item",
      name = "flask",
      icon = "__PCPRedux__/graphics/icons/flask.png",
      icon_size = 32,
      subgroup = "intermediate-product",
      order = "z[flask]",
      stack_size = 200
    },
    {
      type = "fluid",
      name = "liquid-rubber-pre",
      icons ={{icon="__PCPRedux__/graphics/icons/liquid-rubber-pre.png",icon_size=64}},
      subgroup = "petrochem-chlorine-fluids",
      default_temperature = 25,
      heat_capacity = "1KJ",
      base_color = {r = 1, g = 1, b = 1},
      flow_color = {r = 1, g = 1, b = 1},
      max_temperature = 100,
      auto_barrel=true,
    },
    {
      type = "fluid",
      name = "liquid-rubber-masterbatch",
      icons={{icon="__PCPRedux__/graphics/icons/liquid-rubber-masterbatch.png",icon_size=64}},
      subgroup = "petrochem-chlorine-fluids",
      default_temperature = 25,
      heat_capacity = "1KJ",
      base_color = {r = 1, g = 1, b = 1},
      flow_color = {r = 1, g = 1, b = 1},
      max_temperature = 100,
      auto_barrel=true,
    },
    {
      type = "item",
      name = "solid-rubber-additive",
      icon="__PCPRedux__/graphics/icons/solid-rubber-additive.png",
      icon_size = 64,
      subgroup = "petrochem-solids",
      order = "f[rubber-additive]",
      stack_size = 100
    },
    {
      type = "item",
      name = "solid-rubber-block",
      icon="__PCPRedux__/graphics/icons/solid-rubber-block.png",
      icon_size = 64,
      subgroup = "petrochem-solids",
      order = "f[rubber-block]",
      stack_size = 100
    },
    {
      type = "item",
      name = "solid-rubber-slab",
      icon="__PCPRedux__/graphics/icons/solid-rubber-slab.png",
      icon_size = 64,
      subgroup = "petrochem-solids",
      order = "f[rubber-slab]",
      stack_size = 100
    },
    {
      type = "item",
      name = "solid-rubber-pellet",
      icon="__PCPRedux__/graphics/icons/solid-rubber-pellet.png",
      icon_size = 64,
      subgroup = "petrochem-solids",
      order = "f[rubber-pellet]",
      stack_size = 100
    },
    {
      type = "item",
      name = "solid-rubber-powder",
      icon="__PCPRedux__/graphics/icons/solid-rubber-powder.png",
      icon_size = 64,
      subgroup = "petrochem-solids",
      order = "f[rubber-powder]",
      stack_size = 100
    },
    {
      type = "item",
      name = "solid-rubber-vulcanised",
      icon="__angelspetrochem__/graphics/icons/solid-rubber.png",
      icon_size = 32,
      subgroup= "petrochem-solids",
      order = "f[rubber-vulcanised]",
      stack_size = 100
    },
    {
      type = "item",
      name = "solid-rubber-waste",
      icon="__PCPRedux__/graphics/icons/solid-rubber-waste.png",
      icon_size = 64,
      subgroup= "petrochem-solids",
      order = "f[rubber-waste]",
      stack_size = 100
    },
    {
      type = "item",
      name = "angels-roll-rubber",
      icons={{icon = "__PCPRedux__/graphics/icons/roll-blank.png", tint = {r = 0, g = 0, b = 0},icon_size=32}},
      subgroup = "petrochem-solids",
      order = "ya",
      stack_size = 200
    },
  }
)