
function create_electric_mining_drill(args)

    local mining_drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill-mk3"])
    mining_drill.name = args.name
    mining_drill.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    mining_drill.icon_size = 64
    mining_drill.icon_mipmaps = nil
    mining_drill.minable.result = args.name
    mining_drill.max_health = 450
    mining_drill.module_specification.module_slots = 0
    mining_drill.mining_speed = args.mining_speed
    mining_drill.energy_usage = args.energy_usage
    mining_drill.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    mining_drill.allowed_effects = {}
    
    for _, direction in pairs({"north", "east", "south", "west"}) do
        local short = string.upper(string.sub(direction, 1, 1))
        -- animations        
        mining_drill.animations[direction].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/" .. mining_drill.name .. "/electric-mining-drill-" .. short .. ".png"
        mining_drill.animations[direction].animation_speed = 2
        mining_drill.animations[direction].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/" .. mining_drill.name .. "/hr-electric-mining-drill-" .. short .. ".png"
        mining_drill.animations[direction].hr_version.animation_speed = 2
        -- input_fluid_patch_sprites
        mining_drill.input_fluid_patch_sprites[direction].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/" .. mining_drill.name .. "/electric-mining-drill-" .. short .. "-patch.png"
        mining_drill.input_fluid_patch_sprites[direction].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/" .. mining_drill.name .. "/hr-electric-mining-drill-" .. short .. "-patch.png"
    end

    data:extend({
        {
            type = "item",
            name = args.name,
            icon = mining_drill.icon,
            icon_size = mining_drill.icon_size,
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

    data:extend({mining_drill})
end