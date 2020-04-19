--
-- centrifuge                                       c1          c2          c3
-- module type                                      s4          s5          s6
-- crafting_speed                                   58.8        87.6        123.6
-- energy_source.emissions_per_minute               47.55       53.8        60.1
-- energy_usage                                     13.3MW      15MW        16.8MW
--

require ("func_centrifuge")

local beaconed_fe_centrifuge_1 = { 
                                    name = "beaconed-fe-centrifuge-1",  
                                    crafting_speed = 58.8,
                                    energy_usage = "13.3MW",                                    
                                    emissions_per_minute = 47.55,
                                    ingredients =
                                    {
                                        {"centrifuge-mk3", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-4", 14 }
                                    },
                                    item_order = "e-b-a"
                                }

create_centrifuge(beaconed_fe_centrifuge_1)

local beaconed_fe_centrifuge_2 = { 
                                    name = "beaconed-fe-centrifuge-2",  
                                    crafting_speed = 87.6,
                                    energy_usage = "15MW",                                    
                                    emissions_per_minute = 53.8,
                                    ingredients =
                                    {
                                        {"centrifuge-mk3", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-5", 14 }
                                    },
                                    item_order = "e-b-b"
                                }

create_centrifuge(beaconed_fe_centrifuge_2)

local beaconed_fe_centrifuge_3 = { 
                                    name = "beaconed-fe-centrifuge-3",  
                                    crafting_speed = 123.6,
                                    energy_usage = "16.8MW",                                    
                                    emissions_per_minute = 60.1,
                                    ingredients =
                                    {
                                        {"centrifuge-mk3", 1},
                                        {"beacon-mk3", 7},
                                        {"speed-module-6", 14 }
                                    },
                                    item_order = "e-b-c"
                                }

create_centrifuge(beaconed_fe_centrifuge_3)
