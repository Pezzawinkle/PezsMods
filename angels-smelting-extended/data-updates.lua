require("prototypes.override")
if settings.startup["ASE-angels-coil-icons"].value==true then
  require("prototypes.icon-replace-functions")
  if mods["bobplates"] then
    ReplaceRollIcons("brass")
    ReplaceRollIcons("bronze")
    ReplaceRollIcons("nitinol")
  end
  --these are now actually vanilla angels rolls
  ReplaceRollIcons("gold")
  ReplaceRollIcons("lead")
  ReplaceRollIcons("tin")
  ReplaceRollIcons("silver")
  ReplaceRollIcons("nickel")
  ReplaceRollIcons("tungsten")
end
