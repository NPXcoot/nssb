--Nssb
--Materials
--Gioforchio caro, mancano i vari Bloco fabbricati! I bozzoli che droppino vari oggetti tipo armi o cose del genere o può far spawnare ragni (sembra divertente!), da far spawnare rovine 2 se riesci e poi commentare il codice e scrivere il readme! O dici che non è abbastanza di impatto per la prima release? La 0.1 in Wip mods! Potremmo fare un altro trailer!!!

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
	groups = {cracky=1, stone=1},
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
	--ho provato, ma ho fallito durissimooooooooo!!!!
	--[[local dro = math.random(1,4)
	if dro == 1 then
		drop = "nssm:ant_sword",
	elseif dro == 2 then
		drop = "nssm:mantis_sword",
	elseif dro == 3 then
		drop = "nssm:crab_light_mace",
	elseif dro == 4 then
		drop = "nssm:masticone_fang_sword",]]
	is_ground_content = false,
	groups = {snappy=1, flammable=2},
})






--schematichs generation

function nssb_register_buildings (build, numerone, blocco, giu, bloccogiu, deep, bloccodeep, raggio, near, lato, underground, height, ice)

	minetest.register_on_generated(function(minp, maxp, seed)
		if underground==false then
			local i, j, k
			local flag=0
			local posd
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
							posd=pos1
							flag=1
					end
				end
			end
			if flag==1 and lato>0 then
				for dx = 0,lato do
					for dz = 0,lato do
						local dy=posd.y-1
						local f = {x = posd.x+dx, y=dy, z=posd.z+dz}
						local fg = minetest.env:get_node(f).name
						if ice == false then
							while fg=="air" do
								minetest.env:set_node(f, {name="default:dirt"})
								f.y=f.y-1
								fg = minetest.env:get_node(f).name
							end
						else
							while fg=="air" do
									minetest.env:set_node(f, {name="default:ice"})
									f.y=f.y-1
									fg = minetest.env:get_node(f).name
							end
						end
					end
				end
			end
		else	--underground==true
			if minp.y<0 then
				--minetest.chat_send_all("Siamo sottoterra")
				minetest.chat_send_all("Posmin: "..(minetest.pos_to_string(minp)).." Posmax: "..(minetest.pos_to_string(maxp)))
				local i, j, k
				local flag=0
				if height~=nil then
					if height>minp.y and height<maxp.y then
						minetest.chat_send_all("Siamo all'altezza giusta")
						j=height
					else
						minetest.chat_send_all("Non siamo all'altezza giusta, esco")
						return
					end
				else
					j = math.random(minp.y, maxp.y)
				end
				i = math.random(minp.x, maxp.x)
				k = math.random(minp.z, maxp.z)
				local pos1={x=i, y=j, z=k}
				local n = minetest.env:get_node(pos1).name
				if minetest.find_node_near(pos1, raggio, "default:lava_source")or flag==1 then
					minetest.chat_send_all("Trovata la lava, esco")
					return
				else
					if n=="default:stone" and minetest.find_node_near(pos1, raggio, "default:jungletree") then
						minetest.place_schematic(pos1, minetest.get_modpath("nssb").."/schems/".. build ..".mts", "0", {}, true)
						flag=1
						minetest.chat_send_all("Added schematic in "..(minetest.pos_to_string(pos1)))
					end
				end
			end
		end
	end)
end


