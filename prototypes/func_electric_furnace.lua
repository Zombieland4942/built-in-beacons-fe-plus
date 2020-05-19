
function create_electric_furnace(args)

    local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace-mk3"])
    furnace.name = args.name
    furnace.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    furnace.icon_size = 64
    furnace.icon_mipmaps = nil
    furnace.minable.result = args.name
    furnace.module_specification.module_slots = 8
    furnace.crafting_speed = args.crafting_speed
    furnace.energy_usage = args.energy_usage
    furnace.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = "6.7MW" }    
    furnace.allowed_effects = {"productivity","pollution"}
    
    furnace.animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/" .. furnace.name .. "/electric-furnace.png"
    furnace.animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/" .. furnace.name .. "/hr-electric-furnace.png"

    local result,ingredients

    if settings.startup["upgradeable-recipes"].value then
      ingredients = args.upgradeable_ingredients
      result = args.upgradeable_result
    else
      ingredients = args.ingredients  
      result = args.result
    end

    data:extend({
        {
            type = "item",
            name = args.name,
            icon = furnace.icon,
            icon_size = furnace.icon_size,
            subgroup = "fb-machines",
            order = args.item_order,
            place_result = args.name,
            stack_size = 50
        },
        {
            type = "recipe",
            name = args.name,
            icon = furnace.icon,
            icon_size = furnace.icon_size,
            subgroup = "fb-machines",
            order = args.item_order,
            enabled = false,
            ingredients = ingredients,
            results = result
        }
    })

    data:extend({furnace})
end