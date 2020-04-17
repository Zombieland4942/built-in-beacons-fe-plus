--
-- pumpjack                                         pj1         pj2         pj3
-- module type                                      s4          s5          s6
-- crafting_speed                                   39.2        58.4        82.4
-- energy_source.emissions_per_minute               161         180         200
-- energy_usage                                     10MW        11MW        12MW
--

require ("func_pumpjack")

local beaconed_fe_pumpjack_1 = { 
                                    name = "beaconed-fe-pumpjack-1",  
                                    mining_speed = 39.2,
                                    energy_usage = "10MW",
                                    energy_drain = "7MW",
                                    emissions_per_minute = 161,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-4", 14 }
                                    },
                                    item_order = "c-c-a"
                                }

create_pumpjack(beaconed_fe_pumpjack_1)

local beaconed_fe_pumpjack_2 = { 
                                    name = "beaconed-fe-pumpjack-2",  
                                    mining_speed = 58.4,
                                    energy_usage = "11MW",
                                    energy_drain = "7MW",
                                    emissions_per_minute = 180,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-5", 14 }
                                    },
                                    item_order = "c-c-b"
                                }

create_pumpjack(beaconed_fe_pumpjack_2)

local beaconed_fe_pumpjack_3 = { 
                                    name = "beaconed-fe-pumpjack-3",  
                                    mining_speed = 82.4,
                                    energy_usage = "12MW",
                                    energy_drain = "7MW",
                                    emissions_per_minute = 200,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-6", 14 }
                                    },
                                    item_order = "c-c-c"
                                }

create_pumpjack(beaconed_fe_pumpjack_3)