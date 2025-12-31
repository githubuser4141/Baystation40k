/datum/techprint/stun_gun
	name = "AS-3 Stun Gun"
	desc = "A low-capacity, ranged stun gun."
	design_unlocks = list(/datum/research_design/stun_gun)
	required_materials = list("plasteel" = 5)
	tech_req_all = list(/datum/techprint/lasers)
	ticks_max = 30

/datum/techprint/stun_gun
	name = "AS-7 Stun Gun"
	desc = "A higher-capacity, ranged stun gun."
	design_unlocks = list(/datum/research_design/stun_gun_carbine)
	required_materials = list("plasteel" = 5, "uranium" = 5)
	tech_req_all = list(/datum/techprint/lasers, /datum/techprint/stun_gun)
	ticks_max = 30

/datum/techprint/laser_gun
	name = "WST-10 Laser Gun"
	desc = "A laser firearm, utilizing concentrated lasers to burn holes in targets."
	design_unlocks = list(/datum/research_design/laser_carbine)
	required_materials = list("plasteel" = 5)
	tech_req_all = list(/datum/techprint/lasers, /datum/techprint/stun_gun)
	ticks_max = 30
