function create_chemical_plant(args)

    local chemplant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant-mk3"])
    chemplant.name = args.name
    --chemplant.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    --chemplant.icon_size = 32
    chemplant.icon_mipmaps = nil
    chemplant.minable.result = args.name
    chemplant.max_health = 900
    chemplant.module_specification.module_slots = 8
    chemplant.crafting_speed = args.crafting_speed
    chemplant.energy_usage = args.energy_usage
    chemplant.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    chemplant.allowed_effects = {"productivity","pollution"}
    
    data:extend({
        {
            type = "item",
            name = args.name,
            icon = chemplant.icon,
            icon_size = chemplant.icon_size,
            subgroup = "fb-fluids",
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

    data:extend({chemplant})
end
