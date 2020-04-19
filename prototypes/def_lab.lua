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
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-4", 14 }
                                },
                                item_order = "e-c-a"
                            }

create_lab(beaconed_fe_lab_1)

local beaconed_fe_lab_2 = { 
                                name = "beaconed-fe-lab-2",  
                                researching_speed = 58.4,
                                energy_usage = "10MW",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-5", 14 }
                                },
                                item_order = "e-c-b"
                            }

create_lab(beaconed_fe_lab_2)

local beaconed_fe_lab_3 = { 
                                name = "beaconed-fe-lab-3",  
                                researching_speed = 82.4,
                                energy_usage = "10MW",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 7},
                                    {"speed-module-6", 14 }
                                },
                                item_order = "e-c-c"
                            }

create_lab(beaconed_fe_lab_3)