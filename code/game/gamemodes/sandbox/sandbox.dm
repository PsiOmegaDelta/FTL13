/datum/game_mode/sandbox
	name = "sandbox"
	config_tag = "sandbox"
	required_players = 0

<<<<<<< HEAD
	announce_span = "info"
	announce_text = "Build your own station... or just shoot each other!"
=======
/datum/game_mode/sandbox/announce()
	to_chat(world, "<B>The current game mode is - Sandbox!</B>")
	to_chat(world, "<B>Build your own station with the sandbox-panel command!</B>")
>>>>>>> master

/datum/game_mode/sandbox/pre_setup()
	for(var/mob/M in GLOB.player_list)
		M.CanBuild()
	return 1

/datum/game_mode/sandbox/post_setup()
	..()
	SSshuttle.registerHostileEnvironment(src)
