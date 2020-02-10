data:extend(
{
   --[[{
    type = "bool-setting",
    name = "pcp-enable-experimental",
    setting_type = "startup",
    default_value = true,
    order = "a",
   },]]
    {type = "bool-setting",
    name = "pcp-glass-sink",
    setting_type = "startup",
    default_value = true,
    order = "b",
  },
  {
    type="bool-setting",
    name="pcp-replace-phenol-oxygen",
    setting_type="startup",
    default_value= true,
    order="c",
  },
  {
    type="bool-setting",
    name="pcp-gas-bottling",
    setting_type="startup",
    default_value= true,
    order="d",
  },
})
