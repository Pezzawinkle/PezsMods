data:extend({
  {
    type = "technology",
    name = "Rubber-Processing",
    icon = "__angelspetrochem__/graphics/technology/separator-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "rubber",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rubber-block-molding"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber-masterbatching"
      },
      {
        type = "unlock-recipe",
        recipe = "pre-rubber-mixing"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber-slabbing"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber-powderisation"
      },
      {
        type = "unlock-recipe",
        recipe = "vulcanised-rubber-reforming"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-rubber-casting"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber-additive-2"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber-additive-1"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-rubber-converting"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber-pelletisation"
      },
    },
    unit =
    {
      count = 75,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
})
