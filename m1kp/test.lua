local Module = {}
Module.__index = Module

local Players = game:GetService("Players")
local Me = Players.LocalPlayer

function Module.new(Owners: number, OwnerName: string)
   local self = setmetatable({}, Module)
   self.OwnerId = Owners or nil
   self.OwnerName = OwnerName or nil

   return self
end

function Module:CheckOwner(self, UserId: number)
   if self.OwnerId == UserId then
      return true
   end

   return false
end   

return Module
