--
-- electric-furnace                                 md1         md2         md3
-- module type                                      s4          s5          s6
-- mining_speed                                     38.9        58.1        82.1
-- energy_source.emissions_per_minute               121         135         150
-- energy_usage                                     14MW        15MW        16MW
--

require ("func_electric_mining_drill")

local beaconed_fe_electric_mining_drill_1 = { 
                                                name = "beaconed-fe-electric-mining-drill-1",  
                                                mining_speed = 38.9,
                                                energy_usage = "14MW",
                                                energy_drain = "7MW",
                                                emissions_per_minute = 121,
                                                ingredients =
                                                {
                                                    {"electric-mining-drill-mk3", 1},
                                                    {"beacon-mk3", 12},
                                                    {"speed-module-4", 24 }
                                                },
                                                tint = {0.2, 0.2 , 0.6, 0},
                                                item_order = "c-b-a"
                                            }

create_electric_mining_drill(beaconed_fe_electric_mining_drill_1)

local beaconed_fe_electric_mining_drill_2 = { 
                                                name = "beaconed-fe-electric-mining-drill-2",  
                                                mining_speed = 58.1,
                                                energy_usage = "15MW",
                                                energy_drain = "7MW",
                                                emissions_per_minute = 135,
                                                ingredients =
                                                {
                                                    {"electric-mining-drill-mk3", 1},
                                                    {"beacon-mk3", 12},
                                                    {"speed-module-5", 24 }
                                                },
                                                tint = {0.2, 0.2 , 0.7, 0},
                                                item_order = "c-b-b"
                                            }

create_electric_mining_drill(beaconed_fe_electric_mining_drill_2)

local beaconed_fe_electric_mining_drill_3 = { 
                                                name = "beaconed-fe-electric-mining-drill-3",  
                                                mining_speed = 82.1,
                                                energy_usage = "16MW",
                                                energy_drain = "7MW",
                                                emissions_per_minute = 150,
                                                ingredients =
                                                {
                                                    {"electric-mining-drill-mk3", 1},
                                                    {"beacon-mk3", 12},
                                                    {"speed-module-6", 24 }
                                                },
                                                tint = {0, 0 , 0.8, 0},
                                                item_order = "c-b-c"
                                            }

create_electric_mining_drill(beaconed_fe_electric_mining_drill_3)