--
-- assembling-machine                               asm1        asm2        asm3        asm4(All Speed)
-- module type                                      s4          s5          s6          s6
-- crafting_speed                                   58.8        87.6        123.6       145.8
-- energy_source.emissions_per_minute               10          11          12          15
-- energy_usage                                     17MW        18MW        19MW        20MW
--

require ("assembling_machine_funtions")

local beaconed_fe_assembling_machine_1 = { 
                                            name = "beaconed-fe-assembling-machine-1",
                                            crafting_speed = 58.8,
                                            emissions_per_minute = 10,
                                            energy_usage = "11MW",
                                            energy_drain = "7MW",
                                            module_slots = 8,
                                            allowed_effects = {"productivity","pollution"},
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-4", 24 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-4", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0.2, 0.2 , 0.6, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_1)

local beaconed_fe_assembling_machine_2 = { 
                                            name = "beaconed-fe-assembling-machine-2",
                                            crafting_speed = 87.6,
                                            emissions_per_minute = 11,
                                            energy_usage = "12MW",
                                            energy_drain = "7MW",
                                            module_slots = 8,
                                            allowed_effects = {"productivity","pollution"},
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-5", 24 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-5", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0.2, 0.2 , 0.7, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_2)

local beaconed_fe_assembling_machine_3 = { 
                                            name = "beaconed-fe-assembling-machine-3",
                                            crafting_speed = 123.6,
                                            emissions_per_minute = 12,
                                            energy_usage = "13MW",
                                            energy_drain = "7MW",
                                            module_slots = 8,
                                            allowed_effects = {"productivity","pollution"},
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-6", 24 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-6", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0, 0 , 0.8, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_3)

local beaconed_fe_assembling_machine_4 = { 
                                            name = "beaconed-fe-assembling-machine-4",
                                            crafting_speed = 145.8,
                                            emissions_per_minute = 15,
                                            energy_usage = "14MW",
                                            energy_drain = "7MW",
                                            module_slots = 0,
                                            allowed_effects = {},
                                            ingredients =
                                            {
                                                {"assembling-machine-5", 1},
                                                {"beacon-mk3", 12},
                                                {"speed-module-6", 28 }
                                            },
                                            prerequisites = {"effect-transmission-3", "speed-module-6", "mechanical-engineer-2"},
                                            technology_icon_tint = {r = 0.60, g = 0.60, b = 1},
                                            tint = {0, 0 , 1, 0}
                                         }

create_assembling_machine(beaconed_fe_assembling_machine_4)