/var/create_mob_html = null
/datum/admins/proc/create_mob(var/mob/user)
	if (!create_mob_html)
		var/mobjs = null
		mobjs = jointext(typesof(/mob) - list(/mob/living/carbon/Xenomorph/Larva/predalien,/mob/living/carbon/Xenomorph/Predalien), ";")
		create_mob_html = file2text('html/create_object.html')
		create_mob_html = replacetext(create_mob_html, "null /* object types */", "\"[mobjs]\"")

	show_browser(user, replacetext(create_mob_html, "/* ref src */", "\ref[src]"), "Create Mob", "create_mob", "size=425x475")
