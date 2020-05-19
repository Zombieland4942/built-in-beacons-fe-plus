--
-- electric-furnace                                 ef1         ef2         ef3
-- module type                                      s4          s5          s6
-- crafting_speed                                   78.4        116.8       164.8
-- energy_source.emissions_per_minute               12.1        13.7        16.3
-- energy_usage                                     13.3MW      15MW        16.8MW
--

require ("func_electric_furnace")

local beaconed_fe_electric_furnace_1 = { 
                                            name = "beaconed-fe-electric-furnace-1",  
                                            crafting_speed = 78.4,
                                            energy_usage = "13.3MW",
                                            emissions_per_minute = 12.1,
                                            item_order = "a-b-c",
                                            ingredients =
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 7},
                                                {"speed-module-4", 14 }
                                            },
                                            result = 
                                            {
                                                { type = "item", name = "beaconed-fe-electric-furnace-1", amount = 1}
                                            },
                                            upgradeable_ingredients = 
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 7},
                                                {"speed-module-4", 14 }
                                            },
                                            upgradeable_result = 
                                            {
                                                { type = "item", name = "beaconed-fe-electric-furnace-1", amount = 1}
                                            }                                       
                                        }

create_electric_furnace(beaconed_fe_electric_furnace_1)

local beaconed_fe_electric_furnace_2 = { 
                                            name = "beaconed-fe-electric-furnace-2",  
                                            crafting_speed = 116.8,
                                            energy_usage = "15MW",
                                            emissions_per_minute = 13.7,
                                            item_order = "a-b-d",
                                            ingredients =
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 7},
                                                {"speed-module-5", 14 }
                                            },
                                            result = 
                                            {
                                                { type = "item", name = "beaconed-fe-electric-furnace-2", amount = 1}
                                            },
                                            upgradeable_ingredients = 
                                            {
                                                {"beaconed-fe-electric-furnace-1", 1},
                                                {"speed-module-5", 14 }
                                            },
                                            upgradeable_result = 
                                            {
                                                { type = "item", name = "beaconed-fe-electric-furnace-2", amount = 1},
                                                { type = "item", name = "speed-module-4", amount = 14}
                                            } 
                                        }

create_electric_furnace(beaconed_fe_electric_furnace_2)

local beaconed_fe_electric_furnace_3 = { 
                                            name = "beaconed-fe-electric-furnace-3",  
                                            crafting_speed = 164.8,
                                            energy_usage = "16.83MW",
                                            emissions_per_minute = 15.3,
                                            item_order = "a-b-e",
                                            ingredients =
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 7},
                                                {"speed-module-6", 14 }
                                            },
                                            result = 
                                            {
                                                { type = "item", name = "beaconed-fe-electric-furnace-3", amount = 1}
                                            },
                                            upgradeable_ingredients = 
                                            {
                                                {"beaconed-fe-electric-furnace-2", 1},
                                                {"speed-module-6", 14 }
                                            },
                                            upgradeable_result = 
                                            {
                                                { type = "item", name = "beaconed-fe-electric-furnace-3", amount = 1},
                                                { type = "item", name = "speed-module-5", amount = 14}
                                            } 
                                        }

create_electric_furnace(beaconed_fe_electric_furnace_3)