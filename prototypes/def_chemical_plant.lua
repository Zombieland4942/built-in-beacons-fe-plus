--
-- chem plant                                       cp1         cp2         cp3
-- module type                                      s4          s5          s6
-- crafting_speed                                   78.4        116.8       164.8
-- energy_source.emissions_per_minute               40.4        45.2        50
-- energy_usage                                     12MW        13MW        14MW
--

require ("func_chemical_plant")

local beaconed_fe_chemical_plant_1 = { 
                                        name = "beaconed-fe-chemical-plant-1",  
                                        crafting_speed = 78.4,
                                        energy_usage = "12MW",
                                        energy_drain = "7MW",
                                        emissions_per_minute = 40.4,
                                        ingredients =
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 12},
                                            {"speed-module-4", 24 }
                                        },
                                        tint = {0.2, 0.2 , 0.6, 0},
                                        item_order = "d-b-a"
                                     }

create_chemical_plant(beaconed_fe_chemical_plant_1)

local beaconed_fe_chemical_plant_2 = { 
                                        name = "beaconed-fe-chemical-plant-2",  
                                        crafting_speed = 116.8,
                                        energy_usage = "13MW",
                                        energy_drain = "7MW",
                                        emissions_per_minute = 45.2,
                                        ingredients =
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 12},
                                            {"speed-module-5", 24 }
                                        },
                                        tint = {0.2, 0.2 , 0.6, 0},
                                        item_order = "d-b-b"
                                     }

create_chemical_plant(beaconed_fe_chemical_plant_2)

local beaconed_fe_chemical_plant_3 = { 
                                        name = "beaconed-fe-chemical-plant-3",  
                                        crafting_speed = 164.8,
                                        energy_usage = "14MW",
                                        energy_drain = "7MW",
                                        emissions_per_minute = 50,
                                        ingredients =
                                        {
                                            {"chemical-plant-mk3", 1},
                                            {"beacon-mk3", 12},
                                            {"speed-module-6", 24 }
                                        },
                                        tint = {0.2, 0.2 , 0.6, 0},
                                        item_order = "d-b-c"
                                     }

create_chemical_plant(beaconed_fe_chemical_plant_3)
