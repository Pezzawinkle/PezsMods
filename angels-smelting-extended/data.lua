require("prototypes.alloys-category-extended")

require("prototypes.items.compression-extended")

require("prototypes.recipes.compressing-extended")
require("prototypes.recipes.ironworks-recipes")

require("prototypes.technology.smelting-extended")

if mods["bobplates"] then
  --[[
  All to do with alloys:
  ==extended smelting
  ==alloy coils
  ==extended pipes if bob-logistics
  ==bobs gears
  ==glass coil expansion
  ]]
require("prototypes.items.alloys-extended")
require("prototypes.recipes.smelting-alloys-extended")
end
if mods["angelsindustries"] then
  --[[
  All do do with component casting:
  ==Basic Components (mechanical-parts)
  ==Basic Components (construction-grates)
  ==Basic Components (construction-components)
  ==Basic Components (weapons-body)
  ==Basic Components (weapons-parts)
  ==Basic Components (cable-shielding)-from coils
  ]]
end
