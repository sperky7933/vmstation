/datum/surgery/gender_reassignment
	name = "Gender reassignment"
	target_mobtypes = list(/mob/living/carbon/human)
	steps = list(/datum/surgery_step/incise,
		/datum/surgery_step/clamp_bleeders,
		/datum/surgery_step/reshape_genitals,
		/datum/surgery_step/close)
	possible_locs = list(BODY_ZONE_PRECISE_GROIN)

//reshape_genitals
/datum/surgery_step/reshape_genitals
	name = "reshape genitals"
	implements = list(/obj/item/scalpel = 100, /obj/item/hatchet = 50, /obj/item/wirecutters = 35)
	time = 64
	var/chosen_gender
	var/list/gender_list = list("Male", "Female", "Plural")

/datum/surgery_step/reshape_genitals/preop(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	//here: choose target.gender
	chosen_gender = input(user, "Which gender?") as null|anything in gender_list

	if(!chosen_gender)
		return

	if(chosen_gender == "Male")
		display_results(user, target, "<span class='notice'>[user] begins to reshape [target]'s genitals to look more masculine.</span>",
			"[user] begins to reshape [target]'s genitals to look more masculine.",
			"You begin to reshape [target]'s genitals to look more masculine...")

	else if(chosen_gender == "Female")
		display_results(user, target, "<span class='notice'>[user] begins to reshape [target]'s genitals to look more feminine.</span>",
			"[user] begins to reshape [target]'s genitals to look more feminine.",
			"You begin to reshape [target]'s genitals to look more feminine...")

	else
		display_results(user, target, "<span class='notice'>[user] begins to remove [target]'s genitals.</span>",
			"[user] begins to remove [target]'s genitals.",
			"You begin to remove [target]'s genitals...")

/datum/surgery_step/reshape_genitals/success(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	if(chosen_gender == "Male")
		user.visible_message("[user] has made a man of [target]!", "<span class='notice'>You made [target] a man.</span>")
		target.gender = MALE

	if(chosen_gender == "Female")
		user.visible_message("[user] has made a woman of [target]!", "<span class='notice'>You made [target] a woman.</span>")
		target.gender = FEMALE

	if(chosen_gender == "Plural")
		user.visible_message("[user] has made [target] transgender!", "<span class='notice'>You made [target] transgender.</span>")
		target.gender = PLURAL

	return 1
	target.regenerate_icons()

/datum/surgery_step/reshape_genitals/failure(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	user.visible_message("<span class='warning'>[user] accidentally mutilates [target]'s genitals beyond the point of recognition!</span>", "<span class='warning'>You accidentally mutilate [target]'s genitals beyond the point of recognition!</span>")
	target.gender = PLURAL
	target.regenerate_icons()
	return 1
