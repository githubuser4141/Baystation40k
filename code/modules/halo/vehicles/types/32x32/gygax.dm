
//BASE THRONE//

/obj/vehicles/mech/gygax
	name = "Gygax"
	desc = "A Gygax, a civilian-grade exosuit used by security firms and occasionally law enforcement. Equipped with a 12 gauge shotgun and a stun rifle, the titanium frame and light aluminium plating makes it light and relatively nimble."
	icon = 'code/modules/halo/vehicles/types/32x32/gygax.dmi' // nope, needs to be a special vehicle sprite
	icon_state = "gygax"

	armor_protection = 20

	occupants = list(0,0)

	comp_prof = /datum/component_profile/gygax

	exposed_positions = list("driver" = 0)

	ammo_containers = newlist(/obj/item/ammo_magazine/energy/laser, /obj/item/ammo_magazine/energy/taser)

	sprite_offsets = list("1" = list(1,6),"2" = list(1,6),"4" = list(7,6),"8" = list(1,6))

	can_smoke = 0
	smoke_ammo = 0
	smoke_ammo_max = 0
	smoke_step_dist = 0

	acceleration = 1.5
	min_speed = 4
	max_speed = 3
	drag = 1

	light_color = "#C1CEFF"

	passive_tohit_boost = VEHICLE_ACCBOOST_SMALL

/obj/item/vehicle_component/health_manager/gygax
	integrity = 300
	resistances = list("melee" = 50, "bullet" = 35, "laser" = 35, "energy" = 25, "emp" = 0, "bomb" = 0)

/datum/component_profile/gygax
	pos_to_check = "driver"
	gunner_weapons = list(/obj/item/weapon/gun/vehicle_turret/switchable/mech_guns/laser_taser)
	vital_components = newlist(/obj/item/vehicle_component/health_manager/gygax)

/obj/item/weapon/gun/vehicle_turret/switchable/mech_guns/laser_taser
	name = "Mech Turret"
	desc = "A mech-mounted combination of a laser and a taser rifle."
	guns_switchto = newlist(/datum/vehicle_gun/mech_laser,/datum/vehicle_gun/mech_taser)
	magazine_type = /obj/item/ammo_magazine/mech_shotgun

/obj/item/weapon/hrunting_melee/gygax
	name = "\the Gygax fist"
	desc = "punch"
