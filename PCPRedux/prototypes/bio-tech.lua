data.extend({
  {
    type = "technology",
    name = "bioplastic-pla",
    icon = "__angelsbioprocessing__/graphics/technology/press-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "bio-plastic-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lactic-acid-esterification"
      },
      {
        type = "unlock-recipe",
        recipe = "Bacterial-Anerobic-Fermentation"
      },
      {
        type = "unlock-recipe",
        recipe = "bacterial-growth-seed-cultivation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "bacterial-growth-seed-cultivation"
      },
    },
    unit =
    {
      count = 75,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        --{"alien-science-pack", 1}
      },
      time = 30
    },
  },
})