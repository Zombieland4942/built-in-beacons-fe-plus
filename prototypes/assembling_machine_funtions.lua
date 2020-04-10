
function create_assembling_machine(args)
    local assembling_machine = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
    assembling_machine.name = args.name
    assembling_machine.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    assembling_machine.icon_size = 32
    assembling_machine.icon_mipmaps = nil
    assembling_machine.max_health = 500
    assembling_machine.crafting_speed = args.crafting_speed
    assembling_machine.minable = {mining_time = 0.2, result = args.name}
    assembling_machine.energy_usage = args.energy_usage
    assembling_machine.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }
    assembling_machine.module_specification.module_slots = 8
    assembling_machine.allowed_effects = {"productivity","pollution"}
    assembling_machine.animation.layers[1].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. args.name .. ".png"
    assembling_machine.animation.layers[1].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/hr-" .. args.name .. ".png"
    for _, direction in pairs({"north", "east", "south", "west"}) do
        local short = string.upper(string.sub(direction, 1, 1))
        assembling_machine.fluid_boxes[1].pipe_picture[direction].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/".. args.name .. "-pipe-" .. short .. ".png"
        assembling_machine.fluid_boxes[1].pipe_picture[direction].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/hr-".. args.name .. "-pipe-" .. short .. ".png"
        assembling_machine.fluid_boxes[2].pipe_picture[direction].filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/".. args.name .. "-pipe-" .. short .. ".png"
        assembling_machine.fluid_boxes[2].pipe_picture[direction].hr_version.filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/hr-".. args.name .. "-pipe-" .. short .. ".png"
    end

    data:extend({
        {
            type = "item",
            name = args.name,
            icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png",
            icon_size = 32,
            subgroup = "fb-machines",
            order = "b-a",
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
            order = "a-b-a"
        }
    })

    data:extend({assembling_machine})
end