/datum/techprint/gygax_boards
	name = "Gygax circuitry"
	desc = "A lightly armed mech used for civil defense, law enforcement and pest control. Equipped with a laser and taser gun."
	design_unlocks = list(/datum/research_design/gygax_circuits)
	required_materials = list("plasteel" = 10)
	tech_req_all = list(/datum/techprint/lasers, /datum/techprint/miniaturisation, /datum/techprint/sensors)
	ticks_max = 45

/datum/techprint/durand
	name = "Durand circuitry"
	desc = "A mech used mostly by law enforcement for riot control and minor counter-terrorist operations."
	design_unlocks = list(/datum/research_design/durand_circuits)
	required_materials = list("plasteel" = 10)
	tech_req_all = list(/datum/techprint/miniaturisation, /datum/techprint/sensors)
	ticks_max = 45
