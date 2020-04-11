--
-- electric-furnace                                 ef1         ef2         ef3
-- module type                                      s4          s5          s6
-- crafting_speed                                   78.4        116.8       164.8
-- energy_source.emissions_per_minute               37.75       48.22       61.2
-- energy_usage                                     12MW        13MW        14MW
--

require ("func_electric_furnace")

local beaconed_fe_electric_furnace_1 = { 
                                            name = "beaconed-fe-electric-furnace-1",  
                                            crafting_speed = 78.4,
                                            energy_usage = "12MW",
                                            energy_drain = "7MW",
                                            emissions_per_minute = 37.75,
                                            ingredients =
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-4", 24 }
                                            },
                                            tint = {0.2, 0.2 , 0.6, 0},
                                            item_order = "a-b-c",                -- Order for the item when opening the Item Menu
                                            tech_order = "a-b-a",                -- Order for the technology
                                            prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"}
                                        }

create_electric_furnace(beaconed_fe_electric_furnace_1)

local beaconed_fe_electric_furnace_2 = { 
                                            name = "beaconed-fe-electric-furnace-2",  
                                            crafting_speed = 116.8,
                                            energy_usage = "13MW",
                                            energy_drain = "7MW",
                                            emissions_per_minute = 48.22,
                                            ingredients =
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-5", 24 }
                                            },
                                            tint = {0.2, 0.2 , 0.7, 0},
                                            item_order = "a-b-d",                -- Order for the item when opening the Item Menu
                                            tech_order = "a-b-a",                -- Order for the technology
                                            prerequisites = {"effect-transmission-3", "speed-module-5", "mechanical-engineer-2"}
                                        }

create_electric_furnace(beaconed_fe_electric_furnace_2)

local beaconed_fe_electric_furnace_3 = { 
                                            name = "beaconed-fe-electric-furnace-3",  
                                            crafting_speed = 164.8,
                                            energy_usage = "14MW",
                                            energy_drain = "7MW",
                                            emissions_per_minute = 61.2,
                                            ingredients =
                                            {
                                                {"electric-furnace-mk3", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-6", 24 }
                                            },
                                            tint = {0, 0 , 0.8, 0},
                                            item_order = "a-b-e",                -- Order for the item when opening the Item Menu
                                            tech_order = "a-b-a",                -- Order for the technology
                                            prerequisites = {"effect-transmission-3", "speed-module-6", "mechanical-engineer-2"}
                                        }

create_electric_furnace(beaconed_fe_electric_furnace_3)