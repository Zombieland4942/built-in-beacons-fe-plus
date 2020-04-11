
function create_electric_mining_drill(args)

    local mining_drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill-mk3"])
    mining_drill.name = args.name
    --mining_drill.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    mining_drill.icon_size = 64
    mining_drill.icon_mipmaps = nil
    mining_drill.minable.result = args.name
    mining_drill.max_health = 450
    mining_drill.module_specification.module_slots = 10
    mining_drill.mining_speed = args.mining_speed
    mining_drill.energy_usage = args.energy_usage
    mining_drill.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    mining_drill.allowed_effects = {"productivity","pollution"}
    
    mining_drill.animations = {
        north = {
        layers = {
            {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
            line_length = 8,
            width = 98,
            height = 113,
            frame_count = 64,
            animation_speed = 2,
            direction_count = 1,
            shift = util.by_pixel(0, -8.5),
            run_mode = "forward-then-backward",
            hr_version =
            {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
                line_length = 8,
                width = 196,
                height = 226,
                frame_count = 64,
                animation_speed = 2,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            },
            {
            filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/beaconed-electric-mining-drill-N-overlay.png",
            width = 93,
            height = 108,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(0.5, -10),
            animation_speed = 2,
            tint = args.tint,
            run_mode = "forward-then-backward",
            hr_version = {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/hr-beaconed-electric-mining-drill-N-overlay.png",
                priority = "high",
                width = 185,
                height = 215,
                line_length = 8,
                frame_count = 64,
                shift = util.by_pixel(0.25, -9.75),
                animation_speed = 2,
                tint = args.tint,
                scale = 0.5,
                run_mode = "forward-then-backward",
            }
            }
        }
        },
        east = {
        layers = {
            {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
            line_length = 8,
            width = 105,
            height = 98,
            frame_count = 64,
            animation_speed = 2,
            direction_count = 1,
            shift = util.by_pixel(3.5, -1),
            run_mode = "forward-then-backward",
            hr_version =
            {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
                line_length = 8,
                width = 211,
                height = 197,
                frame_count = 64,
                animation_speed = 2,
                direction_count = 1,
                shift = util.by_pixel(3.75, -1.25),
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            },
            {
            filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/beaconed-electric-mining-drill-E-overlay.png",
            width = 103,
            height = 89,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(2.5, -1.5),
            animation_speed = 2,
            tint = args.tint,
            run_mode = "forward-then-backward",
            hr_version = {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/hr-beaconed-electric-mining-drill-E-overlay.png",
                priority = "high",
                width = 205,
                height = 178,
                line_length = 8,
                frame_count = 64,
                shift = util.by_pixel(2.75, -1.5),
                animation_speed = 2,
                tint = args.tint,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            }
        }
        },
        south = {
        layers = {
            {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
            line_length = 8,
            width = 98,
            height = 109,
            frame_count = 64,
            animation_speed = 2,
            direction_count = 1,
            shift = util.by_pixel(0, -1.5),
            run_mode = "forward-then-backward",
            hr_version =
            {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
                line_length = 8,
                width = 196,
                height = 219,
                frame_count = 64,
                animation_speed = 2,
                direction_count = 1,
                shift = util.by_pixel(0, -1.25),
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            },
            {
            filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/beaconed-electric-mining-drill-S-overlay.png",
            width = 92,
            height = 105,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(0, -3.5),
            animation_speed = 2,
            tint = args.tint,
            run_mode = "forward-then-backward",
            hr_version = {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/hr-beaconed-electric-mining-drill-S-overlay.png",
                priority = "high",
                width = 184,
                height = 208,
                line_length = 8,
                frame_count = 64,
                shift = util.by_pixel(0, -3.5),
                animation_speed = 2,
                tint = args.tint,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            }
        }
        },
        west = {
        layers = {
            {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
            line_length = 8,
            width = 105,
            height = 98,
            frame_count = 64,
            animation_speed = 2,
            direction_count = 1,
            shift = util.by_pixel(-3.5, -1),
            run_mode = "forward-then-backward",
            hr_version =
            {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
                line_length = 8,
                width = 211,
                height = 197,
                frame_count = 64,
                animation_speed = 2,
                direction_count = 1,
                shift = util.by_pixel(-3.75, -0.75),
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            },
            {
            filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/beaconed-electric-mining-drill-W-overlay.png",
            width = 102,
            height = 90,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(-3, -1),
            animation_speed = 2,
            tint = args.tint,
            run_mode = "forward-then-backward",
            hr_version = {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-mining-drill/hr-beaconed-electric-mining-drill-W-overlay.png",
                priority = "high",
                width = 204,
                height = 180,
                line_length = 8,
                frame_count = 64,
                shift = util.by_pixel(-3, -1),
                animation_speed = 2,
                tint = args.tint,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
            }
        }
        }
    }

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

    data:extend({mining_drill})
end