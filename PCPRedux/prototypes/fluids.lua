local show_formula = settings.startup["angels-show-chemical-formula"].value
data:extend({
  {
    type = "fluid",
    name = "liquid-dichlorobutene", --C4H6Cl2
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/dichlorobutene.png",icon_size=72},"chl"),
    localised_description = show_formula and
        {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]6[/font]Cl[font=default-tiny-bold]2[/font]"} or
        nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color =angelsmods.functions.fluid_color({"c4","h6","l2"}),-- {r = 172/255, g = 172/255, b = 172/255}, --C4H6
    flow_color = angelsmods.functions.fluid_color({"c4","h6","l2"}),--{r = 180/255, g = 197/255, b = 129/255}, --C4H6Cl2
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-chlorobutadiene", --C4H5Cl
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/chloroprene.png",icon_size=72},"chl"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]5[/font]Cl"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c4","h5","l"}),--{r = 44/255, g = 44/255, b = 114/255}, -- CN
    flow_color = angelsmods.functions.fluid_color({"c4","h5","l"}),--{r = 150/255, g = 150/255, b = 185/255}, --HCN
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-hydrogen-cyanide", --HCN
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/hydrogen-cyanide.png",icon_size=72},"chn"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "HCN"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"h","c","n"}),--{r = 44/255, g = 44/255, b = 114/255}, -- CN
    flow_color = angelsmods.functions.fluid_color({"h","c","n"}),--{r = 150/255, g = 150/255, b = 185/255}, --HCN
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-acetone-cyanohydrin", --C4H7NO
    icons =angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/acetone-cyanohydrin.png",icon_size=72},"cno"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]7[/font]NO"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c4","h7","n","o"}),--{r = 63/255, g = 63/255, b = 85/255}, --C4H7N {taken as (C3, H7) blended with 1 N}
    flow_color = angelsmods.functions.fluid_color({"c4","h7","n","o"}),--{r = 146/255, g = 38/255, b = 73/255}, --C4H7NO
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-acrylonitrile",
    icons =angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/acrylonitrile.png",icon_size=72},"chn"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]3[/font]N"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c3","h3","n"}),--{r = 151/255, g = 151/255, b = 151/255}, -- C3H3
    flow_color = angelsmods.functions.fluid_color({"c3","h3","n"}),--{r = 96/255, g = 96/255, b = 166/255}, --C3H3N
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-methyl-methacrylate",
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/methyl-methacrylate.png",icon_size=72},"cho"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]8[/font]O[font=default-tiny-bold]2[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c5","h8","o2"}),--{r = 186/255, g = 186/255, b = 186/255}, --C5H8 {taken as (C4, H8)}
    flow_color = angelsmods.functions.fluid_color({"c5","h8","o2"}),--{r = 200/255, g = 128/255, b = 128/255}, --C5H8O2 {Taken as (C2,H4,O)}
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-vinyl-chloride", --C2H3Cl
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/vinyl-chloride.png",icon_size=72},"clh"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]3[/font]Cl"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c2","h3","l"}),--{r = 172/255, g = 172/255, b = 172/255}, --C2H3
    flow_color = angelsmods.functions.fluid_color({"c2","h3","l"}),--{r = 180/255, g = 197/255, b = 129/255}, --C2H3Cl
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-acetylene", --C2H2
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/acetylene.png",icon_size=72},"chh"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]2[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c2","h2"}),--{r = 172/255, g = 172/255, b = 172/255}, --C2H2
    flow_color = angelsmods.functions.fluid_color({"c2","h2"}),--{r = 172/255, g = 172/255, b = 172/255}, --C2H2
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-vinyl-acetylene", --C4H6O2
    icons = angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/vinyl-acetylene.png",icon_size=72},"cch"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]2[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c4","h6","o2"}),--{r = 172/255, g = 172/255, b = 172/255}, --C4H6
    flow_color = angelsmods.functions.fluid_color({"c4","h6","o2"}),--{r = 172/255, g = 172/255, b = 172/255}, --C4H6O2
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "gas-nitrous-oxide",
    icons =angelsmods.functions.create_gas_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/nitrous-oxide.png",icon_size=72},"nno"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "N[font=default-tiny-bold]2[/font]O"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    gas_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"n2","o"}),--{r = 41/255, g = 41/255, b = 180/255}, --NN
    flow_color = angelsmods.functions.fluid_color({"n2","o"}),--{r = 1180/255, g = 41/255, b = 180/255}, --NNO
    max_temperature = 100,
    auto_barrel=true,
  },
  {
    type = "fluid",
    name = "liquid-lactic-acid",--C3H6O3
    icons = angelsmods.functions.create_liquid_fluid_icon({icon="__PCPRedux__/graphics/icons/raw/lactic-acid.png",icon_size=72},"coh"),
    localised_description = show_formula and
    {"tooltip-description.chemical-formula", "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]3[/font]"} or
    nil,
    subgroup = "petrochem-chlorine-fluids",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = angelsmods.functions.fluid_color({"c3","h6","o3"}),--{r = 1, g = 1, b = 1},
    flow_color = angelsmods.functions.fluid_color({"c3","h6","o3"}),--{r = 1, g = 1, b = 1},
    max_temperature = 100,
    auto_barrel=true,
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
})
