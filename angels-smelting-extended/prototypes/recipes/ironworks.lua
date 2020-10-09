require("prototypes.data-tables")
-- IRONWORKS

--SET-UP BASE CASTING RECIPES TO COPY LATER
data:extend({
    {
        type = "recipe",
        name = "angels-iron-pipe-casting",
        category = "casting",
        subgroup = "angels-iron-casting",
        energy_required = 4,
        enabled = "false",
        ingredients = {
            { type = "fluid", name = "liquid-molten-iron", amount = 40 },
        },
        results =
        {
            { type = "item", name = "pipe", amount = 4 },
        },
        order = "ya",
    },
    {
        type = "recipe",
        name = "angels-iron-pipe-to-ground-casting",
        category = "casting",
        subgroup = "angels-iron-casting",
        energy_required = 2,
        enabled = "false",
        ingredients = {
            { type = "fluid", name = "liquid-molten-iron", amount = 150 },
        },
        results =
        {
            { type = "item", name = "pipe-to-ground", amount = 2 },
        },
        order = "yb",
    },
})
-- bobs pipe casting
if mods["boblogistics"] and mods["bobplates"] then
    --call pipe metal types (metal_tab)
    for n, metal in pairs(metal_tab) do
        --metal straight pipes
        local m_pipe = table.deepcopy(data.raw.recipe["angels-iron-pipe-casting"])
        m_pipe.name = "angels-" .. metal .. "-pipe-casting"
        m_pipe.subgroup = "angels-" .. metal .. "-casting"
        m_pipe.ingredients = { { type = "fluid", name = "liquid-molten-" .. metal, amount = 40 }, }
        m_pipe.results = { { type = "item", name = metal .. "-pipe", amount = 4 }, }
        --metal UG pipes
        local u_pipe = table.deepcopy(data.raw.recipe["angels-iron-pipe-to-ground-casting"])
        local ug_multi = {
            ["copper"] = 150,
            ["steel"] = 170,
            ["titanium"] = 210,
            ["brass"] = 190,
            ["bronze"] = 170,
            ["nitinol"] = 230,
            ["tungsten"] = 21
        }
        --iron is 15x for UG
        u_pipe.name = "angels-" .. metal .. "-pipe-to-ground-casting"
        u_pipe.subgroup = "angels-" .. metal .. "-casting"
        u_pipe.ingredients = { { type = "fluid", name = "liquid-molten-" .. metal, amount = ug_multi[metal] }, }
        u_pipe.results = { { type = "item", name = metal .. "-pipe-to-ground", amount = 2 }, }
        --tungsten-fixes
        if metal == "tungsten" then
            m_pipe.ingredients[1] = { type = "item", name = "casting-powder-tungsten", amount = 4 }
            m_pipe.category = "sintering"
            u_pipe.ingredients[1] = { type = "item", name = "casting-powder-tungsten", amount = ug_multi[metal] }
            u_pipe.category = "sintering"
        end
        data:extend({ m_pipe, u_pipe })
    end
end
--SETTING UP CASTING MOLD ITEMS and RECIPES
data:extend({
    --expendable mold recipe (want roasted)
    {
        type = "recipe",
        name = "ASE-sand-die",
        category = "sintering",
        subgroup = "angels-mold-casting",
        energy_required = 8,
        enabled = "false",
        icons = {
            {
                icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
                icon_size = 32,
            },
        },
        icon_size = 32,
        ingredients = {
            { type = "item", name = "solid-sand", amount = 40 },
            { type = "item", name = "powder-steel", amount = 1 }
        },
        results = {
            { type = "item", name = "ASE-sand-die", amount = 8 },
        },
        order = "aa",
    },
    --non-expendable mold recipe (initial)
    {
        type = "recipe",
        name = "ASE-metal-die",
        category = "sintering",
        subgroup = "angels-mold-casting",
        icons = {
            {
                icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
                icon_size = 32,
            },
            {
                icon = "__angelsrefining__/graphics/icons/num_1.png",
                tint = { r = 0.8, g = 0.8, b = 0.8, a = 0.5 },
                scale = 0.32,
                shift = { -12, -12 },
            },
        },
        icon_size = 32,
        energy_required = 8,
        enabled = "false",
        ingredients = {
            { type = "item", name = "solid-zinc-oxide", amount = 40 },
            { type = "item", name = "powder-steel", amount = 10 }
        },
        results = {
            { type = "item", name = "ASE-metal-die", amount = 8 },
        },
        order = "ab",
    },

    --non-expendable mold washing
    {
        type = "recipe",
        name = "ASE-metal-die-wash",
        category = "crafting-with-fluid",
        subgroup = "angels-mold-casting",
        energy_required = 8,
        enabled = "false",
        icons = {
            {
                icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
                icon_size = 32,
            },
            { icon = "__angelsrefining__/graphics/icons/slag.png", icon_size = 32, scale = 0.6 },
            {
                icon = "__angelsrefining__/graphics/icons/num_2.png",
                icon_size = 32,
                tint = { r = 0.8, g = 0.8, b = 0.8, a = 0.5 },
                scale = 0.32,
                shift = { -12, -12 },
            },
        },
        icon_size = 32,
        ingredients = {
            { type = "item", name = "ASE-spent-metal-die", amount = 3 },
            { type = "fluid", name = "liquid-nitric-acid", amount = 20 }
        },
        results = {
            { type = "item", name = "ASE-metal-die", amount = 3 },
            { type = "fluid", name = "water-red-waste", amount = 20 },
        },
        order = "ac",
    },
})

