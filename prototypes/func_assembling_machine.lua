function beaconedassemblerpipepictures(name)
  return
  {
    north =
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/assembling-machine-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/hr-assembling-machine-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5
      }
    },
    east =
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/assembling-machine-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/hr-assembling-machine-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-24.5, 1),
        scale = 0.5
      }
    },
    south =
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/assembling-machine-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/hr-assembling-machine-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5
      }
    },
    west =
    {
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/assembling-machine-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. name .. "/hr-assembling-machine-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5
      }
    }
  }
end

function create_assembling_machine(args)
    local assembling_machine = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-5"])
    assembling_machine.name = args.name
    assembling_machine.icon = "__built-in-beacons-fe-plus__/graphics/icons/" .. args.name .. ".png"
    assembling_machine.icon_size = 64
    assembling_machine.icon_mipmaps = nil
    assembling_machine.crafting_speed = args.crafting_speed
    assembling_machine.minable = {mining_time = 0.2, result = args.name}
    assembling_machine.energy_usage = args.energy_usage
    assembling_machine.energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = args.emissions_per_minute, drain = "6.7MW" }
    assembling_machine.module_specification.module_slots = args.module_slots or 8
    assembling_machine.allowed_effects = args.allowed_effects or {"productivity","pollution"}
    
    assembling_machine.fluid_boxes[1].secondary_draw_order = 2
    assembling_machine.fluid_boxes[1].pipe_picture = beaconedassemblerpipepictures(args.name)
    assembling_machine.fluid_boxes[2].secondary_draw_order = 2
    assembling_machine.fluid_boxes[2].pipe_picture = beaconedassemblerpipepictures(args.name)

    table.insert(assembling_machine.animation.layers, 
    {      
      filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. args.name .. "/assembling-machine.png",
      priority = "high",
      width = 108,
      height = 119,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(0, -0.5),
      hr_version =
      {
        filename = "__built-in-beacons-fe-plus__/graphics/entity/beaconed-fe-assembling-machine/" .. args.name .. "/hr-assembling-machine.png",
        priority = "high",
        width = 214,
        height = 237,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(0, -0.75),
        scale = 0.5
      }        
    })
    
    local result,ingredients

    if settings.startup["upgradeable-recipes"].value then
      ingredients = args.upgradeable_ingredients
      result = args.upgradeable_result
    else
      ingredients = args.ingredients  
      result = args.result
    end

    data:extend({
        {
            type = "item",
            name = args.name,
            icon = assembling_machine.icon,
            icon_size = assembling_machine.icon_size,
            subgroup = "fb-machines",
            order = "b-b-1",
            place_result = args.name,
            stack_size = 50
        },
        {
            type = "recipe",
            name = args.name,
            icon = assembling_machine.icon,
            icon_size = assembling_machine.icon_size,
            subgroup = "fb-machines",
            order = "b-b-1",
            enabled = false,
            ingredients = ingredients,
            results = result
        }
    })

    data:extend({assembling_machine})
end