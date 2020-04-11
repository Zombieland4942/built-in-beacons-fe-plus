
function create_assembling_machine(args)
    local assembling_machine = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-5"])
    assembling_machine.name = args.name
    assembling_machine.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    assembling_machine.icon_size = 32
    assembling_machine.icon_mipmaps = nil
    assembling_machine.max_health = 500
    assembling_machine.crafting_speed = args.crafting_speed
    assembling_machine.minable = {mining_time = 0.2, result = args.name}
    assembling_machine.energy_usage = args.energy_usage
    assembling_machine.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = args.energy_drain }
    assembling_machine.module_specification.module_slots = args.module_slots
    assembling_machine.allowed_effects = args.allowed_effects
    
    assembling_machine.fluid_boxes[1].secondary_draw_order = 2
    assembling_machine.fluid_boxes[2].secondary_draw_order = 2

    table.insert(assembling_machine.animation.layers, 
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/beaconed-assembling-machine-5-overlay.png",
      width = 107,
      height = 109,
      frame_count = 1,
      repeat_count = 32,      
      shift = util.by_pixel(0, 4),
      animation_speed = 10,
      hr_version = {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/hr-beaconed-assembling-machine-5-overlay.png",
        priority = "high",
        width = 214,
        height = 218,
        frame_count = 1,
        repeat_count = 32,
        shift = util.by_pixel(0, 4),
        animation_speed = 10,
        scale = 0.5
      }
    })
    table.insert(assembling_machine.animation.layers, 
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/assembling-machine-5-mask.png",
      width = 78,
      height = 96,
      frame_count = 32,
      line_length = 8,      
      shift = util.by_pixel(-1, -11),
      tint = args.tint,
      blend_mode = "additive",
      animation_speed = 10,
      hr_version = {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/hr-assembling-machine-5-mask.png",
        priority = "high",
        width = 156,
        height = 192,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(-0.5, -11),
        tint = args.tint,
        blend_mode = "additive",
        animation_speed = 10,
        scale = 0.5
      }
    })
    
    data:extend({
        {
            type = "item",
            name = args.name,
            icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png",
            icon_size = 32,
            subgroup = "fb-machines",
            order = "b-b-1",
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

    data:extend({assembling_machine})
end