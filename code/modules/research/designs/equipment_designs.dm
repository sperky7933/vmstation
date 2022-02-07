/datum/design/flightsuit
	name = "Flight Suit"
	desc = "A specialized hardsuit that is able to attach a flightpack and accessories.."
	id = "flightsuit"
	build_type = PROTOLATHE
	build_path = /obj/item/clothing/suit/space/hardsuit/flightsuit
	materials = list(/datum/material/iron = 16000, /datum/material/glass = 8000, /datum/material/diamond = 200, /datum/material/gold = 3000, /datum/material/silver = 3000, /datum/material/titanium = 16000)	//This expensive enough for you?
	construction_time = 250
	category = list("Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/flightpack
	name = "Flight Pack"
	desc = "An advanced back-worn system that has dual ion engines powerful enough to grant a humanoid flight. Contains an internal self-recharging high-current capacitor for short, powerful boosts."
	id = "flightpack"
	build_type = PROTOLATHE
	build_path = /obj/item/flightpack
	materials = list(/datum/material/iron = 16000, /datum/material/glass = 8000, /datum/material/diamond = 4000, /datum/material/gold = 12000, /datum/material/silver = 12000, /datum/material/silver = 20000, /datum/material/plasma = 16000, /datum/material/titanium = 16000)	//This expensive enough for you?
	construction_time = 250
	category = list("Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/flightshoes
	name = "Flight Shoes"
	desc = "Flight shoes, attachable to a flight suit to provide additional functions."
	id = "flightshoes"
	build_type = PROTOLATHE
	build_path = /obj/item/clothing/shoes/flightshoes
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 5000, /datum/material/gold = 1500, /datum/material/silver = 1500, /datum/material/plasma = 2000, /datum/material/titanium = 2000)
	construction_time = 100
	category = list("Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING
