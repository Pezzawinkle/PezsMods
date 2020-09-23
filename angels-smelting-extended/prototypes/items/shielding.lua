require("prototypes.data-tables")

for n, item in pairs(shielding) do
    data:extend({
        type = "item",
        name = "angels-shielding-coil-" .. item.metal,
        icons = { { icon = "__angels-smelting__/graphics/icons/wire-coil-" .. item.metal .. ".png", icon_size = 32 } },
        subgroup = "angels-" .. item.metal .. "-casting",
        order = item.order,
        stack_size = 200
    })
end