local function add_casting_recipes(name, category, metal, ingredient, cost, amount, icon)
    data:extend({
        {
            type = "recipe",
            name = "angels-" .. name .. "-casting",
            category = category,
            subcategory = "angels-" .. metal .. "-casting",
            energy_required = 4,
            enabled = "false",
            ingredients = {
                { ingredient.type, ingredient.name, amount = 40 * cost }
            },
            results = {
                { type = "item", name = name, amount = 4 * amount }
            }
        },
        {
            type = "recipe",
            name = "ASE-" .. name .. "-casting-expendable",
            category = category,
            subcategory = "angels-" .. metal .. "-casting",
            energy_required = 4,
            enabled = "false",
            icons = {
                {
                    icon = "__" .. icon.mod .. "__/graphics/icons/" .. icon.name .. ".png",
                    icon_size = icon.size,
                },
                {
                    icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
                    icon_size = 32,
                    scale = 0.32,
                    shift = { -12, -12 },
                },
            },
            ingredients = {
                { ingredient.type, ingredient.name, amount = 60 * cost },
                { type = "item", name = "ASE-sand-die", amount = 2 }
            },
            results = {
                { type = "item", name = name, amount = 8 * amount },
                { type = "item", name = "solid-sand", amount = 5 },
            }
        },
        {
            type = "recipe",
            name = "ASE-" .. name .. "-casting-advanced",
            category = category,
            subcategory = "angels-" .. metal .. "-casting",
            energy_required = 2,
            enabled = "false",
            icons = {
                {
                    icon = "__" .. icon.mod .. "__/graphics/icons/" .. icon.name .. ".png",
                    icon_size = icon.size,
                },
                {
                    icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
                    icon_size = 32,
                    scale = 0.32,
                    shift = { -12, -12 },
                },
            },
            ingredients = {
                { ingredient.type, ingredient.name, amount = 110 * cost },
                { type = "item", name = "ASE-metal-die", amount = 3 },
            },
            results = {
                { type = "item", name = name, amount = 16 * amount },
                { type = "item", name = "ASE-spent-metal-die", amount = 3 },
            }
        }
    })
end

local function add_liquid_casting_recipes(name, metal, cost, amount, icon)
    local ingredient = { type = "fluid", name = "liquid-molten-" .. metal }
    add_casting_recipes(name, "casting", metal, ingredient, cost, amount, icon)
end

local function add_powder_casting_recipes(name, metal, cost, amount, icon)
    local ingredient = { type = "item", name = "casting-powder-" .. metal }
    add_casting_recipes(name, "sintering", metal, ingredient, cost, amount, icon)
end

if mods["angelsindustries"] and angelsmods.industries.components then
    local function icon(name)
        return { mod = "angelsindustries", name = name, size = 32 }
    end

    for name, details in pairs(liquid_casting) do
        add_liquid_casting_recipes(name, details.metal, details.cost, details.amount, icon(name))
    end

    for name, details in pairs(powder_casting) do
        add_powder_casting_recipes(name, details.metal, details.cost, details.amount, icon(name))
    end
else
    add_liquid_casting_recipes("iron-gear-wheel", "iron", 1, 1, { mod = "base", name = "iron-gear-wheel", size = 64 })

    if mods["bobplates"] then
        local function icon(name)
            return { mod = "bobplates", name = name, size = 32 }
        end

        add_liquid_casting_recipes("steel-gear-wheel", "steel", 1, 1, icon("steel-gear-wheel"))
        add_liquid_casting_recipes("nitinol-gear-wheel", "nitinol", 1, 1, icon("nitinol-gear-wheel"))
        add_liquid_casting_recipes("titanium-gear-wheel", "titanium", 1, 1, icon("titanium-gear-wheel"))
        add_liquid_casting_recipes("brass-gear-wheel", "brass", 1, 1, icon("brass-gear-wheel"))
        add_liquid_casting_recipes("cobalt-steel-gear-wheel", "cobalt-steel", 1, 1, icon("cobalt-steel-gear-wheel"))
        add_powder_casting_recipes("tungsten-gear-wheel", "tungsten", 0.1, 1, icon("tungsten-gear-wheel"))
    end
end
