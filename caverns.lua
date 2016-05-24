-- Parameters

local YMIN = -31000 -- Cave realm limits
local YMAX = -30000
local TCAVE = 0.8 -- Cave threshold: 1 = small rare caves,
					-- 0.5 = 1/3rd ground volume, 0 = 1/2 ground volume.
local BLEND = 64 -- Cave blend distance near YMIN, YMAX

-- 3D noise for caves

local np_cave = {
	offset = 0,
	scale = 1,
	spread = {x = 512, y = 256, z = 512}, -- squashed 3:1
	seed = 59033,
	octaves = 6,
	persist = 0.63
}

-- Stuff

local yblmin = YMIN + BLEND * 1.5
local yblmax = YMAX - BLEND * 1.5

-- Initialize noise objects to nil

local nobj_cave = nil

-- On generated function

minetest.register_on_generated(function(minp, maxp, seed)
	if minp.y > YMAX or maxp.y < YMIN then
		return
	end

	local t1 = os.clock()
	local x1 = maxp.x
	local y1 = maxp.y
	local z1 = maxp.z
	local x0 = minp.x
	local y0 = minp.y
	local z0 = minp.z

	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge = emin, MaxEdge = emax}
	local data = vm:get_data()

	local c_air = minetest.get_content_id("air")

	local sidelen = x1 - x0 + 1
	local chulens = {x = sidelen, y = sidelen, z = sidelen}
	local minposxyz = {x = x0, y = y0, z = z0}

	nobj_cave = nobj_cave or minetest.get_perlin_map(np_cave, chulens)

	local nvals_cave = nobj_cave:get3dMap_flat(minposxyz)

	local nixyz = 1
	for z = z0, z1 do -- for each xy plane progressing northwards
		for y = y0, y1 do -- for each x row progressing upwards
			local tcave
			if y < yblmin then
				tcave = TCAVE + ((yblmin - y) / BLEND) ^ 2
			elseif y > yblmax then
				tcave = TCAVE + ((y - yblmax) / BLEND) ^ 2
			else
				tcave = TCAVE
			end
			local vi = area:index(x0, y, z)
			for x = x0, x1 do -- for each node do
				if nvals_cave[nixyz] > tcave then
					data[vi] = c_air
				end
				nixyz = nixyz + 1
				vi = vi + 1
			end
		end
	end

	vm:set_data(data)
	vm:set_lighting({day = 0, night = 0})
	vm:calc_lighting()
	vm:write_to_map(data)

	local chugent = math.ceil((os.clock() - t1) * 1000)
	print ("[subterrain] " .. chugent .. " ms")
end)
