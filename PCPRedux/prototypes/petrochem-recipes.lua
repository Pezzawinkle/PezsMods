data:extend({
  {
    type = "recipe",
    name = "PF-resin",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 3,
    enabled = false,
    ingredients ={
      {type="fluid", name="gas-formaldehyde", amount=20},
      {type="fluid", name="liquid-phenol", amount=20},
    },
    results={
      {type="fluid", name="liquid-resin", amount=40}
    },
    icons = create_icon("liquid-resin", {
    icon = "__angelsrefining__/graphics/icons/num_4.png",
    icon_size = 32,
    tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
    scale = 0.32,
    shift = {-12, -12},
    order = "b[resin]-a[liquid]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-resin"),
  },
  {
    type = "recipe",
    name = "catalyst-steam-cracking-butane-2",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-butane", amount=60},
      {type="fluid", name="steam", amount=120},
      {type="item", name="catalyst-metal-green", amount=1},	--Ag
    },
    results=
    {
      {type="fluid", name="gas-butadiene", amount=70},
      {type="fluid", name="gas-residual", amount=10},
      {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icons =angelsmods.functions.create_gas_recipe_icon({{ "__angelspetrochem__/graphics/icons/molecules/butadiene.png", 72 }}, "CHSg"),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("gas-butadiene"),
    order = "d[catalyst-steam-cracking-butane-2]",
  },
  {
    type = "recipe",
    name = "butadiene-chlorination",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-butadiene", amount=60},
      {type="fluid", name="gas-chlorine", amount=60},
    },
    results=
    {
      {type="fluid", name="liquid-dichlorobutene", amount=120},
    },
    icons =angelsmods.functions.create_liquid_recipe_icon({{icon="__PCPRedux__/graphics/icons/raw/dichlorobutene.png",icon_size=72}}, "CClH"),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-dichlorobutene"),
    order = "d[butadiene-chlorination]",
  },
  {
    type = "recipe",
    name = "dichlorobutene-dechlorination",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-dichlorobutene", amount=100},
      {type="item", name="solid-sodium-hydroxide", amount=1},
    },
    results=
    {
      {type="fluid", name="liquid-chlorobutadiene", amount=100},
      {type="fluid", name="water-saline", amount=100},
    },
    icons =angelsmods.functions.create_liquid_recipe_icon({{icon="__PCPRedux__/graphics/icons/raw/chloroprene.png",icon_size=72}}, "CClH"),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-chlorobutadiene"),
    order = "d[dichlorbutene-dechlorination]",
  },
  {
    type = "recipe",
    name = "liquid-rubber-2",
    category = "chemistry",
    subgroup = "petrochem-solids-2",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-chlorobutadiene", amount=100},
    },
    results=
    {
      {type="fluid", name="liquid-rubber", amount=100},
    },
    icons=create_icon("liquid-rubber", {
      icon = "__angelsrefining__/graphics/icons/num_2.png",
      icon_size = 32,
      tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
      scale = 0.32,
      shift = {-12, -12},
    }),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-rubber"),
    order = "b[rubber]-a[liquid]-a",
  },
  {
    type = "recipe",
    name = "catalyst-steam-cracking-acetylene",
    category = "steam-cracking",
    subgroup = "petrochem-cracking",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-ethylene", amount=60},
      {type="fluid", name="steam", amount=120},
      {type="item", name="catalyst-metal-red", amount=1},	--cu
    },
    results=
    {
      {type="fluid", name="gas-acetylene", amount=70},
      {type="fluid", name="gas-residual", amount=10},
      {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icons =angelsmods.functions.create_gas_recipe_icon({{icon="__PCPRedux__/graphics/icons/raw/acetylene.png",icon_size=72}}, "CHSg"),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("gas-acetylene"),
    order = "d[catalyst-steam-cracking-acetylene]",
  },
  {
    type = "recipe",
    name = "acetylene-diomerisation",
    category = "chemistry",
    subgroup = "petrochem-chemistry",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-acetylene", amount=60},
    },
    results=
    {
      {type="fluid", name="gas-vinyl-acetylene", amount=30},
    },
    icons =angelsmods.functions.create_gas_recipe_icon({{icon="__PCPRedux__/graphics/icons/raw/vinyl-acetylene.png",icon_size=72}}, "CCH"),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("gas-vinyl-acetylene"),
    order = "d[acetylene-diomerisation]",
  },
  -----
  {
    type = "recipe",
    name = "vinyl-acetlyene-chlorination",
    category = "chemistry",
    subgroup = "petrochem-chlorine-2",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="fluid", name="gas-vinyl-acetylene", amount=30},
      {type="fluid", name="gas-hydrogen-chloride", amount=40},
    },
    results=
    {
      {type="fluid", name="liquid-chlorobutadiene", amount=50},
    },
    icons =angelsmods.functions.create_liquid_recipe_icon({{icon="__PCPRedux__/graphics/icons/raw/chloroprene.png",icon_size=72}}, "CClH"),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-chlorobutadiene"),
    order = "d[acetylene-diomerisation]",
  },
  {
    type = "recipe",
    name = "rubber-additive-1",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 0.5,
    enabled = "false",
    ingredients ={
      {type="item", name="solid-carbon", amount=5},
    },
    results=
    {
      {type="item", name="solid-rubber-additive", amount=2},
    },
    icons ={
      {icon="__PCPRedux__/graphics/icons/solid-rubber-additive.png",icon_size = 64},
      {
        icon = "__angelsrefining__/graphics/icons/num_1.png",
        icon_size=32,
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-rubber"),
    order = "f[rubber-additive]",
  },
  --rubber additive 2 (2 carbon+4 spent rubber->3rubber additive) 0.5
  {
    type = "recipe",
    name = "rubber-additive-2",
    category = "chemistry",
    subgroup = "petrochem-solids",
    energy_required = 0.5,
    enabled = "false",
    ingredients ={
      {type="item", name="solid-carbon", amount=2},
      {type="item", name="solid-rubber-waste", amount=4}
    },
    results=
    {
      {type="item", name="solid-rubber-additive", amount=3},
    },
    icons ={
      {icon="__PCPRedux__/graphics/icons/solid-rubber-additive.png",icon_size = 64},
      {
        icon = "__angelsrefining__/graphics/icons/num_2.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        icon_size=32,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    order = "f[rubber-additive]",
  },
})