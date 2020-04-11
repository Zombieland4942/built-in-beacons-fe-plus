--
-- pumpjack                                         pj1         pj2         pj3
-- module type                                      s4          s5          s6
-- crafting_speed                                   39.2        58.4        82.4
-- energy_source.emissions_per_minute               302         385         489
-- energy_usage                                     10MW        11MW        12MW
--

require ("func_pumpjack")

local beaconed_fe_pumpjack_1 = { 
                                    name = "beaconed-fe-pumpjack-1",  
                                    mining_speed = 39.2,
                                    energy_usage = "10MW",
                                    energy_drain = "7MW",
                                    emissions_per_minute = 302,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 12},
                                        {"speed-module-4", 24 }
                                    },
                                    tint = {0.2, 0.2 , 0.6, 0},
                                    item_order = "a-b-c",                -- Order for the item when opening the Item Menu
                                    tech_order = "a-b-a",                -- Order for the technology
                                    prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"}
                                }

create_pumpjack(beaconed_fe_pumpjack_1)

local beaconed_fe_pumpjack_2 = { 
                                    name = "beaconed-fe-pumpjack-2",  
                                    mining_speed = 58.4,
                                    energy_usage = "11MW",
                                    energy_drain = "7MW",
                                    emissions_per_minute = 385,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 12},
                                        {"speed-module-5", 24 }
                                    },
                                    tint = {0.2, 0.2 , 0.7, 0},
                                    item_order = "a-b-c",                -- Order for the item when opening the Item Menu
                                    tech_order = "a-b-a",                -- Order for the technology
                                    prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"}
                                }

create_pumpjack(beaconed_fe_pumpjack_2)

local beaconed_fe_pumpjack_3 = { 
                                    name = "beaconed-fe-pumpjack-3",  
                                    mining_speed = 82.4,
                                    energy_usage = "12MW",
                                    energy_drain = "7MW",
                                    emissions_per_minute = 489,
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 12},
                                        {"speed-module-6", 24 }
                                    },
                                    tint = {0, 0 , 0.8, 0},
                                    item_order = "a-b-c",                -- Order for the item when opening the Item Menu
                                    tech_order = "a-b-a",                -- Order for the technology
                                    prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"}
                                }

create_pumpjack(beaconed_fe_pumpjack_3)