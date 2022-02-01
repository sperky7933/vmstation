/datum/team/dwarves
	name = "Dwarves"
	show_roundend_report = FALSE

/datum/antagonist/dwarf
	name = "Dwarf"
	job_rank = ROLE_LAVALAND
	show_in_antagpanel = FALSE
	prevent_roundtype_conversion = FALSE
	antagpanel_category = "Dwarf"
	var/datum/team/dwarves/dwarf_team

/datum/antagonist/dwarf/create_team(datum/team/team)
	if(team)
		dwarf_team = team
		objectives |= dwarf_team.objectives
	else
		dwarf_team = new

/datum/antagonist/dwarf/get_team()
	return dwarf_team
