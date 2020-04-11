function create_refinery(args)

    local refinery = table.deepcopy(data.raw["assembling-machine"]["oil-refinery-mk3"])
    refinery.name = args.name
    --refinery.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    --refinery.icon_size = 32
    refinery.icon_mipmaps = nil
    refinery.minable.result = args.name
    refinery.max_health = 400
    refinery.module_specification.module_slots = 8
    refinery.crafting_speed = args.crafting_speed
    refinery.energy_usage = args.energy_usage
    refinery.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    refinery.allowed_effects = {"productivity","pollution"}
    
    data:extend({
        {
            type = "item",
            name = args.name,
            icon = refinery.icon,
            icon_size = refinery.icon_size,
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

    data:extend({refinery})
end
