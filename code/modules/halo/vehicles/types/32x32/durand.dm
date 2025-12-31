
//BASE THRONE//

/obj/vehicles/mech/durand
	name = "Durand"
	desc = "A Durand, a sometimes seen in the public, law enforcement and government sectors of Geminus. Equipped with a shotgun, laser rifle, stun rifle and tear gas grenades. The steel-plated exterior makes it somewhat bulky."
	icon = 'code/modules/halo/vehicles/types/32x32/durand.dmi' // nope, needs to be a special vehicle sprite
	icon_state = "durand"

	armor_protection = 45

	occupants = list(0,0)

	comp_prof = /datum/component_profile/durand

	exposed_positions = list("driver" = 0)

	ammo_containers = newlist(/obj/item/ammo_magazine/mech_shotgun, /obj/item/ammo_magazine/energy/taser)

	sprite_offsets = list("1" = list(1,6),"2" = list(1,6),"4" = list(7,6),"8" = list(1,6))

	can_smoke = 0
	smoke_ammo = 0
	smoke_ammo_max = 0
	smoke_step_dist = 0

	acceleration = 1
	min_speed = 6
	max_speed = 4
	drag = 2

	light_color = "#C1CEFF"

/obj/item/vehicle_component/health_manager/durand
	integrity = 400
	resistances = list("melee" = 75, "bullet" = 50, "laser" = 40, "energy" = 40, "emp" = 10,"bomb" = 0)

/datum/component_profile/durand
	pos_to_check = "driver"
	gunner_weapons = list(/obj/item/weapon/gun/vehicle_turret/switchable/mech_guns/taser_shotgun)
	vital_components = newlist(/obj/item/vehicle_component/health_manager/durand)

/obj/item/weapon/gun/vehicle_turret/switchable/mech_guns/taser_shotgun
	name = "Mech Turret"
	desc = "A mech-mounted combination of a shotgun and a taser rifle."
	guns_switchto = newlist(/datum/vehicle_gun/mech_shotgun,/datum/vehicle_gun/mech_taser)
	magazine_type = /obj/item/ammo_magazine/mech_shotgun

/obj/item/weapon/hrunting_melee/gygax
	name = "\the Gygax fist"
	desc = "punch"
