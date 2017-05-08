/obj/item/weapon/grenade/flashbang
	name = "flashbang"
	icon_state = "flashbang"
	item_state = "flashbang"
	origin_tech = "materials=2;combat=3"

/obj/item/weapon/grenade/flashbang/prime()
	update_mob()
	var/flashbang_turf = get_turf(src)
	if(!flashbang_turf)
		return
	for(var/mob/living/M in get_hearers_in_view(7, flashbang_turf))
		bang(get_turf(M), M)

	for(var/obj/structure/blob/B in get_hear(8,flashbang_turf))     		//Blob damage here
		var/distance = get_dist(B, get_turf(src))
		var/damage = round(100/(distance*distance)+1)
		B.take_damage(damage, BURN, "energy")
	qdel(src)

/obj/item/weapon/grenade/flashbang/proc/bang(turf/T , mob/living/M)
	if(M.stat == DEAD)	//They're dead!
		return
	M.show_message("<span class='warning'>BANG</span>", 2)
	playsound(loc, 'sound/weapons/flashbang.ogg', 100, 1)
	var/distance = max(0,get_dist(get_turf(src),T))

//Flash
<<<<<<< HEAD
	if(M.flash_act(affect_silicon = 1))
		M.Stun(max(10/max(1,distance), 3))
		M.Weaken(max(10/max(1,distance), 3))
=======
	if(M.weakeyes)
		M.visible_message("<span class='disarm'><b>[M]</b> screams and collapses!</span>")
		to_chat(M, "<span class='userdanger'><font size=3>AAAAGH!</font></span>")
		M.Weaken(15) //hella stunned
		M.Stun(15)
		M.adjust_eye_damage(8)

	if(M.flash_eyes(affect_silicon = 1))
		M.Stun(max(10/distance, 3))
		M.Weaken(max(10/distance, 3))

>>>>>>> master
//Bang
	if(!distance || loc == M || loc == M.loc)	//Stop allahu akbarring rooms with this.
		M.Stun(10)
		M.Weaken(10)
<<<<<<< HEAD
		M.soundbang_act(1, 10, 10, 15)

	else
		M.soundbang_act(1, max(10/max(1,distance), 3), rand(0, 5))
=======
	if(!ear_safety)
		M << sound('sound/weapons/flash_ring.ogg',0,1,0,100)
		M.Stun(max(10/distance, 3))
		M.Weaken(max(10/distance, 3))
		M.setEarDamage(M.ear_damage + rand(0, 5), max(M.ear_deaf,15))
		if (M.ear_damage >= 15)
			to_chat(M, "<span class='warning'>Your ears start to ring badly!</span>")
			if(prob(M.ear_damage - 10 + 5))
				to_chat(M, "<span class='warning'>You can't hear anything!</span>")
				M.disabilities |= DEAF
		else
			if (M.ear_damage >= 5)
				to_chat(M, "<span class='warning'>Your ears start to ring!</span>")
>>>>>>> master
