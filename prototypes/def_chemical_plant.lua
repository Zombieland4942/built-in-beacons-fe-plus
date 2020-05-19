--
-- chem plant                                       cp1         cp2         cp3
-- module type                                      s4          s5          s6
-- crafting_speed                                   78.4        116.8       164.8
-- energy_source.emissions_per_minute               48.4        54.8        61.2
-- energy_usage                                     13.3MW      15MW        16.8MW
--

require ("func_chemical_plant")

local beaconed_fe_chemical_plant_1 = { 
                                        name = "beaconed-fe-chemical-plant-1",  
                                        crafting_speed = 78.4,
                                        energy_usage = "8.91MW",
                                        emissions_per_minute = 48.4,
                                        ingredients =
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 7},
                                            {"speed-module-4", 14 }
                                        },
                                        item_order = "d-b-a",                                        
                                        result = 
                                        {
                                            { type = "item", name = "beaconed-fe-chemical-plant-1", amount = 1}
                                        },
                                        upgradeable_ingredients = 
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 7},
                                            {"speed-module-4", 14 }
                                        },
                                        upgradeable_result = 
                                        {
                                            { type = "item", name = "beaconed-fe-chemical-plant-1", amount = 1}
                                        } 
                                     }

create_chemical_plant(beaconed_fe_chemical_plant_1)

local beaconed_fe_chemical_plant_2 = { 
                                        name = "beaconed-fe-chemical-plant-2",  
                                        crafting_speed = 116.8,
                                        energy_usage = "10.12MW",
                                        emissions_per_minute = 54.8,
                                        ingredients =
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 7},
                                            {"speed-module-5", 14 }
                                        },
                                        item_order = "d-b-b",                                        
                                        result = 
                                        {
                                            { type = "item", name = "beaconed-fe-chemical-plant-2", amount = 1}
                                        },
                                        upgradeable_ingredients = 
                                        {
                                            {"beaconed-fe-chemical-plant-1", 1},
                                            {"speed-module-5", 14 }
                                        },
                                        upgradeable_result = 
                                        {
                                            { type = "item", name = "beaconed-fe-chemical-plant-2", amount = 1},
                                            { type = "item", name = "speed-module-4", amount = 14}
                                        } 
                                     }

create_chemical_plant(beaconed_fe_chemical_plant_2)

local beaconed_fe_chemical_plant_3 = { 
                                        name = "beaconed-fe-chemical-plant-3",  
                                        crafting_speed = 164.8,
                                        energy_usage = "11.33MW",
                                        emissions_per_minute = 61.2,
                                        ingredients =
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 7},
                                            {"speed-module-6", 14 }
                                        },
                                        item_order = "d-b-c",                                        
                                        result = 
                                        {
                                            { type = "item", name = "beaconed-fe-chemical-plant-3", amount = 1}
                                        },
                                        upgradeable_ingredients = 
                                        {
                                            {"beaconed-fe-chemical-plant-2", 1},
                                            {"speed-module-6", 14 }
                                        },
                                        upgradeable_result = 
                                        {
                                            { type = "item", name = "beaconed-fe-chemical-plant-3", amount = 1},
                                            { type = "item", name = "speed-module-5", amount = 14}
                                        } 
                                     }

create_chemical_plant(beaconed_fe_chemical_plant_3)
