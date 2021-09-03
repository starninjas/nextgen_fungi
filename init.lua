-- nextgen_fungi/init.lua

-- See README.txt for licensing.

-- Namespace for functions

nextgen_fungi = {}

--
-- Mushrooms
--

minetest.override_item("flowers:mushroom_red", {
	description = ("Red Mushroom"),
	tiles = {
		"nextgen_fungi_mushroom_red_top.png",
		"nextgen_fungi_mushroom_red_bottom.png",
		"nextgen_fungi_mushroom_red.png",
		"nextgen_fungi_mushroom_red.png",
		"nextgen_fungi_mushroom_red.png",
		"nextgen_fungi_mushroom_red.png"
	},
	inventory_image = "nextgen_fungi_mushroom_red.png",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.3125, -0.1875, 0.1875, 0.0625, 0.1875},
			{-0.0625, -0.5, -0.0625, 0.0625, -0.3125, 0.0625},
		},
	},
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(-5),
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.5, -0.1875, 0.1875, 0.062500, 0.1875},
	}
})

minetest.override_item("flowers:mushroom_brown", {
	description = ("Brown Mushroom"),
	tiles = {
		"nextgen_fungi_mushroom_brown_top.png",
		"nextgen_fungi_mushroom_brown_bottom.png",
		"nextgen_fungi_mushroom_brown.png",
		"nextgen_fungi_mushroom_brown.png",
		"nextgen_fungi_mushroom_brown.png",
		"nextgen_fungi_mushroom_brown.png"
	},
	inventory_image = "nextgen_fungi_mushroom_brown.png",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.25, -0.3125, 0.3125, 0, 0.3125},
			{-0.0625, -0.5, -0.0625, 0.0625, -0.25, 0.0625},
		},
	},
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1),
	selection_box = {
		type = "fixed",
		fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0, 0.3125},
	}
})