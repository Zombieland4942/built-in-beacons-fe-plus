
function create_electric_furnace(args)

    local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace-mk3"])
    furnace.name = args.name
    --furnace.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    furnace.icon_size = 32
    furnace.icon_mipmaps = nil
    furnace.minable.result = args.name
    furnace.max_health = 450
    furnace.module_specification.module_slots = 8
    furnace.crafting_speed = args.crafting_speed
    furnace.energy_usage = args.energy_usage
    furnace.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }    
    furnace.allowed_effects = {"productivity","pollution"}
    
    furnace.animation = {
        layers = {
            {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/beaconed-electric-furnace-base.png",
                priority = "high",
                width = 129,
                height = 100,
                frame_count = 1,
                shift = {0.421875, 0},
                hr_version = {
                    filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/hr-beaconed-electric-furnace-base.png",
                    priority = "high",
                    width = 239,
                    height = 219,
                    frame_count = 1,
                    shift = util.by_pixel(0.75, 5.75),
                    scale = 0.5
                }
            },
            {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/beaconed-electric-furnace-overlay.png",
                priority = "high",
                width = 101,
                height = 101,
                frame_count = 1,
                shift = util.by_pixel(1, 0),
                tint = args.tint,
                hr_version = {
                    filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/hr-beaconed-electric-furnace-overlay.png",
                    priority = "high",
                    width = 201,
                    height = 200,
                    frame_count = 1,
                    shift = util.by_pixel(0.75, 0),
                    tint = args.tint,
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
                priority = "high",
                width = 129,
                height = 100,
                frame_count = 1,
                shift = {0.421875, 0},
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
                    priority = "high",
                    width = 227,
                    height = 171,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(11.25, 7.75),
                    scale = 0.5
                }
            }
        }
    }

    furnace.working_visualisations[2].animation =
    {
        layers = {
            {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
                priority = "high",
                width = 19,
                height = 13,
                frame_count = 4,
                animation_speed = beaconed_electric_furnace_1_animation_speed,
                shift = {-0.671875, -0.640625},
                hr_version = {
                    filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
                    priority = "high",
                    width = 37,
                    height = 25,
                    frame_count = 4,
                    animation_speed = beaconed_electric_furnace_1_animation_speed,
                    shift = util.by_pixel(-20.5, -18.5),
                    scale = 0.5
                }
            },
            {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/beaconed-electric-furnace-propeller-1-overlay.png",
                priority = "high",
                width = 19,
                height = 13,
                frame_count = 4,
                animation_speed = beaconed_electric_furnace_1_animation_speed,
                shift = {-0.671875, -0.640625},
                tint = args.tint,
                hr_version = {
                    filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/hr-beaconed-electric-furnace-propeller-1-overlay.png",
                    priority = "high",
                    width = 37,
                    height = 25,
                    frame_count = 4,
                    animation_speed = beaconed_electric_furnace_1_animation_speed,
                    shift = util.by_pixel(-20.5, -18.5),
                    tint = args.tint,
                    scale = 0.5
                }
            }
        }
    }

    furnace.working_visualisations[3].animation =
    {
        layers = {
            {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
                priority = "high",
                width = 12,
                height = 9,
                frame_count = 4,
                animation_speed = beaconed_electric_furnace_1_animation_speed,
                shift = {0.0625, -1.234375},
                hr_version = {
                    filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
                    priority = "high",
                    width = 23,
                    height = 15,
                    frame_count = 4,
                    animation_speed = beaconed_electric_furnace_1_animation_speed,
                    shift = util.by_pixel(3.5, -38),
                    scale = 0.5
                }
            },
            {
                filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/beaconed-electric-furnace-propeller-2-overlay.png",
                priority = "high",
                width = 12,
                height = 8,
                frame_count = 4,
                animation_speed = beaconed_electric_furnace_1_animation_speed,
                shift = util.by_pixel(3.5, -38.5),
                tint = args.tint,
                hr_version = {
                    filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-electric-furnace/hr-beaconed-electric-furnace-propeller-2-overlay.png",
                    priority = "high",
                    width = 23,
                    height = 15,
                    frame_count = 4,
                    animation_speed = beaconed_electric_furnace_1_animation_speed,
                    shift = util.by_pixel(3.25, -38.25),
                    tint = args.tint,
                    scale = 0.5
                }
            }
        }
    }

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