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
                                    item_order = "c-c-a",
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-4", 18 }
                                    },
                                    result = 
                                    {
                                        { type = "item", name = "beaconed-fe-pumpjack-1", amount = 1}
                                    },
                                    upgradeable_ingredients = 
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-4", 18 }
                                    },
                                    upgradeable_result = 
                                    {
                                        { type = "item", name = "beaconed-fe-pumpjack-1", amount = 1}
                                    } 
                                }

create_pumpjack(beaconed_fe_pumpjack_1)

local beaconed_fe_pumpjack_2 = { 
                                    name = "beaconed-fe-pumpjack-2",  
                                    mining_speed = 69.2,
                                    energy_usage = "15.07MW",
                                    emissions_per_minute = 219,
                                    item_order = "c-c-b",
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-5", 18 }
                                    },
                                    result = 
                                    {
                                        { type = "item", name = "beaconed-fe-pumpjack-2", amount = 1}
                                    },
                                    upgradeable_ingredients = 
                                    {
                                        {"beaconed-fe-pumpjack-1", 1},
                                        {"speed-module-5", 18 }
                                    },
                                    upgradeable_result = 
                                    {
                                        { type = "item", name = "beaconed-fe-pumpjack-2", amount = 1},
                                        { type = "item", name = "speed-module-4", amount = 18}
                                    } 
                                }

create_pumpjack(beaconed_fe_pumpjack_2)

local beaconed_fe_pumpjack_3 = { 
                                    name = "beaconed-fe-pumpjack-3",  
                                    mining_speed = 97.2,
                                    energy_usage = "16.83MW",
                                    emissions_per_minute = 244,
                                    item_order = "c-c-c",
                                    ingredients =
                                    {
                                        {"pumpjack-mk2", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-6", 18 }
                                    },
                                    result = 
                                    {
                                        { type = "item", name = "beaconed-fe-pumpjack-3", amount = 1}
                                    },
                                    upgradeable_ingredients = 
                                    {                                        
                                        {"beaconed-fe-pumpjack-2", 1},
                                        {"speed-module-6", 18 }
                                    },
                                    upgradeable_result = 
                                    {
                                        { type = "item", name = "beaconed-fe-pumpjack-3", amount = 1},
                                        { type = "item", name = "speed-module-5", amount = 18}
                                    } 
                                }

create_pumpjack(beaconed_fe_pumpjack_3)