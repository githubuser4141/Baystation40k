// Durand boards

/datum/research_design/durand_circuits
	name = "durand circuit components"
	build_type = PROTOLATHE
	required_materials = list("osmium-carbide plasteel" = 1, "gold" = 2)
	required_reagents = list(/datum/reagent/lithium = 5, /datum/reagent/silver = 5)
	product_type = /obj/item/weapon/storage/box/durand_circuits

// Gygax boards

/datum/research_design/gygax_circuits
	name = "gygax circuit components"
	build_type = PROTOLATHE
	required_materials = list("plasteel" = 3, "rglass" = 3)
	required_reagents = list(/datum/reagent/lithium = 5, /datum/reagent/silver = 5)
	product_type = /obj/item/weapon/storage/box/gygax_circuits

// Boxes

/obj/item/weapon/storage/box/durand_circuits
	name = "boxed Durand circuits"
	desc = "Box with the circuitry required for a Durand mech."
	icon_state = "radbox"
	startswith = list(
					/obj/item/weapon/circuitboard/mecha/durand/peripherals,
					/obj/item/weapon/circuitboard/mecha/durand/main,
					/obj/item/weapon/circuitboard/mecha/durand/targeting
					  )

/obj/item/weapon/storage/box/gygax_circuits
	name = "boxed Gygax circuits"
	desc = "Box with the circuitry required for a Gygax mech."
	icon_state = "radbox"
	startswith = list(
					/obj/item/weapon/circuitboard/mecha/gygax/peripherals,
					/obj/item/weapon/circuitboard/mecha/gygax/main,
					/obj/item/weapon/circuitboard/mecha/gygax/targeting
					  )
