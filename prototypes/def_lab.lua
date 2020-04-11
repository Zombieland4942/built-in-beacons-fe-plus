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
                                energy_drain = "7MW",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 12},
                                    {"speed-module-4", 24 }
                                },
                                tint = {0.2, 0.2, 0.6, 0},
                                item_order = "e-c-a",                -- Order for the item when opening the Item Menu
                                tech_order = "a-b-a",                -- Order for the technology
                                prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"}
                            }

create_lab(beaconed_fe_lab_1)

local beaconed_fe_lab_2 = { 
                                name = "beaconed-fe-lab-2",  
                                researching_speed = 58.4,
                                energy_usage = "10MW",
                                energy_drain = "7MW",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 12},
                                    {"speed-module-5", 24 }
                                },
                                tint = {0.2, 0.2, 0.6, 0},
                                item_order = "e-c-b",                -- Order for the item when opening the Item Menu
                                tech_order = "a-b-a",                -- Order for the technology
                                prerequisites = {"effect-transmission-3", "speed-module-5", "mechanical-engineer-2"}
                            }

create_lab(beaconed_fe_lab_2)

local beaconed_fe_lab_3 = { 
                                name = "beaconed-fe-lab-3",  
                                researching_speed = 82.4,
                                energy_usage = "10MW",
                                energy_drain = "7MW",
                                ingredients =
                                {
                                    {"lab-mk3", 1},
                                    {"beacon-mk3", 12},
                                    {"speed-module-6", 24 }
                                },
                                tint = {0.2, 0.2, 0.6, 0},
                                item_order = "e-c-c",                -- Order for the item when opening the Item Menu
                                tech_order = "a-b-a",                -- Order for the technology
                                prerequisites = {"effect-transmission-3", "speed-module-6", "mechanical-engineer-2"}
                            }

create_lab(beaconed_fe_lab_3)