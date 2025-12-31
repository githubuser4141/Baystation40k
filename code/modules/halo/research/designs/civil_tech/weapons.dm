/datum/research_design/stun_gun
	name = "electronic debilitation pistol"
	product_type = /obj/item/weapon/gun/energy/taser
	build_type = PROTOLATHE
	required_materials = list("silver" = 2, "steel" = 5)
	required_reagents = list(/datum/reagent/silicon = 5, /datum/reagent/radium = 10)
	complexity = 5

/datum/research_design/stun_gun_carbine
	name = "electronic debilitation carbine"
	product_type = /obj/item/weapon/gun/energy/taser/carbine
	build_type = PROTOLATHE
	required_materials = list("silver" = 4, "steel" = 10)
	required_reagents = list(/datum/reagent/silicon = 10, /datum/reagent/radium = 15)
	complexity = 10

/datum/research_design/laser_carbine
	name = "photonic ray carbine"
	product_type = /obj/item/weapon/gun/energy/laser
	build_type = PROTOLATHE
	required_materials = list("silver" = 5, "uranium" = 5, "steel" = 10)
	required_reagents = list(/datum/reagent/silicon = 10, /datum/reagent/radium = 20)
	complexity = 10

// HALOSTATION Edit: Weapon overrides begin

/obj/item/projectile/beam/midlaser
	damage = 35
	shield_damage = 15
	armor_penetration = 0

/obj/item/gun/energy/taser
	name = "electrolaser"
	desc = "The AS-3 is a small, low capacity gun used for non-lethal takedowns, it can switch between high and low intensity stun shots. Popular for law enforcement, home defense and private security. Produced by Acheron Security."

/obj/item/gun/energy/taser/carbine
	name = "electrolaser carbine"
	desc = "The AS-7 is a larger variant of the AS-3 featuring a lengthened stock and a larger internal cell. Popular amongst law enforcement or private security. Produced by Acheron Security."

/obj/item/gun/energy/laser
	name = "laser carbine"
	desc = "A WST-10 photon-based carbine, firing focused laser rays at a target, destroying tissue and burning through thin metal with relative ease. Produced by Weapon System Technology."

// HALOSTATION Edit: Weapon overrides end
