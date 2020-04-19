--
-- electric-drill                                   ed1         ed2         ed3
-- module type                                      s4          s5          s6
-- mining_speed                                     48.4        71.6        100.6
-- energy_source.emissions_per_minute               145.2       162         180
-- energy_usage                                     9.46MW      10.78MW     12.1MW
--

require ("func_electric_mining_drill")

local beaconed_fe_electric_mining_drill_1 = { 
                                                name = "beaconed-fe-electric-mining-drill-1",  
                                                mining_speed = 48.4,
                                                energy_usage = "9.46MW",
                                                emissions_per_minute = 151.2,
                                                ingredients =
                                                {
                                                    {"electric-mining-drill-mk3", 1},
                                                    {"beacon-mk3", 7},
                                                    {"speed-module-4", 19 }
                                                },
                                                item_order = "c-b-a"
                                            }

create_electric_mining_drill(beaconed_fe_electric_mining_drill_1)

local beaconed_fe_electric_mining_drill_2 = { 
                                                name = "beaconed-fe-electric-mining-drill-2",  
                                                mining_speed = 71.6,
                                                energy_usage = "10.78MW",
                                                emissions_per_minute = 171.6,
                                                ingredients =
                                                {
                                                    {"electric-mining-drill-mk3", 1},
                                                    {"beacon-mk3", 7},
                                                    {"speed-module-5", 19 }
                                                },
                                                item_order = "c-b-b"
                                            }

create_electric_mining_drill(beaconed_fe_electric_mining_drill_2)

local beaconed_fe_electric_mining_drill_3 = { 
                                                name = "beaconed-fe-electric-mining-drill-3",  
                                                mining_speed = 100.6,
                                                energy_usage = "12.1MW",
                                                emissions_per_minute = 192,
                                                ingredients =
                                                {
                                                    {"electric-mining-drill-mk3", 1},
                                                    {"beacon-mk3", 7},
                                                    {"speed-module-6", 19 }
                                                },
                                                item_order = "c-b-c"
                                            }

create_electric_mining_drill(beaconed_fe_electric_mining_drill_3)