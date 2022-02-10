/obj/item/circuitboard/computer/merchant
	build_path = /obj/machinery/computer/shuttle/merchant

/obj/machinery/computer/shuttle/merchant
	name = "Space Merchant Shuttle Console"
	desc = "Used to control the Space Merchant Freighter."
	circuit = /obj/item/circuitboard/computer/merchant
	shuttleId = "merchant"
	possible_destinations = "whiteship_away;whiteship_home;whiteship_z4;whiteship_lavaland;caravantrade1_custom;caravantrade1_ambush;merchant_away"


/obj/machinery/computer/camera_advanced/shuttle_docker/merchant/merchant
	name = "Space Merchant Navigation Computer"
	desc = "Used to designate a precise transit location for the Space Merchant Freighter."
	shuttleId = "merchant"
	lock_override = NONE
	shuttlePortId = "merchant_away"
	jumpto_ports = list("whiteship_away" = 1, "whiteship_home" = 1, "whiteship_z4" = 1, "caravantrade1_ambush" = 1, "merchant_away" = 1)
	view_range = 14
	x_offset = -5
	y_offset = -5
	designate_time = 100


/obj/machinery/computer/camera_advanced/shuttle_docker/merchant/Initialize()
	. = ..()
	GLOB.jam_on_wardec += src

/obj/machinery/computer/camera_advanced/shuttle_docker/merchant/Destroy()
	GLOB.jam_on_wardec -= src
	return ..()
