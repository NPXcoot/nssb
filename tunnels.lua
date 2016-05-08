local function tunnel3x (pos)
	for pox=0,100 do
	local pos3x ={ x=pox,y=0,z=0}
	minetest.place_schematic(pos3x, minetest.get_modpath("nssb").."/schems/3xair.mts")
	end
end