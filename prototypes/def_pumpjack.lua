--
-- pumpjack                                         pj1         pj2         pj3
-- module type                                      s4          s5          s6
-- crafting_speed                                   46.8        69.2        97.2
-- energy_source.emissions_per_minute               193         219         244
-- energy_usage                                     13.31MW     15.07MW     16.83MW
--

require ("func_pumpjack")

local beaconed_fe_pumpjack_1 = { 
                                    name = "beaconed-fe-pumpjack-1",  
                                    mining_speed = 46.8,
                                    energy_usage = "13.31MW",
                                    emissions_per_minute = 193,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-4", 18 }
                                    },
                                    item_order = "c-c-a"
                                }

create_pumpjack(beaconed_fe_pumpjack_1)

local beaconed_fe_pumpjack_2 = { 
                                    name = "beaconed-fe-pumpjack-2",  
                                    mining_speed = 69.2,
                                    energy_usage = "15.07MW",
                                    emissions_per_minute = 219,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-5", 18 }
                                    },
                                    item_order = "c-c-b"
                                }

create_pumpjack(beaconed_fe_pumpjack_2)

local beaconed_fe_pumpjack_3 = { 
                                    name = "beaconed-fe-pumpjack-3",  
                                    mining_speed = 97.2,
                                    energy_usage = "16.83MW",
                                    emissions_per_minute = 244,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-6", 18 }
                                    },
                                    item_order = "c-c-c"
                                }

create_pumpjack(beaconed_fe_pumpjack_3)