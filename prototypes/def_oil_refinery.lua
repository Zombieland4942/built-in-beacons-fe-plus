--
-- refinery                                         r1          r2          r3
-- module type                                      s4          s5          s6
-- crafting_speed                                   104         155.2       219.2
-- energy_source.emissions_per_minute               148         167.2       186.4
-- energy_usage                                     13.31MW     15.07MW     16.83MW
--

require ("func_oil_refinery")

local beaconed_fe_oil_refinery_1 = { 
                                        name = "beaconed-fe-oil-refinery-1",  
                                        crafting_speed = 104,
                                        energy_usage = "13.31MW",
                                        emissions_per_minute = 148,
                                        ingredients =
                                        {
                                            {"oil-refinery-mk3", 1},
                                            {"beacon-mk3", 10},
                                            {"speed-module-4", 20 }
                                        },
                                        item_order = "c-c-a"
                                    }

create_refinery(beaconed_fe_oil_refinery_1)

local beaconed_fe_oil_refinery_2 = { 
                                        name = "beaconed-fe-oil-refinery-2",  
                                        crafting_speed = 155.2,
                                        energy_usage = "15.07MW",
                                        emissions_per_minute = 167.2,
                                        ingredients =
                                        {
                                            {"oil-refinery-mk3", 1},
                                            {"beacon-mk3", 10},
                                            {"speed-module-5", 20 }
                                        },
                                        item_order = "c-c-b"
                                    }

create_refinery(beaconed_fe_oil_refinery_2)

local beaconed_fe_oil_refinery_3 = { 
                                        name = "beaconed-fe-oil-refinery-3",  
                                        crafting_speed = 219.2,
                                        energy_usage = "16.83MW",
                                        emissions_per_minute = 186.4,
                                        ingredients =
                                        {
                                            {"oil-refinery-mk3", 1},
                                            {"beacon-mk3", 10},
                                            {"speed-module-6", 20 }
                                        },
                                        item_order = "c-c-c"
                                    }

create_refinery(beaconed_fe_oil_refinery_3)
