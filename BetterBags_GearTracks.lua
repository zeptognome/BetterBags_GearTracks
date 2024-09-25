-- This will get a handle endpos the BetterBags addon.
---@class BetterBags: AceAddon
local addon = LibStub('AceAddon-3.0'):GetAddon("BetterBags")

-- This will get a handle endpos the Categories module, which exposes
-- the API for creating categories.
---@class Categories: AceModule
local categories = addon:GetModule('Categories')

---@class Config: AceModule
local config = addon:GetModule('Config')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Context: AceModule
local context = addon:GetModule('Context')

---@class Localization: AceModule
local L = addon:GetModule('Localization')

---@class GearTracks: AceModule
local geartracks = addon:NewModule('GearTracks')

local mycontext = context:New('BetterBags_GearTracks Create Category')

local DFS2Exp = "bonusid=9294 or bonusid=9295 or bonusid=9296 or bonusid=9297 or bonusid=9298 or bonusid=9299 or bonusid=9300 or bonusid=9301"
local DFS2Adv = "bonusid=9302 or bonusid=9303 or bonusid=9304 or bonusid=9305 or bonusid=9306 or bonusid=9307 or bonusid=9308 or bonusid=9309"
local DFS2Vet = "bonusid=9313 or bonusid=9314 or bonusid=9315 or bonusid=9316 or bonusid=9317 or bonusid=9318 or bonusid=9319 or bonusid=9320"
local DFS2Champ = "bonusid=9321 or bonusid=9322 or bonusid=9323 or bonusid=9324 or bonusid=9325 or bonusid=9327 or bonusid=9328 or bonusid=9329"
local DFS2Hero = "bonusid=9330 or bonusid=9331 or bonusid=9332 or bonusid=9333 or bonusid=9334"
local DFS2Myth = "bonusid=9380 or bonusid=9381 or bonusid=9382"

local DFS3Exp = "bonusid=9536 or bonusid=9537 or bonusid=9538 or bonusid=9539 or bonusid=9540 or bonusid=9541 or bonusid=9542 or bonusid=9543"
local DFS3Adv = "bonusid=9544 or bonusid=9545 or bonusid=9546 or bonusid=9547 or bonusid=9548 or bonusid=9549 or bonusid=9550 or bonusid=9551"
local DFS3Vet = "bonusid=9552 or bonusid=9553 or bonusid=9554 or bonusid=9555 or bonusid=9556 or bonusid=9557 or bonusid=9558 or bonusid=9559"
local DFS3Champ = "bonusid=9560 or bonusid=9561 or bonusid=9562 or bonusid=9563 or bonusid=9564 or bonusid=9565 or bonusid=9566 or bonusid=9567"
local DFS3Hero = "bonusid=9568 or bonusid=9569 or bonusid=9570 or bonusid=9571 or bonusid=9572 or bonusid=9581"
local DFS3Myth = "bonusid=9573 or bonusid=9574 or bonusid=9575 or bonusid=9576"

local DFS4Exp = "bonusid=10321 or bonusid=10322 or bonusid=10323 or bonusid=10324 or bonusid=10325 or bonusid=10326 or bonusid=10327 or bonusid=10328"
local DFS4Adv = "bonusid=10305 or bonusid=10306 or bonusid=10307 or bonusid=10308 or bonusid=10309 or bonusid=10310 or bonusid=10311 or bonusid=10312"
local DFS4Vet = "bonusid=10341 or bonusid=10342 or bonusid=10343 or bonusid=10344 or bonusid=10345 or bonusid=10346 or bonusid=10347 or bonusid=10348"
local DFS4Champ = "bonusid=10313 or bonusid=10314 or bonusid=10315 or bonusid=10316 or bonusid=10317 or bonusid=10318 or bonusid=10319 or bonusid=10320"
local DFS4Hero = "bonusid=10329 or bonusid=10330 or bonusid=10331 or bonusid=10332 or bonusid=10333 or bonusid=10334"
local DFS4Myth = "bonusid=10335 or bonusid=10336 or bonusid=10337 or bonusid=10338"

local DFS4AwakeRaid = "bonusid=10884"
local DFS4AwakeVendor12 = "bonusid = 10407 or bonusid = 10408 or bonusid = 10409 or bonusid = 10410 or bonusid = 10411 or bonusid = 10412 or bonusid = 10413 or bonusid = 10414 or bonusid = 10415 or bonusid = 10416 or bonusid = 10417 or bonusid = 10418"
local DFS4AwakeVendor14 = "bonusid = 10490 or bonusid = 10491 or bonusid = 10492 or bonusid = 10493 or bonusid = 10494 or bonusid = 10495 or bonusid = 10496 or bonusid = 10497 or bonusid = 10498 or bonusid = 10499 or bonusid = 10500 or bonusid = 10501 or bonusid = 10502 or bonusid = 10503"

local WWS1Exp = "bonusid=10289 or bonusid=10288 or bonusid=10287 or bonusid=10286 or bonusid=10285 or bonusid=10284 or bonusid=10283 or bonusid=10282"
local WWS1Adv = "bonusid=10297 or bonusid=10296 or bonusid=10295 or bonusid=10294 or bonusid=10293 or bonusid=10292 or bonusid=10291 or bonusid=10290"
local WWS1Vet = "bonusid=10281 or bonusid=10280 or bonusid=10279 or bonusid=10278 or bonusid=10277 or bonusid=10276 or bonusid=10275 or bonusid=10274"
local WWS1Champ = "bonusid=10273 or bonusid=10272 or bonusid=10271 or bonusid=10270 or bonusid=10269 or bonusid=10268 or bonusid=10267 or bonusid=10266"
local WWS1Hero = "bonusid=10265 or bonusid=10264 or bonusid=10263 or bonusid=10262 or bonusid=10261 or bonusid=10256"
local WWS1Myth = "bonusid=10260 or bonusid=10250 or bonusid=10258 or bonusid=10257 or bonusid=10298 or bonusid=10299"

