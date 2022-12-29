----------------------------------------------------------
--» Custom Blips
--» By FRANkiller13
--» Do not remove credits !!
--» Blips: https://wiki.gtanet.work/index.php?title=Blips
----------------------------------------------------------

ESX                             = nil
local Blips = {
	{ name="An example", id=492,x=73.88, y=93.31, z=79.2},
	--{ name="An example", id=492,x=73.88, y=93.31, z=79.2},
}

Citizen.CreateThread(function()
	for _, item in pairs(Blips) do
        item.blip = AddBlipForCoord(item.x, item.y, item.z)
		SetBlipSprite(item.blip, item.id)
		SetBlipColour(item.blip, 1)
        SetBlipAsShortRange(item.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(item.name)
        EndTextCommandSetBlipName(item.blip)	
	end
end)