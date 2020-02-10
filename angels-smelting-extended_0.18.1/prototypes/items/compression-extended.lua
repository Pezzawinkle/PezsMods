--[[DATA TABLE TEXT COPY
METAL NAME    || Implemented  || Sheet  || Icon   || molten RGB
aluminium     || Yes          || Sheet  || Angels || {r = 172/255, g = 161/255, b = 84/255}
chrome        || No           || Sheet  || Angels || {r = 200/255, g = 186/255, b = 245/255}
cobalt        || No           || Sheet  || Angels || {r = 51/255, g = 74/255, b = 109/255}
copper plate  || Yes          || Sheet  || Angels || {r = 154/255, g = 101/255, b = 86/255}
copper wire   || Yes          || Coil   || Angels || {r = 154/255, g = 101/255, b = 86/255}
glass         || No           || Sheet  || Extend || {r = 130/255, g = 127/255, b = 127/255}
glass wire    || Yes          || Coil   || Angels || {r = 130/255, g = 127/255, b = 127/255}
gold          || No           || Sheet  || Angels || {r = 237/255, g = 191/255, b = 29/255}
Gold wire     || Yes          || Coil   || Angels || {r = 237/255, g = 191/255, b = 29/255}
iron          || Yes          || Sheet  || Angels || {r = 125/255, g = 145/255, b = 161/255}
lead          || No           || Sheet  || Angels || {r = 209/255, g = 209/255, b = 209/255}
manganese     || No           || Sheet  || Angels || {r = 242/255, g = 97/255, b = 97/255}
nickel        || No           || Sheet  || Angels || {r = 60/255, g = 125/255, b = 119/255}
platinum      || No           || Sheet  || Angels || {r = 242/255, g = 212/255, b = 194/255}
platinum wire || No           || Coil   || Angels || {r = 242/255, g = 212/255, b = 194/255}
silicon       || No           || Sheet  || Angels || {r = 209/255, g = 209/255, b = 209/255}
silver        || No           || Sheet  || Angels || {r = 59/255, g = 143/255, b = 179/255}
silver wire   || No           || Coil   || Angels || {r = 59/255, g = 143/255, b = 179/255}
tin           || No           || Sheet  || Extend || {r = 87/255, g = 130/255, b = 96/255}
tin wire      || Yes          || Coil   || Angels || {r = 87/255, g = 130/255, b = 96/255}
titanium      || Yes          || Sheet  || Angels || {r = 126/255, g = 98/255, b = 123/255}
tungsten      || No           || Sheet  || Angels || {r = 136/255, g = 98/255, b = 65/255}
zinc          || No           || Sheet  || Angels || {r = 100/255, g = 183/255, b = 177/255}

steel         || Yes          || Sheet  || Angels || {r = 187/255, g = 192/255, b = 199/255}
solder wire   || Yes          || Coil   || Angels || {r = 106/255, g = 138/255, b = 129/255}
brass         || No           || Sheet  || Extend || {r = 204/256, g = 153/256, b = 102/256}
bronze        || No           || Sheet  || Extend || {r = 224/256, g = 155/256, b = 58/256}
nitinol       || No           || Sheet  || Extend || {r = 106/256, g = 92/256, b = 153/256}
invar         || No           || Sheet  || Extend || {r = 95/256, g = 125/256, b = 122/256}
cobalt-steel  || No           || Sheet  || Extend || {r = 61/256, g = 107/256, b = 153/256}
gunmetal      || No           || Sheet  || Extend || {r = 224/256, g = 103/256, b = 70/256}
]]
--[[Molds: mold-expendable, mold-non-expendable...
  both found in __angelssmelting__/prototypes/items/angels-support
  need to activate both recipes, check if recipe exists]]
-- Wires are already done (at least the ones worth adding at the moment)

-- Plates (rolls)
--[[Example:
{
type = "item",
name = "angels-roll-iron",
icon = "__angels-smelting-extended__/graphics/icons/roll-iron.png",
icon_size=32,
subgroup = "angels-iron-casting",
order = "ya",
stack_size = 200
},]]
data:extend({
  {
    type = "item",
    name = "angels-roll-gold",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 237/255, g = 191/255, b = 29/255},icon_size=32}},
    subgroup = "angels-gold-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-lead",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 209/255, g = 209/255, b = 209/255},icon_size=32}},
    subgroup = "angels-lead-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-nickel",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 60/255, g = 125/255, b = 119/255},icon_size=32}},
    subgroup = "angels-nickel-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-silver",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 59/255, g = 143/255, b = 179/255},icon_size=32}},
    subgroup = "angels-silver-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-tin",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 87/255, g = 130/255, b = 96/255},icon_size=32}},
    subgroup = "angels-tin-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-tungsten",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 136/255, g = 98/255, b = 65/255},icon_size=32}},
    subgroup = "angels-tungsten-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-brass",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 204/256, g = 153/256, b = 102/256},icon_size=32}},
    subgroup = "angels-alloys-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-bronze",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 224/256, g = 155/256, b = 58/256},icon_size=32}},
    subgroup = "angels-alloys-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-nitinol",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 106/256, g = 92/256, b = 153/256},icon_size=32}},
    subgroup = "angels-alloys-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-invar",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 95/256, g = 125/256, b = 122/256},icon_size=32}},
    subgroup = "angels-alloys-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-cobalt-steel",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 61/256, g = 107/256, b = 153/256},icon_size=32}},
    subgroup = "angels-alloys-casting",
    order = "ya",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-gunmetal",
    icons={{icon = "__angels-smelting-extended__/graphics/icons/roll-blank.png", tint = {r = 224/256, g = 103/256, b = 70/256},icon_size=32}},
    subgroup = "angels-alloys-casting",
    order = "ya",
    stack_size = 200
  },
})
