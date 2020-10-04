/*
 * Contains:
 *		Fire protection
 *		Bomb protection
 *		Radiation protection
 */

/*
 * Fire protection
 */

/obj/item/clothing/suit/fire
	name = "firesuit"
	desc = "A suit that protects against fire and heat."
	icon_state = "fire"
	item_state = "fire_suit"
	w_class = SIZE_LARGE//bulky item
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS
	allowed = list(
		/obj/item/tool/extinguisher,
		
		/obj/item/device/flashlight,
		/obj/item/device/healthanalyzer,
		/obj/item/device/radio,
		/obj/item/tank/emergency_oxygen,
		/obj/item/tool/crowbar,
		/obj/item/tool/pen,
	)
	slowdown = 1.0
	flags_inventory = NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS
	max_heat_protection_temperature = FIRESUIT_max_heat_protection_temperature
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS


/obj/item/clothing/suit/fire/firefighter
	icon_state = "firesuit"
	item_state = "firefighter"


/obj/item/clothing/suit/fire/heavy
	name = "firesuit"
	desc = "A suit that protects against extreme fire and heat."
	//icon_state = "thermal"
	item_state = "ro_suit"
	w_class = SIZE_LARGE//bulky item
	slowdown = 1.5

/*
 * Bomb protection
 */
/obj/item/clothing/head/bomb_hood
	name = "bomb hood"
	desc = "Use in case of bomb."
	icon_state = "bombsuit"
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_inventory = COVEREYES|COVERMOUTH
	flags_inv_hide = HIDEFACE|HIDEMASK|HIDEEARS|HIDEALLHAIR
	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	siemens_coefficient = 0


/obj/item/clothing/suit/bomb_suit
	name = "bomb suit"
	desc = "A suit designed for safety when handling explosives."
	icon_state = "bombsuit"
	item_state = "bombsuit"
	w_class = SIZE_LARGE//bulky item
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	slowdown = 2
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_inv_hide = HIDEJUMPSUIT|HIDETAIL
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	max_heat_protection_temperature = ARMOR_max_heat_protection_temperature
	siemens_coefficient = 0


/obj/item/clothing/head/bomb_hood/security
	icon_state = "bombsuitsec"
	item_state = "bombsuitsec"
	flags_armor_protection = BODY_FLAG_HEAD

/obj/item/clothing/suit/bomb_suit/security
	icon_state = "bombsuitsec"
	item_state = "bombsuitsec"
	allowed = list(
		/obj/item/weapon/gun,
		/obj/item/weapon/melee/baton,
		/obj/item/handcuffs,
		
		/obj/item/device/flashlight,
		/obj/item/device/healthanalyzer,
		/obj/item/device/radio,
		/obj/item/tank/emergency_oxygen,
		/obj/item/tool/crowbar,
		/obj/item/tool/pen,
	)
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS

/*
 * Radiation protection
 */
/obj/item/clothing/head/radiation
	name = "Radiation Hood"
	icon_state = "rad"
	desc = "A hood with radiation protective properties. Label: Made with lead, do not eat insulation"
	flags_inventory = COVEREYES|COVERMOUTH
	flags_inv_hide = HIDEFACE|HIDEMASK|HIDEEARS|HIDEALLHAIR
	flags_armor_protection = BODY_FLAG_HEAD|BODY_FLAG_FACE|BODY_FLAG_EYES
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_ULTRAHIGH
	armor_internaldamage = CLOTHING_ARMOR_LOW


/obj/item/clothing/suit/radiation
	name = "Radiation suit"
	desc = "A suit that protects against radiation. Label: Made with lead, do not eat insulation."
	icon_state = "rad"
	item_state = "rad_suit"
	w_class = SIZE_LARGE//bulky item
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_ARMS|BODY_FLAG_HANDS|BODY_FLAG_FEET
	allowed = list(
		/obj/item/clothing/head/radiation,
		/obj/item/clothing/mask/gas,
		
		/obj/item/device/flashlight,
		/obj/item/device/healthanalyzer,
		/obj/item/device/radio,
		/obj/item/tank/emergency_oxygen,
		/obj/item/tool/crowbar,
		/obj/item/tool/pen,
	)
	slowdown = 1.5
	armor_melee = CLOTHING_ARMOR_NONE
	armor_bullet = CLOTHING_ARMOR_NONE
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_HIGH
	armor_rad = CLOTHING_ARMOR_ULTRAHIGH
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_inv_hide = HIDEJUMPSUIT|HIDETAIL
