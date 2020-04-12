--
-- refinery                                         r1          r2          r3
-- module type                                      s4          s5          s6
-- crafting_speed                                   104         155.2       219.2
-- energy_source.emissions_per_minute               106         119         132
-- energy_usage                                     22MW        23MW        24MW
--

require ("func_oil_refinery")

local beaconed_fe_oil_refinery_1 = { 
                                        name = "beaconed-fe-oil-refinery-1",  
                                        crafting_speed = 104,
                                        energy_usage = "22MW",
                                        energy_drain = "10MW",
                                        emissions_per_minute = 106,
                                        ingredients =
                                        {
                                            {"oil-refinery-mk3", 1},
                                            {"beacon-mk3", 10},
                                            {"speed-module-4", 20 }
                                        },
                                        tint = {0.2, 0.2 , 0.6, 0},
                                        item_order = "c-c-a"
                                    }

create_refinery(beaconed_fe_oil_refinery_1)

local beaconed_fe_oil_refinery_2 = { 
                                        name = "beaconed-fe-oil-refinery-2",  
                                        crafting_speed = 155.2,
                                        energy_usage = "23MW",
                                        energy_drain = "10MW",
                                        emissions_per_minute = 119,
                                        ingredients =
                                        {
                                            {"oil-refinery-mk3", 1},
                                            {"beacon-mk3", 10},
                                            {"speed-module-5", 20 }
                                        },
                                        tint = {0.2, 0.2 , 0.6, 0},
                                        item_order = "c-c-b"
                                    }

create_refinery(beaconed_fe_oil_refinery_2)

local beaconed_fe_oil_refinery_3 = { 
                                        name = "beaconed-fe-oil-refinery-3",  
                                        crafting_speed = 219.2,
                                        energy_usage = "24MW",
                                        energy_drain = "10MW",
                                        emissions_per_minute = 132,
                                        ingredients =
                                        {
                                            {"oil-refinery-mk3", 1},
                                            {"beacon-mk3", 10},
                                            {"speed-module-6", 20 }
                                        },
                                        tint = {0.2, 0.2 , 0.6, 0},
                                        item_order = "c-c-c"
                                    }

create_refinery(beaconed_fe_oil_refinery_3)
