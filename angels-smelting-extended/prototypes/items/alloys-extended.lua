local AF = angelsmods.functions
if mods["bobplates"] then
  data:extend(
    --Molten ALLOYS
    {
       --Invar (FeNi)
      {
        type = "fluid",
        name = "angels-liquid-molten-invar",
        icon = "__angelssmeltinggraphics__/graphics/icons/molten-invar.png",
        icon_size = 64,
        icon_mipmaps = 4,
        default_temperature = 100,
        heat_capacity = "0kJ",
        base_color = ASE.tables.coil_metals["invar"].tint,
        flow_color = AF.fluid_color("Fe2Ni"),
        max_temperature = 100,
        auto_barrel = false
      },
      
    }
  )
end