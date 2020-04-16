
function create_electric_furnace(args)

    local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace-mk3"])
    furnace.name = args.name
    furnace.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    furnace.icon_size = 64
    furnace.icon_mipmaps = nil
    furnace.minable.result = args.name
    furnace.max_health = 450
    furnace.module_specification.module_slots = 8
    furnace.crafting_speed = args.crafting_speed
    furnace.energy_usage = args.energy_usage
    furnace.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    furnace.allowed_effects = {"productivity","pollution"}
    
    furnace.animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/" .. furnace.name .. "/electric-furnace.png"
    furnace.animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/" .. furnace.name .. "/hr-electric-furnace.png"

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
            enabled = false,
            ingredients = args.ingredients,
            result = args.name
        }
    })

    data:extend({furnace})
end