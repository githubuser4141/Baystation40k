// Shotgun

/datum/vehicle_gun/mech_shotgun
	name = "Mech Shotgun"
	desc = "Fires 12 gauge frangible slugs. Poor against armor."
	burst_size = 1
	dispersion = list(0.1)
	fire_delay = 9
	fire_sound = 'code/modules/halo/sounds/goblin_shotgun.ogg'
	mag_used = /obj/item/ammo_magazine/mech_shotgun

/obj/item/ammo_magazine/mech_shotgun
	name = "Internal shotgun magazine"
	caliber = "shotgun"
	max_ammo = 150
	ammo_type = /obj/item/ammo_casing/frangible_slug

/obj/item/ammo_casing/frangible_slug
	name = "12 gauge frangible slug"
	desc = "A .50 diameter powdered metal slug that breaks apart when hitting solid targets"
	caliber = "needleheavy"
	projectile_type = /obj/item/projectile/bullet/shotgun/frangible

/obj/item/projectile/bullet/shotgun/frangible
	name = "frangible slug"
	armor_penetration = -35

// Taser

/datum/vehicle_gun/mech_taser
	name = "Mech Taser Rifle"
	desc = "A upscaled TASER, suited for a exosuit."
	burst_size = 1
	dispersion = list(0)
	fire_delay = 6
	mag_used = /obj/item/ammo_magazine/energy/taser
	fire_sound = 'sound/weapons/taser.ogg'

/obj/item/ammo_magazine/energy/taser
	name = "Internal energy-taser magazine"
	caliber = "energy"
	max_ammo = 100
	ammo_type = /obj/item/ammo_casing/energy_taser

/obj/item/ammo_casing/energy_taser
	name = "energy-based taser slug"
	desc = "Surprisingly this isn't an actual physical taser slug, being made of mysterious energy. It feels stunning to the touch"
	caliber = "mech_taser"
	projectile_type = /obj/item/projectile/beam/stun

// Laser

/datum/vehicle_gun/mech_laser
	name = "Mech Laser Rifle"
	desc = "A upscaled laser rifle, suited for a exosuit."
	burst_size = 1
	dispersion = list(0)
	fire_delay = 6
	mag_used = /obj/item/ammo_magazine/energy/laser
	fire_sound = 'sound/weapons/Laser.ogg'

/obj/item/ammo_magazine/energy/laser
	name = "Internal energy-laser magazine"
	caliber = "energy"
	max_ammo = 100
	ammo_type = /obj/item/ammo_casing/energy_taser

/obj/item/ammo_casing/energy_taser
	name = "energy-based laser slug"
	desc = "A solidified laser casing, it feels hot to the touch"
	caliber = "mech_laser"
	projectile_type = /obj/item/projectile/beam/midlaser
