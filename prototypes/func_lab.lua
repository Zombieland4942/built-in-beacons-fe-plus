
function create_lab(args)

    local lab = table.deepcopy(data.raw["lab"]["lab-mk3"])
    lab.name = args.name
    lab.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    lab.icon_size = 64
    lab.icon_mipmaps = nil
    lab.minable.result = args.name
    lab.module_specification.module_slots = 8
    lab.researching_speed = args.researching_speed
    lab.energy_usage = args.energy_usage
    lab.energy_source = { type = "electric", usage_priority = "secondary-input", drain = "6.7MW" }    
    lab.allowed_effects = {"productivity","pollution"}
    
    lab.on_animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/" .. args.name .. "/lab.png"
    lab.on_animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/" .. args.name .. "/hr-lab.png"
    lab.off_animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/" .. args.name .. "/lab.png"
    lab.off_animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/" .. args.name .. "/hr-lab.png"
    
    data:extend({
        {
            type = "item",
            name = args.name,
            icon = lab.icon,
            icon_size = lab.icon_size,
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

    data:extend({lab})
end