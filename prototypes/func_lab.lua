
function create_lab(args)

    local lab = table.deepcopy(data.raw["lab"]["lab-mk3"])
    lab.name = args.name
    --lab.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    --lab.icon_size = 32
    lab.icon_mipmaps = nil
    lab.minable.result = args.name
    lab.max_health = 450
    lab.module_specification.module_slots = 8
    lab.researching_speed = args.researching_speed
    lab.energy_usage = args.energy_usage
    lab.energy_source = { type = "electric", usage_priority = "secondary-input", drain = args.energy_drain }    
    lab.allowed_effects = {"productivity","pollution"}
    
    lab.on_animation.layers[1] = 
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/lab-space.png",
      width = 98,
      height = 87,
      frame_count = 33,
      line_length = 11,
      animation_speed = 0.7,
      shift = util.by_pixel(0, 1.5),
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/hr-lab-space.png",
        width = 194,
        height = 174,
        frame_count = 33,
        line_length = 11,
        animation_speed = 0.7,
        shift = util.by_pixel(0, 1.5),
        scale = 0.5
      }
    }

    table.insert(lab.on_animation.layers,
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/beaconed-lab-overlay.png",
      width = 288,
      height = 288,
      frame_count = 1,
      line_length = 1,
      repeat_count = 33,
      animation_speed = 0.7,
      shift = util.by_pixel(0, 8),
      tint = args.tint,
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-lab/hr-beaconed-lab-overlay.png",
        width = 576,
        height = 576,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 0.7,
        shift = util.by_pixel(0, 8),
        tint = args.tint,
        scale = 0.5
      }
    })

    data:extend({
        {
            type = "item",
            name = args.name,
            icon = "__base__/graphics/icons/lab.png",
            icon_size = 64,
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