local DFCrafted = "bonusid=9401 or bonusid=9402 or bonusid=9403 or bonusid=9404 or bonusid=9405"
local DFS1Crafted = "bonusid=9365"
local DFS2Crafted = "bonusid=9366"
local DFS3Crafted = "bonusid=9498"
local DFS4Crafted = "bonusid=10249"

local WWCrafted = "bonusid=9623 or bonusid=9624 or bonusid=9625 or bonusid=9626 or bonusid=9627"
local WWS1Crafted = "bonusid=10222"

---@class AceConfig.OptionsTable
local gearTracksConfigOptions = {
  header = {
    type = "description",
    name = "BetterBags_GearTracks lets you instantly create categories to group gear by expansion, track, or Season.",
  },
  splash = {
    type = "header",
    name = "BetterBags_GearTracks",
  },
  dfseason2 = {
    type = "execute",
    name = "DF Season 2",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF Season 2"), itemList={}, save = true,
      searchCategory = {
        query = DFS2Exp.." or "..DFS2Adv.." or "..DFS2Vet.." or "..DFS2Champ.." or "..DFS2Hero.." or "..DFS2Myth,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfseason3 = {
    type = "execute",
    name = "DF Season 3",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF Season 3"), itemList={}, save = true,
      searchCategory = {
        query = DFS3Exp.." or "..DFS3Adv.." or "..DFS3Vet.." or "..DFS3Champ.." or "..DFS3Hero.." or "..DFS3Myth,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfseason4 = {
    type = "execute",
    name = "DF Season 4",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF Season 4"), itemList={}, save = true,
      searchCategory = {
        query = DFS4Exp.." or "..DFS4Adv.." or "..DFS4Vet.." or "..DFS4Champ.." or "..DFS4Hero.." or "..DFS4Myth,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfseason4awakeraid = {
    type = "execute",
    name = "DF Awakened Raid",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF Awakened Raid"), itemList={}, save = true,
      searchCategory = {
        query = DFS4AwakeRaid,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfseason4awakevendor = {
    type = "execute",
    name = "DF Awakened Vendor",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF Awakened Vendor"), itemList={}, save = true,
      searchCategory = {
        query = DFS4AwakeVendor12.." or "..DFS4AwakeVendor14,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1 = {
    type = "execute",
    name = "WW Season 1",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Exp.." or "..WWS1Adv.." or "..WWS1Vet.." or "..WWS1Champ.." or "..WWS1Hero.." or "..WWS1Myth,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1exp = {
    type = "execute",
    name = "WW Season 1 Explorer",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1 Explorer"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Exp,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1adv = {
    type = "execute",
    name = "WW Season 1 Adventurer",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1 Adventurer"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Adv,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1vet = {
    type = "execute",
    name = "WW Season 1 Vetran",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1 Vetran"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Vet,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1champ = {
    type = "execute",
    name = "WW Season 1 Champion",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1 Champion"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Champ,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1hero = {
    type = "execute",
    name = "WW Season 1 Hero",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1 Hero"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Hero,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwseason1myth = {
    type = "execute",
    name = "WW Season 1 Myth",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Season 1 Myth"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Myth,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfcrafted = {
    type = "execute",
    name = "DF Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF Crafted"), itemList={}, save = true,
      searchCategory = {
        query = DFCrafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfS1crafted = {
    type = "execute",
    name = "DF S1 Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF S1 Crafted"), itemList={}, save = true,
      searchCategory = {
        query = DFS1Crafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfS2crafted = {
    type = "execute",
    name = "DF S2 Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF S2 Crafted"), itemList={}, save = true,
      searchCategory = {
        query = DFS2Crafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfS3crafted = {
    type = "execute",
    name = "DF S3 Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF S3 Crafted"), itemList={}, save = true,
      searchCategory = {
        query = DFS3Crafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  dfS4crafted = {
    type = "execute",
    name = "DF S4 Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("DF S4 Crafted"), itemList={}, save = true,
      searchCategory = {
        query = DFS4Crafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwcrafted = {
    type = "execute",
    name = "WW Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW Crafted"), itemList={}, save = true,
      searchCategory = {
        query = WWCrafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
  wwS1crafted = {
    type = "execute",
    name = "WW S1 Crafted",
    func = function () categories:CreateCategory(mycontext,  { name = L:G("WW S1 Crafted"), itemList={}, save = true,
      searchCategory = {
        query = WWS1Crafted,
      },
      note = L:G("Created by BetterBags_GearTracks"),
      priority = 10,} )
      events:SendMessage(mycontext, 'bags/FullRefreshAll')
    end,
  },
}


if (config.AddPluginConfig) then
  config:AddPluginConfig("Gear Tracks", gearTracksConfigOptions)
else
  print ("BetterBags_GearTracks NOT loaded. Betterbags Plugin API Incompatible.")
end

config.configFrame:AddSubSection({
  title = 'GearTracks',
  description = 'Gear_Tracks settings',
})