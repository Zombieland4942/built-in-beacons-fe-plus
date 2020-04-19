function create_centrifuge(args)

    local centrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge-mk3"])
    centrifuge.name = args.name
    centrifuge.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    centrifuge.icon_size = 64
    centrifuge.icon_mipmaps = nil
    centrifuge.minable.result = args.name
    centrifuge.module_specification.module_slots = 8
    centrifuge.crafting_speed = args.crafting_speed
    centrifuge.energy_usage = args.energy_usage
    centrifuge.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = "6.7MW" }    
    centrifuge.allowed_effects = {"productivity","pollution"}
    
    if centrifuge.idle_animation then
        centrifuge.idle_animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/centrifuge-C.png"
        centrifuge.idle_animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/hr-centrifuge-C.png"
        centrifuge.idle_animation.layers[3].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/centrifuge-B.png"
        centrifuge.idle_animation.layers[3].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/hr-centrifuge-B.png"
        centrifuge.idle_animation.layers[5].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/centrifuge-A.png"
        centrifuge.idle_animation.layers[5].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/hr-centrifuge-A.png"

        centrifuge.idle_animation.layers[1].animation_speed = 0.1
        centrifuge.idle_animation.layers[1].hr_version.animation_speed = 0.1
        centrifuge.idle_animation.layers[3].animation_speed = 0.1
        centrifuge.idle_animation.layers[3].hr_version.animation_speed = 0.1
        centrifuge.idle_animation.layers[5].animation_speed = 0.1
        centrifuge.idle_animation.layers[5].hr_version.animation_speed = 0.1
    end

    if centrifuge.animation then
        centrifuge.animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/centrifuge-C-light.png"
        centrifuge.animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/hr-centrifuge-C-light.png"
        centrifuge.animation.layers[2].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/centrifuge-B-light.png"
        centrifuge.animation.layers[2].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/hr-centrifuge-B-light.png"
        centrifuge.animation.layers[3].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/centrifuge-A-light.png"
        centrifuge.animation.layers[3].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-centrifuge/" .. args.name .. "/hr-centrifuge-A-light.png"
        
        centrifuge.animation.layers[1].animation_speed = 0.1
        centrifuge.animation.layers[1].hr_version.animation_speed = 0.1
        centrifuge.animation.layers[2].animation_speed = 0.1
        centrifuge.animation.layers[2].hr_version.animation_speed = 0.1
        centrifuge.animation.layers[3].animation_speed = 0.1
        centrifuge.animation.layers[3].hr_version.animation_speed = 0.1
    end

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
