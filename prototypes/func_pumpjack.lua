
function create_pumpjack(args)

    local pumpjack = table.deepcopy(data.raw["mining-drill"]["pumpjack-mk2"])
    pumpjack.name = args.name
    --pumpjack.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    pumpjack.icon_size = 32
    pumpjack.icon_mipmaps = nil
    pumpjack.minable.result = args.name
    pumpjack.max_health = 450
    pumpjack.module_specification.module_slots = 8
    pumpjack.mining_speed = args.mining_speed
    pumpjack.energy_usage = args.energy_usage
    pumpjack.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    pumpjack.allowed_effects = {"productivity","pollution"}
    
    table.insert(pumpjack.animations.north.layers,
    {
        priority = "high",
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-pumpjack/pumpjack-horsehead-mask.png",
        line_length = 8,
        width = 104,
        height = 102,
        frame_count = 40,
        shift = util.by_pixel(-4, -24),
        --blend_mode = "additive",
        tint = args.tint,
        animation_speed = 0.7,
        hr_version =
        {
        priority = "high",
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-pumpjack/hr-pumpjack-horsehead-mask.png",
        animation_speed = 0.7,
        scale = 0.5,
        line_length = 8,
        width = 206,
        height = 202,
        frame_count = 40,
        shift = util.by_pixel(-4, -24),
        tint = args.tint,
        }
    })

    data:extend({
        {
            type = "item",
            name = args.name,
            icon = pumpjack.icon,
            icon_size = pumpjack.icon_size,
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
        },
        {
            type = "technology",
            name = args.name,
            icon_size = 128,
            icons = {{icon = "__base__/graphics/technology/automation.png", tint = args.technology_icon_tint}},
            effects = {{ type = "unlock-recipe", recipe = args.name }},
            unit =
            {
                count = 300,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}                
                },
                time = 30
            },
            prerequisites = args.prerequisites,
            order = args.tech_order
        }      
    })

    data:extend({pumpjack})
end