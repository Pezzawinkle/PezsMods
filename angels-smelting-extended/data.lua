require("prototypes.alloys-category-extended")

require("prototypes.items.compression-extended")
require("prototypes.items.ironworks")
require("prototypes.recipes.compressing-extended")
require("prototypes.recipes.ironworks")

angelsmods.trigger.smelting_products["steel"].powder = true -- enforce steel powder on for molds

if mods["bobplates"] then
  require("prototypes.items.alloys-extended")
  require("prototypes.recipes.smelting-alloys-extended")
end

require("prototypes.technology.smelting-extended")



