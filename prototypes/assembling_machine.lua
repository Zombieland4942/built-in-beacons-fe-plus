--
-- assembling-machine                               asm1        asm2        asm3
-- module type                                      s4          s5          s6
-- crafting_speed                                   58.8        87.6        123.6
-- energy_source.emissions_per_minute               18.88       24.11       30.6
-- energy_usage                                     17MW        18MW        19MW
--

require ("assembling_machine_funtionsv2")

local beaconed_fe_assembling_machine_1 = { 
                                            name = "beaconed-fe-assembling-machine-1",
                                            crafting_speed = 58.8,
                                            emissions_per_minute = 10.1,
                                            energy_usage = "11MW",
                                            energy_drain = "7MW",
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-4", 24 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0.05, 0.175 , 1, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_1)

local beaconed_fe_assembling_machine_2 = { 
                                            name = "beaconed-fe-assembling-machine-2",
                                            crafting_speed = 87.6,
                                            emissions_per_minute = 24.11,
                                            energy_usage = "12MW",
                                            energy_drain = "7MW",
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-5", 24 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-5", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0.05, 0.175 , 1, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_2)

local beaconed_fe_assembling_machine_3 = { 
                                            name = "beaconed-fe-assembling-machine-3",
                                            crafting_speed = 123.6,
                                            emissions_per_minute = 30.6,
                                            energy_usage = "13MW",
                                            energy_drain = "7MW",
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-6", 24 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-6", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0.05, 0.175 , 1, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_3)
