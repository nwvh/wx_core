if wx.NoDispatch then
	Citizen.CreateThread(function()
			for i = 1, 12 do
				EnableDispatchService(i, false)
			end
	end)
end
