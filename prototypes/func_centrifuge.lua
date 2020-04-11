function create_centrifuge(args)

    local centrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge-mk3"])
    centrifuge.name = args.name
    --centrifuge.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    --centrifuge.icon_size = 32
    centrifuge.icon_mipmaps = nil
    centrifuge.minable.result = args.name
    centrifuge.max_health = 900
    centrifuge.module_specification.module_slots = 8
    centrifuge.crafting_speed = args.crafting_speed
    centrifuge.energy_usage = args.energy_usage
    centrifuge.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    centrifuge.allowed_effects = {"productivity","pollution"}
    
    data:extend({
        {
            type = "item",
            name = args.name,
            icon = centrifuge.icon,
            icon_size = centrifuge.icon_size,
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

    data:extend({centrifuge})
end
