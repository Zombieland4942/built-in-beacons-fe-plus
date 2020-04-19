function create_chemical_plant(args)

    local chemplant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant-mk3"])
    chemplant.name = args.name
    chemplant.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    chemplant.icon_size = 64
    chemplant.icon_mipmaps = nil
    chemplant.minable.result = args.name    
    chemplant.module_specification.module_slots = 8
    chemplant.crafting_speed = args.crafting_speed
    chemplant.energy_usage = args.energy_usage
    chemplant.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = "6.7MW" }    
    chemplant.allowed_effects = {"productivity","pollution"}
    
    for _, direction in pairs({"north", "east", "south", "west"}) do
        chemplant.animation[direction].layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-chemical-plant/" .. chemplant.name .. "/chemical-plant.png"
        chemplant.animation[direction].layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-chemical-plant/" .. chemplant.name .. "/hr-chemical-plant.png"
    end

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
