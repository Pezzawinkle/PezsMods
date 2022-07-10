local show_formula = settings.startup["angels-show-chemical-formula"].value
data:extend({
  --basics (non-specific chemistry stuffs)
  {
    type = "item",
    name = "catalyst-metal-cyan",
    icon = "__PCPRedux__/graphics/icons/catalyst-metal-cyan.png",
    icon_size = 32,
    subgroup = "petrochem-catalysts",
    order = "e[catalyst-metal-cyan]",
    stack_size = 100
  },
  --carbons (basic hydrocarbons and HCO's)
  {
    type = "fluid",
    name = "liquid-methyl-methacrylate",
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/methyl-methacrylate.png",icon_size=72},"CHO"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]8[/font]O[font=default-tiny-bold]2[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C5H8O2"),--{r = 186/255, g = 186/255, b = 186/255}, --C5H8 {taken as (C4, H8)}
    flow_color = angelsmods.functions.fluid_color("C5H8O2"),--{r = 200/255, g = 128/255, b = 128/255}, --C5H8O2 {Taken as (C2,H4,O)}
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-acetylene", --C2H2
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/acetylene.png",icon_size=72},"CHH"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]2[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C2H2"),--{r = 172/255, g = 172/255, b = 172/255}, --C2H2
    flow_color = angelsmods.functions.flow_color("C2H2"),--{r = 172/255, g = 172/255, b = 172/255}, --C2H2
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-vinyl-acetylene", --C4H6O2
    icons = angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/vinyl-acetylene.png",icon_size=72},"CCH"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]2[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C4H6O2"),--{r = 172/255, g = 172/255, b = 172/255}, --C4H6
    flow_color = angelsmods.functions.flow_color("C4H6O2"),--{r = 172/255, g = 172/255, b = 172/255}, --C4H6O2
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-lactic-acid",--C3H6O3
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/lactic-acid.png",icon_size=72},"COH"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]3[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C2H6O3"),--{r = 1, g = 1, b = 1},
    flow_color = angelsmods.functions.flow_color("C2H6O3"),--{r = 1, g = 1, b = 1},
    max_temperature = 100,
    auto_barrel=true,
  },
  --chlorine
  {
    type = "fluid",
    name = "liquid-dichlorobutene", --C4H6Cl2
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/dichlorobutene.png",icon_size=72},"CHCl"),
    localised_description = show_formula and
        {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]6[/font]Cl[font=default-tiny-bold]2[/font]"} or
        nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color =angelsmods.functions.fluid_color("C4H6Cl2"),-- {r = 172/255, g = 172/255, b = 172/255}, --C4H6
    flow_color = angelsmods.functions.flow_color("C4H6Cl2"),--{r = 180/255, g = 197/255, b = 129/255}, --C4H6Cl2
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-chlorobutadiene", --C4H5Cl
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/chloroprene.png",icon_size=72},"CHCl"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]5[/font]Cl"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C4H5Cl"),--{r = 44/255, g = 44/255, b = 114/255}, -- CN
    flow_color = angelsmods.functions.flow_color("C4H5Cl"),--{r = 150/255, g = 150/255, b = 185/255}, --HCN
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-vinyl-chloride", --C2H3Cl
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/vinyl-chloride.png",icon_size=72},"CClH"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]3[/font]Cl"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C2H3Cl"),--{r = 172/255, g = 172/255, b = 172/255}, --C2H3
    flow_color = angelsmods.functions.flow_color("C2H3Cl"),--{r = 180/255, g = 197/255, b = 129/255}, --C2H3Cl
    max_temperature = 100,
    auto_barrel=true,
  },
  --nitrogen
  {
    type = "fluid",
    name = "gas-hydrogen-cyanide", --HCN
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/hydrogen-cyanide.png",icon_size=72},"CHN"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "HCN"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("HCN"),--{r = 44/255, g = 44/255, b = 114/255}, -- CN
    flow_color = angelsmods.functions.flow_color("HCN"),--{r = 150/255, g = 150/255, b = 185/255}, --HCN
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-acetone-cyanohydrin", --C4H7NO
    icons =angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/acetone-cyanohydrin.png",icon_size=72},"CNO"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]7[/font]NO"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C4H7NO"),--{r = 63/255, g = 63/255, b = 85/255}, --C4H7N {taken as (C3, H7) blended with 1 N}
    flow_color = angelsmods.functions.flow_color("C4H7NO"),--{r = 146/255, g = 38/255, b = 73/255}, --C4H7NO
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-acrylonitrile",
    icons =angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/acrylonitrile.png",icon_size=72},"CHN"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]3[/font]N"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("C3H3N"),--{r = 151/255, g = 151/255, b = 151/255}, -- C3H3
    flow_color = angelsmods.functions.flow_color("C3H3N"),--{r = 96/255, g = 96/255, b = 166/255}, --C3H3N
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-nitrous-oxide",
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/nitrous-oxide.png",icon_size=72},"NNO"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "N[font=default-tiny-bold]2[/font]O"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color("N2O"),--{r = 41/255, g = 41/255, b = 180/255}, --NN
    flow_color = angelsmods.functions.flow_color("N2O"),--{r = 1180/255, g = 41/255, b = 180/255}, --NNO
    max_temperature = 100,
    auto_barrel=true,
  },
  --raws
  --solids
  {
    type = "item",
    name = "solid-pvc",
    icon = "__PCPRedux__/graphics/icons/solid-polyvinyl-chloride.png",
    icon_size = 32,
    subgroup = "petrochem-solids-fluids",
    order = "d[solid-pvc]",
    stack_size = 1
  },
  {
    type = "item",
    name = "solid-abs",
    icon = "__PCPRedux__/graphics/icons/solid-acrylonitrile-butadiene-styrene.png",
    icon_size = 32,
    subgroup = "petrochem-solids-fluids",
    order = "d[solid-abs]",
    stack_size = 1
  },
  {
    type = "item",
    name = "solid-pmma",
    icon = "__PCPRedux__/graphics/icons/solid-polymethyl-methacrylate.png",
    icon_size = 32,
    subgroup = "petrochem-solids-fluids",
    order = "d[solid-pmma]",
    stack_size = 100
  },
  {
    type = "item",
    name = "solid-pc",
    icon = "__PCPRedux__/graphics/icons/solid-polycarbonate.png",
    icon_size = 32,
    subgroup = "petrochem-solids-fluids",
    order = "d[solid-pc]",
    stack_size = 100
  },
  {
    type = "item",
    name = "solid-ammonium-sulphate",
    icon = "__PCPRedux__/graphics/icons/solid-ammonium-sulphate.png",
    icon_size = 32,
    subgroup = "petrochem-sulfur",
    order = "a[solid-ammonium-sulphate]",
    stack_size = 100
  },
  {
    type = "item",
    name = "solid-sodium-nitrate",
    icon = "__PCPRedux__/graphics/icons/solid-sodium-nitrate.png",
    icon_size = 32,
    subgroup = "petrochem-sodium",
    order = "a[solid-sodium-nitrate]",
    stack_size = 100
  },
  --sulfur
})
  
  