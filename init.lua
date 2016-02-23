--Nssb
--Materials


minetest.register_node("nssb:mossy_stone_brick", {
	description = "Mossy Stone Brick",
	tiles = {"mossy_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:very_mossy_stone_brick", {
	description = "Very Mossy Stone Brick",
	tiles = {"very_mossy_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:mossy_stone_column", {
	description = "Mossy Stone Column",
	tiles = {"mossy_stone_column.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:stone_column", {
	description = "Stone Column",
	tiles = {"stone_column.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("nssb:marine_stone", {
	description = "Seastone",
	tiles = {"marine_stone.png"},
	is_ground_content = false,
	groups = {cracky=1, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:marine_brick", {
	description = "Seastone Brick",
	tiles = {"marine_brick.png"},
	is_ground_content = false,
	groups = {stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:marine_meselamp", {
	description = "Sea Meselamp",
	tiles = {"marine_meselamp.png"},
	is_ground_content = false,
	groups = {cracky=3},
	drop = "",
	light_source = 15,
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("nssb:mantis_clay", {
	description = "Mantis Clay",
	tiles = {"mantis_clay.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:hardened_mantis_clay", {
	description = "Hardened Mantis Clay",
	tiles = {"hard_mantis_clay.png"},
	is_ground_content = false,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:ant_stone", {
	description = "Ant Stone",
	tiles = {"ant_stone.png"},
	is_ground_content = false,
	groups = {cracky=1, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:vine", {
	description = "Vine",
	drawtype = "signlike",
	tiles = {"climbing_plant.png"},
	inventory_image = {"vine.png"},
	walkable = false,
	climbable = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	selection_box = {type="wallmounted"},
	legacy_wallmounted = true,
	groups = {flammable=3, snappy = 3},
	sounds = default.node_sound_leaves_defaults()
})


minetest.register_node("nssb:liana", {
	description = "Liana",
	drawtype = "plantlike",
	inventory_image = {"liana.png"},
	tiles = {"liana.png"},
	paramtype = "light",
	walkable = false,
	climbable = true,
	groups = {flammable=3, snappy = 3},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("nssb:vertical_web", {
	description = "Vertical Web",
	inventory_image = "vertical_web.png",
	tile_images = {"vertical_web.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "nssm:web",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "nssb:vertical_web",
	liquid_alternative_source = "nssb:vertical_web",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_node("nssb:web_cone_up", {
	description = "Web Cone Up",
	inventory_image = "web_cone_up.png",
	tile_images = {"web_cone_up.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "nssm:web",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "nssb:web_cone_up",
	liquid_alternative_source = "nssb:web_cone_up",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_node("nssb:web_cone_down", {
	description = "Web Cone Down",
	inventory_image = "web_cone_down.png",
	tile_images = {"web_cone_down.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "nssm:web",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "nssb:web_cone_down",
	liquid_alternative_source = "nssb:web_cone_down",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_node("nssb:web_cocoon", {
	description = "Web Cocoon",
	tiles = {"web_cocoon.png"},
	is_ground_content = false,
	groups = {snappy=1, flammable=2},
})

--schematichs generation

function nssb_register_buildings (build, numerone, blocco, giu, bloccogiu, deep, bloccodeep, raggio, near)

minetest.register_on_generated(function(minp, maxp, seed)
	local i, j, k
	local flag=0
	i = math.random(minp.x, maxp.x)
	k = math.random(minp.z, maxp.z)
	for j=minp.y,maxp.y do
		local pos1 = {x=i, y=j, z=k}
		local pos2 = {x=i+giu, y=j-1, z=k+giu}
		local pos3 = {x=i, y=j+deep, z=k}
		local n = minetest.env:get_node(pos1).name
		local d = minetest.env:get_node(pos3).name
		local u = minetest.env:get_node(pos2).name
				if n== blocco and u== bloccogiu and d==bloccodeep and flag==0 and math.random(1,numerone)==1 then
						if minetest.find_node_near(pos3, raggio, near) then
								minetest.place_schematic(pos1, minetest.get_modpath("nssb").."/schems/".. build ..".mts", "0", {}, true)
								--minetest.chat_send_all("Added schematic in "..(minetest.pos_to_string(pos1)))
								flag=1
						end
				end

	end
end)

end

	
	--[[
	for i=minp.x,maxp.x do
		for j=minp.y,maxp.y do
			for k=minp.z,maxp.z do
				local pos1 = {x=i, y=j, z=k}
--				local pos2 = {x=i, y=j+1, z=k}
				local pos3 = {x=i, y=j+deep, z=k}
--				local pos4 = {x=i+largo, y=j+1, z=k+largo}
				local n = minetest.env:get_node(pos1).name
				local l = minetest.env:get_node(pos4).name
				local d = minetest.env:get_node(pos3).name
--				local u = minetest.env:get_node(pos2).name
				if n== blocco and  u== bloccosu and l== bloccolargo and d==bloccodeep and flag==0 and math.random(1,numerone)==1 then
					minetest.place_schematic(pos1, minetest.get_modpath("nssb").."/schems/".. build ..".mts", "0", {}, true)
					--minetest.chat_send_all("Added schematic in "..(minetest.pos_to_string(pos1)))
					flag=1
				end
			end
		end
	end
	]]--



--(nome della costruzione, numerone (tra 1 e numerone viene fatto il math.random), blocco sul quale viene messa la schematica, distanza a cui verrà calcolato bloccogiù, bloccogiù (serve per mettere le schematiche in luoghi pianeggianti), deep è il numero di un nesimo blocco sopra la pos1 per mettere le costruzioni profonde, bloccodeep è il blocco in alto, raggio in cui cerca i blocchi simili, blocco simile da trovare)
nssb_register_buildings ('spiaggiagranchius', 1, "default:sand", 3, "default:sand", 2, "air",  3, "air")
nssb_register_buildings ('granchiusacqua', 1, "default:sand", 3, "default:sand", 12,"default:water_source", 3, "default:water_source")
nssb_register_buildings ('ooteca', 1, "default:dirt_with_grass",4, "default:dirt", 2, "air", 24, "default:tree")
nssb_register_buildings ('minuscolaooteca', 3, "default:dirt_with_grass",3 , "default:dirt", 2, "air", 24, "default:tree")
nssb_register_buildings ('piccolaooteca', 3, "default:dirt_with_grass", 2, "default:dirt", 2, "air", 24, "default:tree")
nssb_register_buildings ('arcatemarine', 1, "default:sand", 3, "default:sand", 13, "default:water_source", 3, "default:water_source")
nssb_register_buildings ('grandepiramide', 1, "default:dirt", 3, "default:dirt", 20, "default:water_source", 3, "default:water_source")
nssb_register_buildings ('collinaa', 3, "default:dirt_with_grass", 3, "default:dirt", 2, "air", 3, "air")
nssb_register_buildings ('bozzoli', 1, "default:dirt_with_grass", 3, "default:dirt",  12, "default:jungle_leaves", 24, "default:jungle_tree")

--Eggs

function nssb_register_eggs (name, descr, int, wide, troppi, neigh)

	minetest.register_node("nssb:".. name .."_eggs", {
		description = descr .." Eggs",
		tiles = {name .."_eggs.png"},
		light_source = 5,
		is_ground_content = false,
		groups = {snappy=1},
	})

--[[
	minetest.register_abm({
	nodenames = {"nssb:".. name .."_eggs"},
	neighbors = {neigh},
	interval = int,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos1 = {x=pos.x+math.random(-wide,wide), y=pos.y+0.5, z=pos.z+math.random(-wide,wide)}
		local n = minetest.env:get_node(pos1).name
		if n ~= "air" then
			return
		end
		local count = 0
		for _,ent in pairs(minetest.get_objects_inside_radius(pos, 6)) do
			count = count + 1
		end
		if count < troppi then
			minetest.add_entity(pos1, "nssm:" .. name)
		end
	end
	})
]]
end

nssb_register_eggs ('ant_worker', 'Ant Worker', 16, 2, 4, "air")
nssb_register_eggs ('ant_soldier', 'Ant Soldier', 16, 2, 4, "air")
nssb_register_eggs ('larva', 'Larva', 16, 2, 4, "air")
nssb_register_eggs ('crab', 'Crab', 18, 2, 4, "default:sand")
nssb_register_eggs ('black_widow', 'Black Widow', 18, 2, 4, "air")
nssb_register_eggs ('uloboros', 'Uloboros', 18, 2, 4, "air")
nssb_register_eggs ('tarantula', 'Tarantula', 18, 2, 1, "air")
nssb_register_eggs ('daddy_long_legs', 'Daddy Long Legs', 18, 2, 4, "air")
nssb_register_eggs ('xgaloctopus', 'Xgaloctopus', 18, 2, 4, "default:water_source")
