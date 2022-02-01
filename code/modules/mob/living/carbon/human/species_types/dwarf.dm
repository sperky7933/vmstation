/datum/species/dwarf
	name = "Dwarf"
	id = "dwarf"
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS)
	default_features = list("mcolor" = "FFF", "wings" = "None")
	limbs_id = "human"
	use_skintones = 1
	inherent_traits = list(TRAIT_NOBREATH) //TODO: REMOVE THIS DUMB SHIT
	disliked_food = FRUIT | GROSS

/datum/species/dwarf/on_species_gain(mob/living/carbon/C, datum/species/old_species, pref_load)
	C.dna.add_mutation(DWARFISM)
	/*
	C.transform = C.transform.Scale(1, 0.8) //give gene dwarfism
	passtable_on(C, INNATE_TRAIT)
	*/
	. = ..()

/datum/species/squid/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_dwarf_name(r)

	var/randname = dwarf_name()

	if(lastname)
		randname += " [lastname]"

	return randname

/proc/random_unique_squid_name(attempts_to_find_unique_name=10, genderToFind)
    for(var/i in 1 to attempts_to_find_unique_name)
        . = capitalize(dwarf_name())
        if(!findname(.))
            break
