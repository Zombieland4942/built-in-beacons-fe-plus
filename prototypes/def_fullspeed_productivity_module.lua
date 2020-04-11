
--[[ 
    
Item            FE+ Prod    FE+ Polu    Our Prod    Our Polu
module 4        0.16        0.14        0.08        0.07
module 5        0.24        0.19        0.12        0.10
module 6        0.34        0.25        0.17        0.13

]]--
data:extend({
  {
    type = "module",
    name = "fullspeed-productivity-module-4",
    localised_description = {"item-description.fullspeed-productivity-module-4"},
    icon = "__built-in-beacons-fe-plus__/graphics/icons/fullspeed-productivity-module-4.png",
    icon_size = 32,
    icon_mipmaps = 4,
    subgroup = "fb-module",
    category = "productivity",
    tier = 4,
    order = "l",
    stack_size = 200,
    effect =
    {
      productivity = {bonus = 0.08},
      pollution = {bonus = 0.07}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "fullspeed-productivity-module-5",
    localised_description = {"item-description.fullspeed-productivity-module-5"},
    icon = "__built-in-beacons-fe-plus__/graphics/icons/fullspeed-productivity-module-5.png",
    icon_size = 32,
    icon_mipmaps = 4,
    subgroup = "fb-module",
    category = "productivity",
    tier = 5,
    order = "m",
    stack_size = 200,
    effect =
    {
      productivity = {bonus = 0.12},
      pollution = {bonus = 0.10}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "fullspeed-productivity-module-6",
    localised_description = {"item-description.fullspeed-productivity-module-6"},
    icon = "__built-in-beacons-fe-plus__/graphics/icons/fullspeed-productivity-module-6.png",
    icon_size = 32,
    icon_mipmaps = 4,
    subgroup = "fb-module",
    category = "productivity",
    tier = 6,
    order = "n",
    stack_size = 200,
    effect =
    {
      productivity = {bonus = 0.17},
      pollution = {bonus = 0.13}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
})

--[[Recipe]]--
data:extend({
  {
    type = "recipe",
    name = "fullspeed-productivity-module-4",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
	  {"productivity-module-4", 1}
    },
    result = "fullspeed-productivity-module-4",
    result_count = 2
  },
  {
    type = "recipe",
    name = "fullspeed-productivity-module-5",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
	  {"productivity-module-5", 1}
    },
    result = "fullspeed-productivity-module-5",
    result_count = 2
  },
  {
    type = "recipe",
    name = "fullspeed-productivity-module-6",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
	  {"productivity-module-6", 1}
    },
    result = "fullspeed-productivity-module-6",
    result_count = 2
  },
})