--(nome della costruzione, numerone (tra 1 e numerone viene fatto il math.random), blocco sul quale viene messa la schematica, distanza a cui verr� calcolato bloccogi�, bloccogi� (serve per mettere le schematiche in luoghi pianeggianti), deep � il numero di un n-esimo blocco sopra la pos1 per mettere le costruzioni profonde, bloccodeep � il blocco in alto, raggio in cui cerca i blocchi simili, blocco simile da trovare, misura del lato della schematica sotto cui mettere dirt)
nssb_register_buildings ('spiaggiagranchius', 2, "default:sand", 3, "default:sand", 2, "air",  3, "air", 0, false, nil, false)
nssb_register_buildings ('acquagranchius', 2, "default:sand", 3, "default:sand", 12,"default:water_source", 3, "default:water_source", 0, false, nil, false)
nssb_register_buildings ('ooteca', 6, "default:dirt_with_grass", 3, "default:dirt", 2, "air", 24, "default:tree", 8, false, nil, false)
nssb_register_buildings ('minuscolaooteca', 6, "default:dirt_with_grass",3 , "default:dirt", 2, "air", 24, "default:tree", 2, false, nil, false)
nssb_register_buildings ('piccolaooteca', 6, "default:dirt_with_grass", 2, "default:dirt", 2, "air", 24, "default:tree", 4, false, nil, false)
nssb_register_buildings ('arcate', 4, "default:sand", 3, "default:sand", 13, "default:water_source", 3, "default:water_source",0, false, nil, false)
nssb_register_buildings ('grandepiramide', 4, "default:dirt", 3, "default:dirt", 20, "default:water_source", 3, "default:water_source", 0, false, nil, false)
nssb_register_buildings ('collina', 6, "default:dirt_with_grass", 3, "default:dirt", 2, "air", 3, "air", 12, false, nil, false)
nssb_register_buildings ('megaformicaio', 6, "default:dirt_with_grass", 4, "default:dirt", 2, "air", 3, "air", 25, false, nil, false)
nssb_register_buildings ('rovine1', 4, "default:dirt_with_grass", 3, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine2', 1, "default:stone", 0, "air",  0, "air", 24, "default:jungletree", 5, true, -8, false)
nssb_register_buildings ('rovine3', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine4', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine5', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine6', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine7', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine8', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine9', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('rovine10', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('bozzoli', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 12, "default:jungletree", 10, false, nil, false)
nssb_register_buildings ('blocohouse', 1, "default:stone", 0, "air",  0, "air", 3, "default:stone", 5, true, -10, false) --alcuni parametri sono messi a caso, tanto non vengono untilizzati se la schematic deve essere spawnata sottoterra.
nssb_register_buildings ('bigblocohouse', 1, "default:stone", 0, "air",  0, "air", 3, "default:stone", 5, true, -20, false) 
nssb_register_buildings ('blocobiggesthouse', 1, "default:stone", 0, "air",  0, "air", 3, "default:stone", 5, true, -30, false) 
nssb_register_buildings ('picco', 1, "default:desert_stone", 1, "default:desert_stone",  1, "air", 3, "default:ice", 5, false, nil, false) 
nssb_register_buildings ('piccoghiaccio', 1, "default:ice", 1, "default:ice",  1, "air", 3, "default:ice", 5, false, nil, true) 
nssb_register_buildings ('icehall', 1, "default:ice", 1, "default:ice",  1, "air", 3, "default:ice", 5, false, nil, true) 


--Eggs

function nssb_register_eggs (name, descr, int, wide, troppi, neigh)

	minetest.register_node("nssb:".. name .."_eggs", {
		description = descr .." Eggs",
		tiles = {name .."_eggs.png"},
		light_source = 5,
		is_ground_content = false,
		groups = {choppy=1},
	})


	minetest.register_abm({
	nodenames = {"nssb:".. name .."_eggs"},
	neighbors = {neigh},
	interval = int,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos1 = {x=pos.x+math.random(-wide,wide), y=pos.y+0.5, z=pos.z+math.random(-wide,wide)}
		local n = minetest.env:get_node(pos1).name
		if n ~= "air" and n ~= "default:water_source" then
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

end

nssb_register_eggs ('ant_worker', 'Ant Worker', 16, 2, 4, "air")
nssb_register_eggs ('ant_soldier', 'Ant Soldier', 16, 2, 4, "air")
nssb_register_eggs ('larva', 'Larva', 16, 2, 4, "air")
nssb_register_eggs ('crab', 'Crab', 18, 2, 4, "default:sand")
nssb_register_eggs ('black_widow', 'Black Widow', 18, 2, 4, "air")
nssb_register_eggs ('uloboros', 'Uloboros', 18, 2, 4, "air")
nssb_register_eggs ('daddy_long_legs', 'Daddy Long Legs', 18, 2, 4, "air")
nssb_register_eggs ('xgaloctopus', 'Xgaloctopus', 18, 2, 4, "default:water_source")
nssb_register_eggs ('bloco', 'Bloco', 14, 2, 4, "default:gravel")
nssb_register_eggs ('icesnake', 'Icesnake', 18, 2, 4, "default:ice")
nssb_register_eggs ('snow_biter', 'Snowbiter', 18, 2, 4, "default:ice")

--eggboss

function nssb_register_eggboss (nam, desc, interv, wid, tropp, neig, lumin)

	minetest.register_node("nssb:".. nam .."_eggboss", {
		description = desc .." Egg",
		tiles = {nam .."_eggboss.png"},
		light_source = lumin,
		is_ground_content = false,
		groups = {choppy=1},
	})


	minetest.register_abm({
	nodenames = {"nssb:".. nam .."_eggboss"},
	neighbors = {neig},
	interval = interv,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos1 = {x=pos.x+math.random(-wid,wid), y=pos.y+0.5, z=pos.z+math.random(-wid,wid)}
		local n = minetest.env:get_node(pos1).name
		if n ~= "air" and n ~= "default:water_source" then
			return
		end
		local count = 0
		for _,ent in pairs(minetest.get_objects_inside_radius(pos, 6)) do
			count = count + 1
		end
		if count < tropp then
			minetest.add_entity(pos1, "nssm:" .. nam)
		end
	end
	})

end

nssb_register_eggboss ('phoenix', 'Phoenix', 900, 10, 1, "air", 15)
nssb_register_eggboss ('tarantula', 'Tarantula', 900, 2, 1, "air", 5)
nssb_register_eggboss ('night_master', 'Night Master', 900, 10, 1, "air", 0)
nssb_register_eggboss ('icelamander', 'Icelamander', 900, 10, 1, "air", 5)