//Cloaks. No, not THAT kind of cloak.

/obj/item/clothing/neck/cloak
	name = "brown cloak"
	desc = "It's a cape that can be worn around your neck."
	icon = 'icons/obj/clothing/cloaks.dmi'
	icon_state = "qmcloak"
	item_state = "qmcloak"
	w_class = WEIGHT_CLASS_SMALL
	body_parts_covered = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/head/cloakhood
	name = "cloak hood"
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "golhood"
	desc = "A hood for a cloak"
	body_parts_covered = HEAD
	flags = NODROP
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/neck/cloak/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is strangling [user.p_them()]self with [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return(OXYLOSS)

/obj/item/clothing/neck/cloak/hos
	name = "head of security's cloak"
	desc = "Worn by Securistan, ruling the station with an iron fist. It's slightly armored."
	icon_state = "hoscloak"

/obj/item/clothing/neck/cloak/qm
	name = "quartermaster's cloak"
	desc = "Worn by Cargonia, supplying the station with the necessary tools for survival."

/obj/item/clothing/neck/cloak/cmo
	name = "chief medical officer's cloak"
	desc = "Worn by Meditopia, the valiant men and women keeping pestilence at bay. It's slightly shielded from contaminants."
	icon_state = "cmocloak"

/obj/item/clothing/neck/cloak/ce
	name = "chief engineer's cloak"
	desc = "Worn by Engitopia, wielders of an unlimited power. It's slightly shielded against radiation."
	icon_state = "cecloak"

/obj/item/clothing/neck/cloak/rd
	name = "research director's cloak"
	desc = "Worn by Sciencia, thaumaturges and researchers of the universe. It's slightly shielded from contaminants."
	icon_state = "rdcloak"

/obj/item/clothing/neck/cloak/cap
	name = "captain's cloak"
	desc = "Worn by the commander of Space Station 13."
	icon_state = "capcloak"
	
/obj/item/clothing/neck/cloak/hop
	name = "head of personnel's cloak"
	desc = "Worn by the Head of Personnel. It smells faintly of bureaucracy."
	icon_state = "hopcloak"

/obj/item/clothing/suit/hooded/cloak/drake
	name = "drake armour"
	icon_state = "dragon"
	desc = "A suit of armour fashioned from the remains of an ash drake. "
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/internals, /obj/item/weapon/resonator, /obj/item/device/mining_scanner, /obj/item/device/t_scanner/adv_mining_scanner, /obj/item/weapon/gun/energy/kinetic_accelerator, /obj/item/weapon/pickaxe, /obj/item/weapon/twohanded/spear)
	armor = list(melee = 70, bullet = 30, laser = 50, energy = 40, bomb = 70, bio = 60, rad = 50, fire = 100, acid = 100)
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/drake
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/hooded/cloakhood/drake
	name = "drake helm"
	icon_state = "dragon"
	desc = "The skull of a dragon."
	armor = list(melee = 70, bullet = 30, laser = 50, energy = 40, bomb = 70, bio = 60, rad = 50, fire = 100, acid = 100)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
<<<<<<< HEAD
	resistance_flags = FIRE_PROOF | ACID_PROOF
=======
	unacidable = 1

/* //wip
/obj/item/clothing/cloak/wizard //Not actually obtainable until proper balancing can be done
	name = "cloak of invisibility"
	desc = "A tattered old thing that apparently gifts the wearer with near-invisibility."
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 10, rad = 10)
	action_button_name = "Flaunt Cloak"
	var/invisible = 0

/obj/item/clothing/cloak/wizard/ui_action_click()
	toggleInvisibility(usr)
	return

/obj/item/clothing/cloak/wizard/proc/toggleInvisibility(mob/user)
	if(user.slot_back != src)
		to_chat(user, "<span class='warning'>You need to be wearing the cloak first!</span>")
		return
	user.visible_message("<span class='notice'>[user] flaunts [src]!</span>")
	if(!invisible)
		makeInvisible(user)
		return
	if(invisible)
		breakInvisible(user)
		return

/obj/item/clothing/cloak/wizard/proc/makeInvisible(mob/user)
	if(!invisible)
		user.visible_message("<span class='warning'>[user] suddenly fades away!</span>", \
							 "<span class='notice'>You have become nearly invisible. This will require slow movement and will break upon taking damage.</span>")
		flags |= NODROP //Cannot unequip while invisible
		user.alpha = 10
		slowdown = 2
		invisible = 1

/obj/item/clothing/cloak/wizard/proc/breakInvisible(mob/user)
	if(invisible)
		user.visible_message("<span class='warning'>[user] suddenly appears from thin air!</span>", \
							 "<span class='warning'>The enchantment has broken! You are visible again.</span>")
		flags -= NODROP
		user.alpha = 255
		slowdown = 0
		invisible = 0

/obj/item/clothing/cloak/wizard/IsShield()
	breakInvisible(src.loc)
	return 0

/obj/item/clothing/cloak/wizard/IsReflect()
	breakInvisible(src.loc)
	return 0
*/
>>>>>>> master
