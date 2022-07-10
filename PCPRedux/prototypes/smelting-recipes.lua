data:extend(
  {
    {
      type = "recipe",
      name = "pmma-glass",
      category = "chemistry",
      subgroup = "petrochem-solids",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-pmma", amount = 1},
      },
      results = {
        {type = "item", name = "glass", amount = 10},
      },
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-glass"),
      order = "c[glass]-b[pmma-glass]",
    },
    {
      type = "recipe",
      name = "pc-glass",
      category = "chemistry",
      subgroup = "petrochem-solids",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type = "item", name = "solid-pc", amount = 1},
      },
      results = {
        {type = "item", name = "glass", amount = 2},--1
      },
      order = "c[glass]-a[pc-glass]",
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-glass"),
    },
    {
      type = "recipe",
      name = "flask",
      catergory = "crafting",
      enabled = false,
      energy_required = 1,
      ingredients = {{type = "item", name = "solid-sodium-hydroxide", amount = 1}},
      results = {{type = "item", name = "flask", amount = 1}},
    },
    --4rubber coil->16rubber -1assembly (allow prod) 0.5
    {
      type = "recipe",
      name = "angels-roll-rubber-converting",
      category = "crafting",
      subgroup = "petrochem-solids",
      energy_required = 0.5,
      enabled = "false",
      ingredients ={
        {type="item", name="angels-roll-rubber", amount=1},
      },
      results=
      {
        {type="item", name="solid-rubber", amount=4},
      },
      icons = {
        {
          icon = "__angelspetrochem__/graphics/icons/solid-rubber.png"
        },
        {
          icon = "__PCPRedux__/graphics/icons/roll-blank.png",
          tint = {r = 0.1, g = 0.1, b = 0.1},
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "yb",
    },
    --4vulcanised rubber+100water->1rubber coil -3casting machine 0.5
    {
      type = "recipe",
      name = "angels-roll-rubber-casting",
      category = "advanced-crafting",
      subgroup = "petrochem-solids",
      energy_required = 0.5,
      enabled = "false",
      ingredients ={
        {type="item", name="solid-rubber-vulcanised", amount=4},
        {type="fluid",name="water",amount=100}
      },
      results=
      {
        {type="item", name="angels-roll-rubber", amount=1},
      },
      order = "ya",
    },
    --72rubber powder+100air -> 6vulcanised rubber -2steam reformer 0.5
    {
      type = "recipe",
      name = "vulcanised-rubber-reforming",
      category = "steam-cracking",
      subgroup = "petrochem-feedstock",
      energy_required = 0.5,
      enabled = "false",
      ingredients ={
        {type="item", name="solid-rubber-powder", amount=72},
        {type="fluid",name="gas-compressed-air",amount=100}
      },
      results=
      {
        {type="item", name="solid-rubber-vulcanised", amount=6},
      },
      order = "ya",
    },
    --32rubber pellets->48rubber powder -6powderiser 1
    {
      type = "recipe",
      name = "rubber-powderisation",
      category = "crafting",
      subgroup = "petrochem-solids",
      energy_required = 1,
      enabled = "false",
      ingredients ={
        {type="item", name="solid-rubber-pellet", amount=32},
      },
      results=
      {
        {type="item", name="solid-rubber-powder", amount=48},
      },
      order = "ya",
    },
    --6rubber slab->24rubber pellets+1spent rubber -3pellet press 0.25
    {
      type = "recipe",
      name = "rubber-pelletisation",
      category = "crafting",
      subgroup = "petrochem-solids",
      energy_required = 0.25,
      enabled = "false",
      ingredients ={
        {type="item", name="solid-rubber-slab", amount=6},
      },
      results=
      {
        {type="item", name="solid-rubber-pellet", amount=24},
        {type="item",name="solid-rubber-waste",amount=1},
      },
      order = "ya",
      icons={{icon="__PCPRedux__/graphics/icons/solid-rubber-pellet.png",icon_size = 64,}},
    },
    --(1)sawblade+11rubber block->33rubber slab+sawblade(0.9) -1assembly 0.5
    {
      type = "recipe",
      name = "rubber-slabbing",
      category = "crafting",
      subgroup = "petrochem-solids",
      energy_required = 0.5,
      enabled = "false",
      ingredients ={
        {type="item", name="solid-rubber-block", amount=11},
      },
      results=
      {
        {type="item", name="solid-rubber-slab", amount=33},
      },
      order = "ya",
      icons={{ icon="__PCPRedux__/graphics/icons/solid-rubber-slab.png",icon_size = 64,}},
    },
    --45pre-rubber+160water->5rubber block -2chemplant 1
    {
      type = "recipe",
      name = "rubber-block-molding",
      category = "chemistry",
      subgroup = "petrochem-solids",
      energy_required = 1,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-rubber-pre", amount=45},
        {type="fluid", name="water", amount=160}
      },
      results=
      {
        {type="item", name="solid-rubber-block", amount=5},
      },
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-rubber-pre"),
      order = "ya",
    },
    --25Liquid Rubber + 2rubber additive -> 35masterbatch rubber(liquid) - 2chemplant 1
    {
      type = "recipe",
      name = "rubber-masterbatching",
      category = "chemistry",
      subgroup = "petrochem-solids",
      energy_required = 1,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-rubber", amount=25},
        {type="item", name="solid-rubber-additive", amount=2}
      },
      results=
      {
        {type="fluid", name="liquid-rubber-masterbatch", amount=35},
      },
      order = "ya",
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-rubber-masterbatch"),
    --70masterbatch rubber+4sulfur -> 90pre-rubber (liquid) -1chemplant 1
    {
      type = "recipe",
      name = "pre-rubber-mixing",
      category = "chemistry",
      subgroup = "petrochem-solids",
      energy_required = 1,
      enabled = "false",
      ingredients ={
        {type="fluid", name="liquid-rubber-masterbatch", amount=70},
        {type="item", name="sulfur", amount=4}
      },
      results=
      {
        {type="fluid", name="liquid-rubber-pre", amount=90},
      },
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-rubber-pre"),
      order = "ya",
    },
  })