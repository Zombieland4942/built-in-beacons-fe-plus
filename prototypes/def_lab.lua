--
-- electric-furnace                                 md1         md2         md3
-- module type                                      s4          s5          s6
-- researching_speed                                39.2        58.4        82.4
-- energy_usage                                     12MW        13MW        14MW
--
--137.2

require ("func_lab")

local beaconed_fe_lab_1 = { 
                                name = "beaconed-fe-lab-1",  
                                researching_speed = 39.2,
                                energy_usage = "10MW",
                                item_order = "e-c-a",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-4", 14 }
                                },
                                result = 
                                {
                                    { type = "item", name = "beaconed-fe-lab-1", amount = 1}
                                },
                                upgradeable_ingredients = 
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-4", 14 }
                                },
                                upgradeable_result = 
                                {
                                    { type = "item", name = "beaconed-fe-lab-1", amount = 1}
                                } 
                            }

create_lab(beaconed_fe_lab_1)

local beaconed_fe_lab_2 = { 
                                name = "beaconed-fe-lab-2",  
                                researching_speed = 58.4,
                                energy_usage = "10MW",
                                item_order = "e-c-b",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-5", 14 }
                                },
                                result = 
                                {
                                    { type = "item", name = "beaconed-fe-lab-2", amount = 1}
                                },
                                upgradeable_ingredients = 
                                {
                                    {"beaconed-fe-lab-1", 1},
                                    {"speed-module-5", 14 }
                                },
                                upgradeable_result = 
                                {
                                    { type = "item", name = "beaconed-fe-lab-2", amount = 1},
                                    { type = "item", name = "speed-module-4", amount = 14}
                                } 
                            }

create_lab(beaconed_fe_lab_2)

local beaconed_fe_lab_3 = { 
                                name = "beaconed-fe-lab-3",  
                                researching_speed = 82.4,
                                energy_usage = "10MW",
                                item_order = "e-c-c",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-6", 14 }
                                },
                                result = 
                                {
                                    { type = "item", name = "beaconed-fe-lab-3", amount = 1}
                                },
                                upgradeable_ingredients = 
                                {
                                    {"beaconed-fe-lab-2", 1},
                                    {"speed-module-6", 14 }
                                },
                                upgradeable_result = 
                                {
                                    { type = "item", name = "beaconed-fe-lab-3", amount = 1},
                                    { type = "item", name = "speed-module-5", amount = 14}
                                } 
                            }

create_lab(beaconed_fe_lab_3)