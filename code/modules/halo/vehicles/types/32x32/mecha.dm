/obj/vehicles/mech
	name = "mech"
	desc = "A mech"

	violent_destruction = FALSE

	can_fire_omnidirectionally = FALSE

	comp_prof = /datum/component_profile/mech
	occupants = list(0,0)

	exposed_positions = list("driver" = 0)

	sprite_offsets = list("1" = list(1,6),"2" = list(1,6),"4" = list(7,6),"8" = list(1,6))

	melee_type = /obj/item/weapon/mech_melee

	can_space_move = 0
	internal_air = new

	vehicle_size = ITEM_SIZE_VEHICLE
	capacity_flag = ITEM_SIZE_VEHICLE_SMALL

	move_sound = 'sound/mecha/mechstep.ogg'
	vehicle_view_modifier = 1.3

	can_smoke = 0
	smoke_ammo = 0
	smoke_ammo_max = 0
	smoke_step_dist = 0

	acceleration = 1
	min_speed = 1
	max_speed = 2
	drag = 1

	light_color = "#C1CEFF"

	passive_tohit_boost = VEHICLE_ACCBOOST_STANDARD

/datum/component_profile/mech

/obj/item/weapon/mech_melee
	name = "\the mech's fist"
	desc = "punch"
	force = 20
	armor_penetration = 0

/obj/item/weapon/mech_melee/resolve_attackby(atom/movable/a, mob/user, var/click_params)
	var/mob/living/m = a
	var/obj/vehicles/v = a
	var/do_knockback = 0
	if(istype(v) && v.vehicle_size < ITEM_SIZE_VEHICLE)
		do_knockback = 1
	if(istype(m))
		do_knockback = 3
	if(do_knockback)
		var/turf/t = get_turf(user)
		var/throw_dir = get_dir(t, m)
		var/turf/targ = t
		for(var/i = 0 to do_knockback)
			var/turf/targ_temp = get_step(targ,throw_dir)
			if(targ_temp.density == 1)
				break
			targ = targ_temp
		a.throw_at(targ, do_knockback, 1, user)
	. = ..()
