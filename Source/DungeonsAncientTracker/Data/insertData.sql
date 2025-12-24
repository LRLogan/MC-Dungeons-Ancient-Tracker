-- Inserts initial data into the DB
-- Assumes schema already exists

INSERT INTO Maps (mapName, dlc) VALUES
('Creeper Woods', NULL),
('Creepy Crypt', NULL),
('Pumpkin Pastures', NULL),
('Arch Haven', NULL),
('Soggy Swamp', NULL),
('Soggy Cave', NULL),
('Redstone Mines', NULL),
('Fiery Forge', NULL),
('Cacti Canyon', NULL),
('Desert Temple', NULL),
('Lower Temple', NULL),
('Highblock Halls', NULL),
('Underhalls', NULL),
('Obsidian Pinnacle', NULL),
('???', NULL),
('The Stronghold', 'Echoing Void'),
('End Wilds', 'Echoing Void'),
('Broken Citadel', 'Echoing Void'),
('Dingy Jungle', 'Jungle Awakens'),
('Overgrown Temple', 'Jungle Awakens'),
('Panda Plateau', 'Jungle Awakens'),
('Treetop Tangle', 'NULL'),
('Frosted Fjord', 'Creeping Winter'),
('Lone Fortress', 'Creeping Winter'),
('Lost Settlement', 'Creeping Winter'),
('Windswept Peaks', 'Howling Peaks'),
('Gauntlet of Gales', NULL),
('Gale Sanctum', 'Howling Peaks'),
('Colossal Rampart', 'Howling Peaks'),
('Coral Rise', 'Hidden Depths'),
('Abyssal Monument', 'Hidden Depths'),
('Radiant Ravine', 'Hidden Depths'),
('Nether Wastes', 'Flames of the Nether'),
('Warped Forest', 'Flames of the Nether'),
('Crimson Forest', 'Flames of the Nether'),
('Soul Sand Valley', 'Flames of the Nether'),
('Basalt Deltas', 'Flames of the Nether'),
('Nether Fortress', 'Flames of the Nether');

INSERT INTO Items (itemName, itemType, dlc) VALUES

-- Melee Weapons
('Anchor', 'Melee', 'Hidden Depths'),
('Axe', 'Melee', NULL),
('Backstabber', 'Melee', 'Echoing Void'),
('Battlestaff', 'Melee', NULL),
('Battlestaff of Terror', 'Melee', NULL),
('Bone Cudgel', 'Melee', 'Flames of the Nether'),
('Boneclub', 'Melee', 'Flames of the Nether'),
('Broadsword', 'Melee', NULL),
('Broken Sawblade', 'Melee', 'Flames of the Nether'),
('Chill Gale Knife', 'Melee', 'Howling Peaks'),
('Claymore', 'Melee', NULL),
('Coral Blade', 'Melee', 'Hidden Depths'),
('Cutlass', 'Melee', NULL),
('Daggers', 'Melee', NULL),
('Dancers Sword', 'Melee', NULL),
('Diamond Pickaxe', 'Melee', NULL),
('Diamond Sword', 'Melee', NULL),
('Encrusted Anchor', 'Melee', 'Hidden Depths'),
('Eternal Knife', 'Melee', NULL),
('Fangs of Frost', 'Melee', NULL),
('Firebrand', 'Melee', NULL),
('Flail', 'Melee', NULL),
('Glaive', 'Melee', NULL),
('Grave Bane', 'Melee', NULL),
('Great Axeblade', 'Melee', NULL),
('Great Hammer', 'Melee', NULL),
('Growing Staff', 'Melee', NULL),
('Hammer of Gravity', 'Melee', NULL),
('Hawkbrand', 'Melee', NULL),
('Heartstealer', 'Melee', NULL),
('Highland Axe', 'Melee', NULL),
('Mace', 'Melee', NULL),
('Mechanized Sawblade', 'Melee', 'Flames of the Nether'),
('Moon Daggers', 'Melee', NULL),
('Nameless Blade', 'Melee', NULL),
('Nightmares Bite', 'Melee', NULL),
('Obsidian Claymore', 'Melee', 'Echoing Void'),
('Pickaxe', 'Melee', NULL),
('Resolute Tempest Knife', 'Melee', 'Howling Peaks'),
('Sheer Daggers', 'Melee', NULL),
('Sickles', 'Melee', NULL),
('Soul Knife', 'Melee', NULL),
('Sponge Striker', 'Melee', 'Hidden Depths'),
('Stormlander', 'Melee', NULL),
('Suns Grace', 'Melee', NULL),
('Swift Striker', 'Melee', 'Echoing Void'),
('Sword', 'Melee', NULL),
('Tempest Knife', 'Melee', 'Howling Peaks'),
('The Beginning and The End', 'Melee', 'Echoing Void'),
('The Last Laugh', 'Melee', NULL),
('The Starless Night', 'Melee', 'Echoing Void'),
('Truthseeker', 'Melee', NULL),
('Venom Glave', 'Melee', NULL),
('Vine Whip', 'Melee', 'Jungle Awakens'),
('Void Touched Blades', 'Melee', 'Echoing Void'),
('Whip', 'Melee', 'Jungle Awakens'),
('Gauntlets', 'Melee', NULL),
('Fighters Bindings', 'Melee', NULL),
('Maulers', 'Melee', NULL),
('Soul Fists', 'Melee', NULL),
('Soul Scythe', 'Melee', NULL),
('Frost Scythe', 'Melee', NULL),
('Jailors Scythe', 'Melee', NULL),
('Katana', 'Melee', NULL),
('Dark Katana', 'Melee', NULL),
('Masters Katana', 'Melee', NULL),
('Double Axe', 'Melee', NULL),
('Cursed Axe', 'Melee', NULL),
('Whirlwind', 'Melee', NULL),
('Spear', 'Melee', NULL),
('Fortune Spear', 'Melee', NULL),
('Whispering Spear', 'Melee', NULL),
('Rapier', 'Melee', NULL),
('Bee Stinger', 'Melee', NULL),
('Freezing Foil', 'Melee', NULL),
('Sinister Sword', 'Melee', NULL),
('Frost Slayer', 'Melee', NULL),
('Sparkler', 'Melee', NULL),
('Skull Scythe', 'Melee', NULL),
('Crackling Broom', 'Melee', NULL),
('Bonehead Hammer', 'Melee', NULL),
('Spine-Chill Spear', 'Melee', NULL),

-- Ranged Weapons
('Ancient Bow', 'Ranged', NULL),
('Bonebow', 'Ranged', NULL),
('Bow', 'Ranged', NULL),
('Bubble Bow', 'Ranged', 'Hidden Depths'),
('Bubble Burster', 'Ranged', 'Hidden Depths'),
('Burst Gale Bow', 'Ranged', 'Howling Peaks'),
('Call of the Void', 'Ranged', 'Echoing Void'),
('Echo of the Valley', 'Ranged', 'Howling Peaks'),
('Elite Power Bow', 'Ranged', NULL),
('Guardian Bow', 'Ranged', NULL),
('Hunters Promise', 'Ranged', NULL),
('Hunting Bow', 'Ranged', NULL),
('Longbow', 'Ranged', NULL),
('Love Spell Bow', 'Ranged', NULL),
('Masters Bow', 'Ranged', NULL),
('Mechanical Shortbow', 'Ranged', NULL),
('Power Bow', 'Ranged', NULL),
('Purple Storm', 'Ranged', NULL),
('Red Snake', 'Ranged', NULL),
('Sabrewing', 'Ranged', NULL),
('Shortbow', 'Ranged', NULL),
('Snow Bow', 'Ranged', 'Creeping Winter'),
('The Green Menace', 'Ranged', NULL),
('The Pink Scoundrel', 'Ranged', NULL),
('Trickbow', 'Ranged', NULL),
('Twin Bow', 'Ranged', NULL),
('Twisting Vine Bow', 'Ranged', 'Flames of the Nether'),
('Void Bow', 'Ranged', 'Echoing Void'),
('Weeping Vine Bow', 'Ranged', 'Flames of the Nether'),
('Wind Bow', 'Ranged', 'Howling Peaks'),
('Winters Touch', 'Ranged', 'Creeping Winter'),
('Soul Bow', 'Ranged', NULL),
('Bow of Lost Souls', 'Ranged', NULL),
('Nocturnal Bow', 'Ranged', NULL),
('Haunted Bow', 'Ranged', NULL),
('Shivering Bow', 'Ranged', NULL),
('Sugar Rush', 'Ranged', NULL),
('Phantom Bow', 'Ranged', NULL),
('Web Bow', 'Ranged', NULL),
('Gloopy Bow', 'Ranged', NULL),
('Cog Crossbow', 'Ranged', 'Flames of the Nether'),
('Pride of the Piglins', 'Ranged', 'Flames of the Nether'),
('Crossbow', 'Ranged', NULL),
('Azure Seeker', 'Ranged', NULL),
('The Slicer', 'Ranged', NULL),
('Dual Crossbows', 'Ranged', NULL),
('Baby Crossbows', 'Ranged', NULL),
('Spellbound Crossbows', 'Ranged', NULL),
('Exploding Crossbow', 'Ranged', NULL),
('Firebolt Thrower', 'Ranged', NULL),
('Imploding Crossbow', 'Ranged', NULL),
('Harpoon Crossbow', 'Ranged', 'Hidden Depths'),
('Nautical Crossbow', 'Ranged', 'Hidden Depths'),
('Heavy Crossbow', 'Ranged', NULL),
('Doom Crossbow', 'Ranged', NULL),
('Slayer Crossbow', 'Ranged', NULL),
('Rapid Crossbow', 'Ranged', NULL),
('Auto Crossbow', 'Ranged', NULL),
('Butterfly Crossbow', 'Ranged', NULL),
('Scatter Crossbow', 'Ranged', NULL),
('Harp Crossbow', 'Ranged', NULL),
('Lightning Harp Crossbow', 'Ranged', NULL),
('Shadow Crossbow', 'Ranged', 'Echoing Void'),
('Veiled Crossbow', 'Ranged', 'Echoing Void'),
('Soul Crossbow', 'Ranged', NULL),
('Feral Soul Crossbow', 'Ranged', NULL),
('Voidcaller', 'Ranged', NULL),
('Burst Crossbow', 'Ranged', NULL),
('Corrupted Crossbow', 'Ranged', NULL),
('Soul Hunter Crossbow', 'Ranged', NULL),
('Shrieking Crossbow', 'Ranged', NULL),

-- Armor
('Archers Armor', 'Armor', NULL),
('Black Spot Armor', 'Armor', NULL),
('Black Wolf Armor', 'Armor', NULL),
('Cave Crawler', 'Armor', NULL),
('Climbing Gear', 'Armor', 'Howling Peaks'),
('Ember Robe', 'Armor', NULL),
('Emerald Gear', 'Armor', 'Howling Peaks'),
('Entertainers Garb', 'Armor', 'Echoing Void'),
('Evocation Robe', 'Armor', NULL),
('Fox Armor', 'Armor', NULL),
('Frost Armor', 'Armor', 'Creeping Winter'),
('Gilded Glory', 'Armor', 'Howling Peaks'),
('Goat Gear', 'Armor', 'Howling Peaks'),
('Golden Piglin Armor', 'Armor', 'Flames of the Nether'),
('Grim Armor', 'Armor', NULL),
('Guards Armor', 'Armor', NULL),
('Highland Armor', 'Armor', NULL),
('Hunters Armor', 'Armor', NULL),
('Living Vines Armor', 'Armor', 'Flames of the Nether'),
('Mercenary Armor', 'Armor', NULL),
('Mystery Armor', 'Armor', NULL),
('Nimble Turtle Armor', 'Armor', 'Hidden Depths'),
('Ocelot Armor', 'Armor', 'Jungle Awakens'),
('Opulent Armor', 'Armor', 'Howling Peaks'),
('Piglin Armor', 'Armor', 'Flames of the Nether'),
('Reinforced Mail', 'Armor', NULL),
('Renegade Armor', 'Armor', NULL),
('Root Rot Armor', 'Armor', NULL),
('Rugged Climbing Gear', 'Armor', 'Howling Peaks'),
('Scale Mail', 'Armor', NULL),
('Shadow Walker', 'Armor', 'Jungle Awakens'),
('Shulker Armor', 'Armor', 'Echoing Void'),
('Snow Armor', 'Armor', 'Creeping Winter'),
('Soul Robe', 'Armor', NULL),
('Souldancer Robe', 'Armor', NULL),
('Spelunker Armor', 'Armor', NULL),
('Spider Armor', 'Armor', NULL),
('Sprout Armor', 'Armor', 'Flames of the Nether'),
('Stalwart Armor', 'Armor', NULL),
('Sturdy Shulker Armor', 'Armor', 'Echoing Void'),
('Teleportation Robes', 'Armor', 'Echoing Void'),
('The Troubadour', 'Armor', 'Echoing Void'),
('Thief Armor', 'Armor', NULL),
('Turtle Armor', 'Armor', 'Hidden Depths'),
('Unstable Robes', 'Armor', 'Echoing Void'),
('Verdant Robe', 'Armor', NULL),
('Wither Armor', 'Armor', NULL),
('Wolf Armor', 'Armor', NULL),
('Phantom Armor', 'Armor', NULL),
('Frost Bite', 'Armor', NULL),
('Plate Armor', 'Armor', NULL),
('Full Metal Armor', 'Armor', NULL),
('Squid Armor', 'Armor', 'Hidden Depths'),
('Glow Squid Armor', 'Armor', 'Hidden Depths'),
('Battle Robe', 'Armor', NULL),
('Splendid Robe', 'Armor', NULL),
('Champions Armor', 'Armor', NULL),
('Heros Armor', 'Armor', NULL),
('Dark Armor', 'Armor', NULL),
('Titans Shroud', 'Armor', NULL),
('Ghostly Armor', 'Armor', NULL),
('Ghost Kindler', 'Armor', NULL),
('Beenest Armor', 'Armor', NULL),
('Beehive Armor', 'Armor', NULL),
('Hungry Horror', 'Armor', NULL),
('Arctic Fox Armor', 'Armor', NULL),
('Sweet Tooth', 'Armor', NULL),
('Cauldron Armor', 'Armor', NULL),
('The Spooky Gourdian', 'Armor', NULL),
('Cloaked Skull', 'Armor', NULL),
('Hungriest Horror', 'Armor', NULL),

-- Artifacts
('Corrupted Beacon', 'Artifact', NULL),
('Updraft Tome', 'Artifact', NULL),
('Harvester', 'Artifact', NULL),
('Lightning Rod', 'Artifact', NULL),
('Scatter Mines', 'Artifact', NULL),
('Blast Fungus', 'Artifact', 'Flames of the Nether'),
('Spinblade', 'Artifact', 'Flames of the Nether'),
('Eye of the Guardian', 'Artifact', 'Hidden Depths'),
('Corrupted Pumpkin', 'Artifact', NULL),
('Corrupted Seeds', 'Artifact', NULL),
('Fishing Rod', 'Artifact', NULL),
('Gong of Weakening', 'Artifact', NULL),
('Ice Wand', 'Artifact', 'Creeping Winter'),
('Love Medallion', 'Artifact', NULL),
('Satchel of Elements', 'Artifact', 'Howling Peaks'),
('Shock Powder', 'Artifact', NULL),
('Fireworks Arrow', 'Artifact', NULL),
('Flaming Quiver', 'Artifact', NULL),
('Torment Quiver', 'Artifact', NULL),
('Thundering Quiver', 'Artifact', NULL),
('Harpoon Quiver', 'Artifact', 'Hidden Depths'),
('Void Quiver', 'Artifact', 'Echoing Void'),
('Buzzy Nest', 'Artifact', NULL),
('Enchanted Grass', 'Artifact', NULL),
('Golem Kit', 'Artifact', NULL),
('Soul Lantern', 'Artifact', NULL),
('Tasty Bone', 'Artifact', NULL),
('Vexing Chant', 'Artifact', 'Echoing Void'),
('Wonderful Wheat', 'Artifact', NULL),
('Boots of Swiftness', 'Artifact', NULL),
('Death Cap Mushroom', 'Artifact', NULL),
('Ghost Cloak', 'Artifact', NULL),
('Light Feather', 'Artifact', NULL),
('Enchanters Tome', 'Artifact', 'Howling Peaks'),
('Iron Hide Amulet', 'Artifact', NULL),
('Shadow Shifter', 'Artifact', 'Echoing Void'),
('Soul Healer', 'Artifact', NULL),
('Tome of Duplication', 'Artifact', 'Echoing Void'),
('Totem of Casting', 'Artifact', NULL),
('Totem of Regeneration', 'Artifact', NULL),
('Totem of Shielding', 'Artifact', NULL),
('Satchel of Elixirs', 'Artifact', 'Hidden Depths'),
('Satchel of Snacks', 'Artifact', 'Hidden Depths'),
('Wind Horn', 'Artifact', NULL),
('Powershaker', 'Artifact', 'Flames of the Nether');

INSERT INTO Rune (runeName) VALUES
('Arch'),
('L'),
('T'),
('A'),
('Branch'),
('Shield'),
('Ring'),
('Anchor'),
('Totem');

INSERT INTO Ancient (ancientName, mobType) VALUES
('Abominable Weaver', 'Spider'),
('Ancient Terror', 'Wraith'),
('Barrage', 'Skeleton'),
('Cursed Presence', 'Vanguard'),
('First Enchanter', 'Enchanter'),
('Grim Guardian', 'Zombie'),
('Haunted Caller', 'Nercomancer'),
('Mooshroom Ancient', 'Mooshroom'),
('Oozing menace', 'Slime'),
('Pestilent Conjurer', 'Witch'),
('Solemn Giant', 'Pillager'),
('The Seeking Flame', 'Vex'),
('The Tiny Scourge', 'Baby Zombie'),
('The Tower', 'Chicken Jockey Tower'),
('Unbreakable One', 'Redstone Golem'),
('Vigilant Scoundrel', 'Royal Guard'),
('Thundering Growth', 'Leaper'),
('Frost Warden', 'Geomancer'),
('Windbeard', 'Goat'),
('The Unending', 'Spawner'),
('Unstoppable Tusk', 'Hoglin'),
('Abyssal Eye', 'Guardian'),
('Vengeful Mariner', 'Drowned'),
('Scuttling Torment', 'Silverfish'),
('The Swarm', 'Snareling'),
('Watcher of the End', 'Watchling');

-- Joint tables
INSERT INTO MapItems (mapName, itemName) VALUES
('Creeper Woods', 'Sword'),
('Creeper Woods', 'Spear'),
('Creeper Woods', 'Axe'),
('Creeper Woods', 'Bow'),
('Creeper Woods', 'Soul Bow'),
('Creeper Woods', 'Hunters Armor'),
('Creeper Woods', 'Wolf Armor'),
('Creeper Woods', 'Soul Robe'),
('Creeper Woods', 'Boots of Swiftness'),
('Creeper Woods', 'Death Cap Mushroom'),
('Creeper Woods', 'Tasty Bone'),
('Creeper Woods', 'Torment Quiver'),

('Creepy Crypt', 'Sword'),
('Creepy Crypt', 'Pickaxe'),
('Creepy Crypt', 'Bow'),
('Creepy Crypt', 'Soul Bow'),
('Creepy Crypt', 'Hunters Armor'),
('Creepy Crypt', 'Battle Robe'),
('Creepy Crypt', 'Phantom Armor'),
('Creepy Crypt', 'Boots of Swiftness'),
('Creepy Crypt', 'Ghost Cloak'),
('Creepy Crypt', 'Fishing Rod'),
('Creepy Crypt', 'Tasty Bone'),
('Creepy Crypt', 'Soul Lantern'),

('Pumpkin Pastures', 'Sword'),
('Pumpkin Pastures', 'Sickles'),
('Pumpkin Pastures', 'Soul Scythe'),
('Pumpkin Pastures', 'Longbow'),
('Pumpkin Pastures', 'Scale Mail'),
('Pumpkin Pastures', 'Hunters Armor'),
('Pumpkin Pastures', 'Light Feather'),
('Pumpkin Pastures', 'Wind Horn'),
('Pumpkin Pastures', 'Golem Kit'),
('Pumpkin Pastures', 'Corrupted Beacon'),
('Pumpkin Pastures', 'Flaming Quiver'),

('Arch Haven', 'Sickles'),
('Arch Haven', 'Soul Scythe'),
('Arch Haven', 'Longbow'),
('Arch Haven', 'Soul Crossbow'),
('Arch Haven', 'Guards Armor'),
('Arch Haven', 'Champions Armor'),
('Arch Haven', 'Mercenary Armor'),
('Arch Haven', 'Light Feather'),
('Arch Haven', 'Wind Horn'),
('Arch Haven', 'Wonderful Wheat'),
('Arch Haven', 'Love Medallion'),

('Soggy Swamp', 'Glaive'),
('Soggy Swamp', 'Double Axe'),
('Soggy Swamp', 'Daggers'),
('Soggy Swamp', 'Soul Knife'),
('Soggy Swamp', 'Hunting Bow'),
('Soggy Swamp', 'Scatter Crossbow'),
('Soggy Swamp', 'Evocation Robe'),
('Soggy Swamp', 'Mystery Armor'),
('Soggy Swamp', 'Harvester'),
('Soggy Swamp', 'Fishing Rod'),
('Soggy Swamp', 'Lightning Rod'),
('Soggy Swamp', 'Soul Healer'),
('Soggy Swamp', 'Totem of Regeneration'),

('Soggy Cave', 'Gauntlets'),
('Soggy Cave', 'Double Axe'),
('Soggy Cave', 'Daggers'),
('Soggy Cave', 'Cutlass'),
('Soggy Cave', 'Hunting Bow'),
('Soggy Cave', 'Evocation Robe'),
('Soggy Cave', 'Phantom Armor'),
('Soggy Cave', 'Fishing Rod'),
('Soggy Cave', 'Lightning Rod'),
('Soggy Cave', 'Soul Healer'),
('Soggy Cave', 'Totem of Regeneration'),
('Soggy Cave', 'Buzzy Nest'),

('Redstone Mines', 'Daggers'),
('Redstone Mines', 'Pickaxe'),
('Redstone Mines', 'Rapid Crossbow'),
('Redstone Mines', 'Thief Armor'),
('Redstone Mines', 'Battle Robe'),
('Redstone Mines', 'Wolf Armor'),
('Redstone Mines', 'Phantom Armor'),
('Redstone Mines', 'Spelunker Armor'),
('Redstone Mines', 'Fireworks Arrow'),
('Redstone Mines', 'Harvester'),
('Redstone Mines', 'Tasty Bone'),
('Redstone Mines', 'Corrupted Beacon'),
('Redstone Mines', 'Totem of Casting'),

('Fiery Forge', 'Cutlass'),
('Fiery Forge', 'Great Hammer'),
('Fiery Forge', 'Power Bow'),
('Fiery Forge', 'Exploding Crossbow'),
('Fiery Forge', 'Reinforced Mail'),
('Fiery Forge', 'Scale Mail'),
('Fiery Forge', 'Dark Armor'),
('Fiery Forge', 'Mercenary Armor'),
('Fiery Forge', 'Plate Armor'),
('Fiery Forge', 'Iron Hide Amulet'),
('Fiery Forge', 'Soul Healer'),
('Fiery Forge', 'Totem of Regeneration'),
('Fiery Forge', 'Totem of Casting'),
('Fiery Forge', 'Flaming Quiver'),

('Cacti Canyon', 'Gauntlets'),
('Cacti Canyon', 'Cutlass'),
('Cacti Canyon', 'Trickbow'),
('Cacti Canyon', 'Shortbow'),
('Cacti Canyon', 'Longbow'),
('Cacti Canyon', 'Crossbow'),
('Cacti Canyon', 'Heavy Crossbow'),
('Cacti Canyon', 'Heavy Crossbow'),
('Cacti Canyon', 'Champions Armor'),
('Cacti Canyon', 'Mercenary Armor'),
('Cacti Canyon', 'Spelunker Armor'),
('Cacti Canyon', 'Wind Horn'),
('Cacti Canyon', 'Wonderful Wheat'),
('Cacti Canyon', 'Corrupted Beacon'),
('Cacti Canyon', 'Totem of Shielding'),
('Cacti Canyon', 'Soul Lantern'),

('Desert Temple', 'Sickles'),
('Desert Temple', 'Glaive'),
('Desert Temple', 'Soul Knife'),
('Desert Temple', 'Shortbow'),
('Desert Temple', 'Thief Armor'),
('Desert Temple', 'Grim Armor'),
('Desert Temple', 'Mystery Armor'),
('Desert Temple', 'Gong of Weakening'),
('Desert Temple', 'Boots of Swiftness'),
('Desert Temple', 'Shock Powder'),
('Desert Temple', 'Totem of Shielding'),
('Desert Temple', 'Torment Quiver'),

('Lower Temple', 'Katana'),
('Lower Temple', 'Battlestaff'),
('Lower Temple', 'Trickbow'),
('Lower Temple', 'Dual Crossbows'),
('Lower Temple', 'Reinforced Mail'),
('Lower Temple', 'Grim Armor'),
('Lower Temple', 'Ghost Cloak'),
('Lower Temple', 'Shock Powder'),
('Lower Temple', 'Iron Hide Amulet'),
('Lower Temple', 'Totem of Casting'),
('Lower Temple', 'Torment Quiver'),
('Lower Temple', 'Buzzy Nest'),

('Highblock Halls', 'Mace'),
('Highblock Halls', 'Axe'),
('Highblock Halls', 'Power Bow'),
('Highblock Halls', 'Rapid Crossbow'),
('Highblock Halls', 'Scatter Crossbow'),
('Highblock Halls', 'Guards Armor'),
('Highblock Halls', 'Soul Robe'),
('Highblock Halls', 'Fireworks Arrow'),
('Highblock Halls', 'Light Feather'),
('Highblock Halls', 'Death Cap Mushroom'),
('Highblock Halls', 'Love Medallion'),

('Underhalls', 'Spear'),
('Underhalls', 'Mace'),
('Underhalls', 'Great Hammer'),
('Underhalls', 'Power Bow'),
('Underhalls', 'Exploding Crossbow'),
('Underhalls', 'Dark Armor'),
('Underhalls', 'Soul Robe'),
('Underhalls', 'Fireworks Arrow'),
('Underhalls', 'Iron Hide Amulet'),
('Underhalls', 'Love Medallion'),
('Underhalls', 'Totem of Shielding'),
('Underhalls', 'Soul Lantern'),

('Obsidian Pinnacle', 'Katana'),
('Obsidian Pinnacle', 'Claymore'),
('Obsidian Pinnacle', 'Great Hammer'),
('Obsidian Pinnacle', 'Crossbow'),
('Obsidian Pinnacle', 'Heavy Crossbow'),
('Obsidian Pinnacle', 'Soul Crossbow'),
('Obsidian Pinnacle', 'Evocation Robe'),
('Obsidian Pinnacle', 'Grim Armor'),
('Obsidian Pinnacle', 'Ghost Cloak'),
('Obsidian Pinnacle', 'Shock Powder'),
('Obsidian Pinnacle', 'Wonderful Wheat'),
('Obsidian Pinnacle', 'Lightning Rod'),

('???', 'Claymore'),
('???', 'Mace'),
('???', 'Soul Scythe'),
('???', 'Soul Crossbow'),
('???', 'Exploding Crossbow'),
('???', 'Wolf Armor'),
('???', 'Enchanted Grass'),

('The Stronghold', 'Katana'),
('The Stronghold', 'Gauntlets'),
('The Stronghold', 'Glaive'),
('The Stronghold', 'Double Axe'),
('The Stronghold', 'Mace'),
('The Stronghold', 'Shortbow'),
('The Stronghold', 'Scatter Crossbow'),
('The Stronghold', 'Soul Crossbow'),
('The Stronghold', 'Evocation Robe'),
('The Stronghold', 'Thief Armor'),
('The Stronghold', 'Spelunker Armor'),
('The Stronghold', 'Soul Robe'),
('The Stronghold', 'Mystery Armor'),
('The Stronghold', 'Entertainers Garb'),

('End Wilds', 'Obsidian Claymore'),
('End Wilds', 'Sickles'),
('End Wilds', 'Backstabber'),
('End Wilds', 'Trickbow'),
('End Wilds', 'Hunting Bow'),
('End Wilds', 'Shadow Crossbow'),
('End Wilds', 'Mercenary Armor'),
('End Wilds', 'Shulker Armor'),
('End Wilds', 'Death Cap Mushroom'),
('End Wilds', 'Corrupted Beacon'),
('End Wilds', 'Torment Quiver'),
('End Wilds', 'Shadow Shifter'),
('End Wilds', 'Tome of Duplication'),

('Broken Citadel', 'Spear'),
('Broken Citadel', 'Void Touched Blades'),
('Broken Citadel', 'Cutlass'),
('Broken Citadel', 'Heavy Crossbow'),
('Broken Citadel', 'Exploding Crossbow'),
('Broken Citadel', 'Void Bow'),
('Broken Citadel', 'Reinforced Mail'),
('Broken Citadel', 'Grim Armor'),
('Broken Citadel', 'Teleportation Robes'),
('Broken Citadel', 'Wind Horn'),
('Broken Citadel', 'Boots of Swiftness'),
('Broken Citadel', 'Tasty Bone'),
('Broken Citadel', 'Totem of Shielding'),
('Broken Citadel', 'Void Quiver'),
('Broken Citadel', 'Vexing Chant'),

('Dingy Jungle', 'Double Axe'),
('Dingy Jungle', 'Gauntlets'),
('Dingy Jungle', 'Whip'),
('Dingy Jungle', 'Bow'),
('Dingy Jungle', 'Exploding Crossbow'),
('Dingy Jungle', 'Hunters Armor'),
('Dingy Jungle', 'Mystery Armor'),
('Dingy Jungle', 'Ocelot Armor'),
('Dingy Jungle', 'Buzzy Nest'),
('Dingy Jungle', 'Iron Hide Amulet'),
('Dingy Jungle', 'Tasty Bone'),
('Dingy Jungle', 'Totem of Regeneration'),

('Overgrown Temple', 'Axe'),
('Overgrown Temple', 'Great Hammer'),
('Overgrown Temple', 'Spear'),
('Overgrown Temple', 'Soul Bow'),
('Overgrown Temple', 'Trickbow'),
('Overgrown Temple', 'Mercenary Armor'),
('Overgrown Temple', 'Ocelot Armor'),
('Overgrown Temple', 'Thief Armor'),
('Overgrown Temple', 'Corrupted Seeds'),
('Overgrown Temple', 'Soul Healer'),
('Overgrown Temple', 'Wind Horn'),

('Panda Plateau', 'Glaive'),
('Panda Plateau', 'Katana'),
('Panda Plateau', 'Whip'),
('Panda Plateau', 'Crossbow'),
('Panda Plateau', 'Hunting Bow'),
('Panda Plateau', 'Evocation Robe'),
('Panda Plateau', 'Reinforced Mail'),
('Panda Plateau', 'Corrupted Seeds'),
('Panda Plateau', 'Love Medallion'),
('Panda Plateau', 'Wonderful Wheat'),

('Treetop Tangle', 'Double Axe'),
('Treetop Tangle', 'Glaive'),
('Treetop Tangle', 'Whip'),
('Treetop Tangle', 'Bow'),
('Treetop Tangle', 'Exploding Crossbow'),
('Treetop Tangle', 'Hunters Armor'),
('Treetop Tangle', 'Ocelot Armor'),
('Treetop Tangle', 'Root Rot Armor'),
('Treetop Tangle', 'Buzzy Nest'),
('Treetop Tangle', 'Corrupted Seeds'),
('Treetop Tangle', 'Corrupted Beacon'),
('Treetop Tangle', 'Iron Hide Amulet'),
('Treetop Tangle', 'Totem of Casting'),

('Frosted Fjord', 'Pickaxe'),
('Frosted Fjord', 'Soul Scythe'),
('Frosted Fjord', 'Shortbow'),
('Frosted Fjord', 'Snow Bow'),
('Frosted Fjord', 'Battle Robe'),
('Frosted Fjord', 'Phantom Armor'),
('Frosted Fjord', 'Scale Main'),
('Frosted Fjord', 'Fishing Rod'),
('Frosted Fjord', 'Ice Wand'),
('Frosted Fjord', 'Lightning Rod'),

('Lone Fortress', 'Soul Knife'),
('Lone Fortress', 'Soul Scythe'),
('Lone Fortress', 'Heavy Crossbow'),
('Lone Fortress', 'Rapid Crossbow'),
('Lone Fortress', 'Scatter Crossbow'),
('Lone Fortress', 'Champions Armor'),
('Lone Fortress', 'Plate Armor'),
('Lone Fortress', 'Snow Armor'),
('Lone Fortress', 'Soul Robe'),
('Lone Fortress', 'Ice Wand'),
('Lone Fortress', 'Torment Quiver'),
('Lone Fortress', 'Totem of Shielding'),

('Lost Settlement', 'Cutlass'),
('Lost Settlement', 'Mace'),
('Lost Settlement', 'Sickles'),
('Lost Settlement', 'Snow Bow'),
('Lost Settlement', 'Beenest Armor'),
('Lost Settlement', 'Dark Armor'),
('Lost Settlement', 'Snow Armor'),
('Lost Settlement', 'Spelunker Armor'),
('Lost Settlement', 'Wolf Armor'),
('Lost Settlement', 'Golem Kit'),
('Lost Settlement', 'Light Feather'),
('Lost Settlement', 'Shock Powder'),

('Windswept Peaks', 'Battlestaff'),
('Windswept Peaks', 'Double Axe'),
('Windswept Peaks', 'Tempest Knife'),
('Windswept Peaks', 'Dual Crossbows'),
('Windswept Peaks', 'Longbow'),
('Windswept Peaks', 'Climbing Gear'),
('Windswept Peaks', 'Spelunker Armor'),
('Windswept Peaks', 'Death Cap Mushroom'),
('Windswept Peaks', 'Enchanters Tome'),
('Windswept Peaks', 'Ghost Cloak'),
('Windswept Peaks', 'Updraft Tome'),
('Windswept Peaks', 'Wind Horn'),

('Gauntlet of Gales', 'Claymore'),
('Gauntlet of Gales', 'Daggers'),
('Gauntlet of Gales', 'Soul Bow'),
('Gauntlet of Gales', 'Hunters Armor'),
('Gauntlet of Gales', 'Plate Armor'),
('Gauntlet of Gales', 'Scale Mail'),
('Gauntlet of Gales', 'Enchanters Tome'),
('Gauntlet of Gales', 'Scatter Mines'),
('Gauntlet of Gales', 'Satchel of Elements'),
('Gauntlet of Gales', 'Updraft Tome'),

('Gale Sanctum', 'Claymore'),
('Gale Sanctum', 'Tempest Knife'),
('Gale Sanctum', 'Bow'),
('Gale Sanctum', 'Shortbow'),
('Gale Sanctum', 'Wind Bow'),
('Gale Sanctum', 'Emerald Gear'),
('Gale Sanctum', 'Mystery Armor'),
('Gale Sanctum', 'Phantom Armor'),
('Gale Sanctum', 'Plate Armor'),
('Gale Sanctum', 'Corrupted Beacon'),
('Gale Sanctum', 'Harvester'),
('Gale Sanctum', 'Satchel of Elements'),

('Colossal Rampart', 'Axe'),
('Colossal Rampart', 'Battlestaff'),
('Colossal Rampart', 'Spear'),
('Colossal Rampart', 'Tempest Knife'),
('Colossal Rampart', 'Exploding Crossbow'),
('Colossal Rampart', 'Wind Bow'),
('Colossal Rampart', 'Battle Robe'),
('Colossal Rampart', 'Climbing Gear'),
('Colossal Rampart', 'Emerald Gear'),
('Colossal Rampart', 'Guards Armor'),
('Colossal Rampart', 'Buzzy Nest'),
('Colossal Rampart', 'Fireworks Arrow'),
('Colossal Rampart', 'Scatter Mines'),

('Coral Rise', 'Coral Blade'),
('Coral Rise', 'Gauntlets'),
('Coral Rise', 'Katana'),
('Coral Rise', 'Bubble Bow'),
('Coral Rise', 'Rapid Crossbow'),
('Coral Rise', 'Guards Armor'),
('Coral Rise', 'Turtle Armor'),
('Coral Rise', 'Eye of the Guardian'),
('Coral Rise', 'Harpoon Quiver'),
('Coral Rise', 'Iron Hide Amulet'),
('Coral Rise', 'Satchel of Elixirs'),

('Abyssal Monument', 'Anchor'),
('Abyssal Monument', 'Great Hammer'),
('Abyssal Monument', 'Soul Scythe'),
('Abyssal Monument', 'Bubble Bow'),
('Abyssal Monument', 'Dual Crossbows'),
('Abyssal Monument', 'Harpoon Crossbow'),
('Abyssal Monument', 'Battle Robe'),
('Abyssal Monument', 'Squid Armor'),
('Abyssal Monument', 'Eye of the Guardian'),
('Abyssal Monument', 'Gong of Weakening'),
('Abyssal Monument', 'Harpoon Quiver'),
('Abyssal Monument', 'Satchel of Snacks'),

('Radiant Ravine', 'Anchor'),
('Radiant Ravine', 'Coral Blade'),
('Radiant Ravine', 'Pickaxe'),
('Radiant Ravine', 'Crossbow'),
('Radiant Ravine', 'Harpoon Crossbow'),
('Radiant Ravine', 'Power Bow'),
('Radiant Ravine', 'Squid Armor'),
('Radiant Ravine', 'Thief Armor'),
('Radiant Ravine', 'Turtle Armor'),
('Radiant Ravine', 'Enchanted Grass'),
('Radiant Ravine', 'Satchel of Elixirs'),
('Radiant Ravine', 'Satchel of Snacks'),

('Nether Wastes', 'Battlestaff'),
('Nether Wastes', 'Sword'),
('Nether Wastes', 'Trickbow'),
('Nether Wastes', 'Twisting Vine Bow'),
('Nether Wastes', 'Piglin Armor'),
('Nether Wastes', 'Buzzy Nest'),
('Nether Wastes', 'Spinblade'),
('Nether Wastes', 'Thundering Quiver'),
('Nether Wastes', 'Wind Horn'),

('Warped Forest', 'Boneclub'),
('Warped Forest', 'Sickles'),
('Warped Forest', 'Soul Knife'),
('Warped Forest', 'Twisting Vine Bow'),
('Warped Forest', 'Soul Robe'),
('Warped Forest', 'Blast Fungus'),
('Warped Forest', 'Death Cap Mushroom'),
('Warped Forest', 'Powershaker'),
('Warped Forest', 'Shock Powder'),

('Crimson Forest', 'Broken Sawblade'),
('Crimson Forest', 'Cutlass'),
('Crimson Forest', 'Heavy Crossbow'),
('Crimson Forest', 'Evocation Robe'),
('Crimson Forest', 'Sprout Robe'),
('Crimson Forest', 'Blast Fungus'),
('Crimson Forest', 'Soul Healer'),
('Crimson Forest', 'Totem of Shielding'),

('Soul Sand Valley', 'Boneclub'),
('Soul Sand Valley', 'Scatter Crossbow'),
('Soul Sand Valley', 'Grim Armor'),
('Soul Sand Valley', 'Sprout Armor'),
('Soul Sand Valley', 'Thief Armor'),
('Soul Sand Valley', 'Boots of Swiftness'),
('Soul Sand Valley', 'Harvester'),
('Soul Sand Valley', 'Soul Lantern'),
('Soul Sand Valley', 'Thundering Quiver'),

('Basalt Deltas', 'Glaive'),
('Basalt Deltas', 'Katana'),
('Basalt Deltas', 'Cog Crossbow'),
('Basalt Deltas', 'Trickbow'),
('Basalt Deltas', 'Piglin Armor'),
('Basalt Deltas', 'Scale Mail'),
('Basalt Deltas', 'Spinblade'),
('Basalt Deltas', 'Totem of Regeneration'),
('Basalt Deltas', 'Wonderful Wheat'),

('Nether Fortress', 'Broken Sawblade'),
('Nether Fortress', 'Mace'),
('Nether Fortress', 'Cog Crossbow'),
('Nether Fortress', 'Power Bow'),
('Nether Fortress', 'Reinforced Mail'),
('Nether Fortress', 'Flaming Quiver'),
('Nether Fortress', 'Ghost Cloak'),
('Nether Fortress', 'Lightning Rod'),
('Nether Fortress', 'Powershaker');

-- TODO
INSERT INTO ItemRune (itemName, runeName, runeQuantity) VALUES
-- Melee Weapons
('Anchor', 'Anchor', 1),

('Axe', 'T', 1),

('Backstabber', 'L', 1),

('Battlestaff', 'T', 1),

('Battlestaff of Terror', 'T', 1),
('Battlestaff of Terror', 'Arch', 1),

('Bone Cudgel', 'T', 1),

('Boneclub', 'T', 1),

('Broadsword', 'T', 1),
('Broadsword', 'Anchor', 1),

('Broken Sawblade', 'Anchor', 1),

('Chill Gale Knife', 'L', 1),
('Chill Gale Knife', 'Ring', 1),

('Claymore', 'Anchor', 1),

('Coral Blade', 'T', 1),

('Cutlass', 'T', 1),

('Daggers', 'T', 1),

('Dancers Sword', 'L', 1),
('Dancers Sword', 'T', 1),

('Diamond Pickaxe', 'Arch', 1),
('Diamond Pickaxe', 'T', 1),

('Diamond Sword', 'T', 1),

('Encrusted Anchor', 'Ring', 1),
('Encrusted Anchor', 'Anchor', 1),

('Eternal Knife', 'A', 1),

('Fangs of Frost', 'T', 1),
('Fangs of Frost', 'Ring', 1),

('Firebrand', 'Arch', 1),
('Firebrand', 'T', 1),

('Flail', 'Arch', 1),
('Flail', 'T', 1),

('Glaive', 'Ring', 1),

('Grave Bane', 'T', 1),
('Grave Bane', 'Ring', 1),

('Great Axeblade', 'L', 1),
('Great Axeblade', 'Anchor', 1),

('Great Hammer', 'Anchor', 1),

('Growing Staff', 'T', 1),

('Hammer of Gravity', 'Arch', 1),
('Hammer of Gravity', 'Anchor', 1),

('Hawkbrand', 'T', 1),

('Heartstealer', 'T', 1),
('Heartstealer', 'Anchor', 1),

('Highland Axe', 'T', 1),
('Highland Axe', 'Ring', 1),

('Mace', 'T', 1),

('Mechanized Sawblade', 'L', 1),
('Mechanized Sawblade', 'Anchor', 1),

('Moon Daggers', 'T', 1),
('Moon Daggers', 'A', 1),

('Nameless Blade', 'T', 1),
('Nameless Blade', 'Ring', 1),

('Nightmares Bite', 'T', 1),

('Obsidian Claymore', 'Anchor', 1),

('Pickaxe', 'T', 1),

('Resolute Tempest Knife', 'L', 1),
('Resolute Tempest Knife', 'T', 1),

('Sheer Daggers', 'T', 1),

('Sickles', 'T', 1),

('Soul Knife', 'A', 1),

('Sponge Striker', 'Arch', 1),
('Sponge Striker', 'T', 1),

('Stormlander', 'Arch', 1),
('Stormlander', 'Anchor', 1),

('Suns Grace', 'T', 1),
('Suns Grace', 'Ring', 1),

('Swift Striker', 'L', 1),
('Swift Striker', 'T', 1),

('Sword', 'T', 1),

('Tempest Knife', 'L', 1),

('The Beginning and The End', 'Arch', 1),
('The Beginning and The End', 'Ring', 1),

('The Last Laugh', 'Arch', 1),
('The Last Laugh', 'T', 1),

('The Starless Night', 'Anchor', 1),
('The Starless Night', 'T', 1),

('Truthseeker', 'A', 1),
('Truthseeker', 'T', 1),

('Venom Glave', 'Arch', 1),
('Venom Glave', 'Ring', 1),

('Vine Whip', 'T', 1),
('Vine Whip', 'Ring', 1),

('Void Touched Blades', 'Ring', 1),

('Whip', 'Ring', 1),

('Gauntlets', 'T', 1),

('Fighters Bindings', 'L', 1),
('Fighters Bindings', 'T', 1),

('Maulers', 'L', 1),
('Maulers', 'T', 1),

('Soul Fists', 'T', 1),
('Soul Fists', 'A', 1),

('Soul Scythe', 'A', 1),

('Frost Scythe', 'A', 1),
('Frost Scythe', 'Ring', 1),

('Jailors Scythe', 'A', 1),
('Jailors Scythe', 'Arch', 1),

('Katana', 'T', 1),

('Dark Katana', 'Arch', 1),
('Dark Katana', 'T', 1),

('Masters Katana', 'T', 1),

('Double Axe', 'T', 1),
('Double Axe', 'Anchor', 1),

('Cursed Axe', 'Arch', 1),
('Cursed Axe', 'T', 1),
('Cursed Axe', 'Anchor', 1),

('Whirlwind', 'Arch', 1),
('Whirlwind', 'T', 1),
('Whirlwind', 'Anchor', 1),

('Spear', 'Ring', 1),

('Fortune Spear', 'Ring', 1),

('Whispering Spear', 'T', 1),
('Whispering Spear', 'Ring', 1),

('Rapier', 'T', 1),
('Rapier', 'Branch', 1),

('Bee Stinger', 'T', 1),
('Bee Stinger', 'Branch', 1),
('Bee Stinger', 'Totem', 1),

('Freezing Foil', 'T', 1),
('Freezing Foil', 'Branch', 1),
('Freezing Foil', 'Ring', 1),

('Sinister Sword', 'T', 1),

('Frost Slayer', 'T', 1),
('Frost Slayer', 'Anchor', 1),

('Sparkler', 'L', 1),
('Sparkler', 'T', 1),

('Skull Scythe', 'A', 1),
('Skull Scythe', 'Ring', 1),

('Crackling Broom', 'T', 1),
('Crackling Broom', 'Ring', 1),

('Bonehead Hammer', 'Arch', 1),
('Bonehead Hammer', 'Anchor', 1),

('Spine-Chill Spear', 'Ring', 1),

-- Ranged Weapons
('Ancient Bow', 'Ranged', 1),

('Bonebow', 'Ranged', 1),

('Bow', 'Ranged', 1),

('Bubble Bow', 'Ranged', 1),

('Bubble Burster', 'Ranged', 1),

('Burst Gale Bow', 'Ranged', 1),

('Call of the Void', 'Ranged', 1),

('Echo of the Valley', 'Ranged', 1),

('Elite Power Bow', 'Ranged', 1),

('Guardian Bow', 'Ranged', 1),

('Hunters Promise', 'Ranged', 1),

('Hunting Bow', 'Ranged', 1),

('Longbow', 'Ranged', 1),

('Love Spell Bow', 'Ranged', 1),

('Masters Bow', 'Ranged', 1),

('Mechanical Shortbow', 'Ranged', 1),

('Power Bow', 'Ranged', 1),

('Purple Storm', 'Ranged', 1),

('Red Snake', 'Ranged', 1),

('Sabrewing', 'Ranged', 1),

('Shortbow', 'Ranged', 1),

('Snow Bow', 'Ranged', 1),

('The Green Menace', 'Ranged', 1),

('The Pink Scoundrel', 'Ranged', 1),

('Trickbow', 'Ranged', 1),

('Twin Bow', 'Ranged', 1),

('Twisting Vine Bow', 'Ranged', 1),

('Void Bow', 'Ranged', 1),

('Weeping Vine Bow', 'Ranged', 1),

('Wind Bow', 'Ranged', 1),

('Winters Touch', 'Ranged', 1),

('Soul Bow', 'Ranged', 1),

('Bow of Lost Souls', 'Ranged', 1),

('Nocturnal Bow', 'Ranged', 1),

('Haunted Bow', 'Ranged', 1),

('Shivering Bow', 'Ranged', 1),

('Sugar Rush', 'Ranged', 1),

('Phantom Bow', 'Ranged', 1),

('Web Bow', 'Ranged', 1),

('Gloopy Bow', 'Ranged', 1),

('Cog Crossbow', 'Ranged', 1),

('Pride of the Piglins', 'Ranged', 1),

('Crossbow', 'Ranged', 1),

('Azure Seeker', 'Ranged', 1),

('The Slicer', 'Ranged', 1),

('Dual Crossbows', 'Ranged', 1),

('Baby Crossbows', 'Ranged', 1),

('Spellbound Crossbows', 'Ranged', 1),

('Exploding Crossbow', 'Ranged', 1),

('Firebolt Thrower', 'Ranged', 1),

('Imploding Crossbow', 'Ranged', 1),

('Harpoon Crossbow', 'Ranged', 1),

('Nautical Crossbow', 'Ranged', 1),

('Heavy Crossbow', 'Ranged', 1),

('Doom Crossbow', 'Ranged', 1),

('Slayer Crossbow', 'Ranged', 1),

('Rapid Crossbow', 'Ranged', 1),

('Auto Crossbow', 'Ranged', 1),

('Butterfly Crossbow', 'Ranged', 1),

('Scatter Crossbow', 'Ranged', 1),

('Harp Crossbow', 'Ranged', 1),

('Lightning Harp Crossbow', 'Ranged', 1),

('Shadow Crossbow', 'Ranged', 1),

('Veiled Crossbow', 'Ranged', 1),

('Soul Crossbow', 'Ranged', 1),

('Feral Soul Crossbow', 'Ranged', 1),

('Voidcaller', 'Ranged', 1),

('Burst Crossbow', 'Ranged', 1),

('Corrupted Crossbow', 'Ranged', 1),

('Soul Hunter Crossbow', 'Ranged', 1),

('Shrieking Crossbow', 'Ranged', 1),

-- Armor
('Archers Armor', 'Armor', 1),

('Black Spot Armor', 'Armor', 1),

('Black Wolf Armor', 'Armor', 1),

('Cave Crawler', 'Armor', 1),

('Climbing Gear', 'Armor', 1),

('Ember Robe', 'Armor', 1),

('Emerald Gear', 'Armor', 1),

('Entertainers Garb', 'Armor', 1),

('Evocation Robe', 'Armor', 1),

('Fox Armor', 'Armor', 1),

('Frost Armor', 'Armor', 1),

('Gilded Glory', 'Armor', 1),

('Goat Gear', 'Armor', 1),

('Golden Piglin Armor', 'Armor', 1),

('Grim Armor', 'Armor', 1),

('Guards Armor', 'Armor', 1),

('Highland Armor', 'Armor', 1),

('Hunters Armor', 'Armor', 1),

('Living Vines Armor', 'Armor', 1),

('Mercenary Armor', 'Armor', 1),

('Mystery Armor', 'Armor', 1),

('Nimble Turtle Armor', 'Armor', 1),

('Ocelot Armor', 'Armor', 1),

('Opulent Armor', 'Armor', 1),

('Piglin Armor', 'Armor', 1),

('Reinforced Mail', 'Armor', 1),

('Renegade Armor', 'Armor', 1),

('Root Rot Armor', 'Armor', 1),

('Rugged Climbing Gear', 'Armor', 1),

('Scale Mail', 'Armor', 1),

('Shadow Walker', 'Armor', 1),

('Shulker Armor', 'Armor', 1),

('Snow Armor', 'Armor', 1),

('Soul Robe', 'Armor', 1),

('Souldancer Robe', 'Armor', 1),

('Spelunker Armor', 'Armor', 1),

('Spider Armor', 'Armor', 1),

('Sprout Armor', 'Armor', 1),

('Stalwart Armor', 'Armor', 1),

('Sturdy Shulker Armor', 'Armor', 1),

('Teleportation Robes', 'Armor', 1),

('The Troubadour', 'Armor', 1),

('Thief Armor', 'Armor', 1),

('Turtle Armor', 'Armor', 1),

('Unstable Robes', 'Armor', 1),

('Verdant Robe', 'Armor', 1),

('Wither Armor', 'Armor', 1),

('Wolf Armor', 'Armor', 1),

('Phantom Armor', 'Armor', 1),

('Frost Bite', 'Armor', 1),

('Plate Armor', 'Armor', 1),

('Full Metal Armor', 'Armor', 1),

('Squid Armor', 'Armor', 1),

('Glow Squid Armor', 'Armor', 1),

('Battle Robe', 'Armor', 1),

('Splendid Robe', 'Armor', 1),

('Champions Armor', 'Armor', 1),

('Heros Armor', 'Armor', 1),

('Dark Armor', 'Armor', 1),

('Titans Shroud', 'Armor', 1),

('Ghostly Armor', 'Armor', 1),

('Ghost Kindler', 'Armor', 1),

('Beenest Armor', 'Armor', 1),

('Beehive Armor', 'Armor', 1),

('Hungry Horror', 'Armor', 1),

('Arctic Fox Armor', 'Armor', 1),

('Sweet Tooth', 'Armor', 1),

('Cauldron Armor', 'Armor', 1),

('The Spooky Gourdian', 'Armor', 1),

('Cloaked Skull', 'Armor', 1),

('Hungriest Horror', 'Armor', 1),

-- Artifacts
('Corrupted Beacon', 'A', 1),

('Updraft Tome', 'Arch', 1),

('Harvester', 'A', 1),

('Lightning Rod', 'A', 1),

('Scatter Mines', 'T', 1),

('Blast Fungus', 'T', 1),

('Spinblade', 'T', 1),

('Eye of the Guardian', 'Arch', 1),

('Corrupted Pumpkin', 'A', 1),

('Corrupted Seeds', 'Arch', 1),

('Fishing Rod', 'T', 1),

('Gong of Weakening', 'Ring', 1),

('Ice Wand', 'Arch', 1),

('Love Medallion', 'Arch', 1),

('Satchel of Elements', 'Arch', 1),

('Shock Powder', 'Ring', 1),
('Shock Powder', 'Anchor', 1),

('Fireworks Arrow', 'Shield', 1),

('Flaming Quiver', 'Shield', 1),

('Torment Quiver', 'Shield', 1),
('Torment Quiver', 'A', 1),

('Thundering Quiver', 'Shield', 1),

('Harpoon Quiver', 'Shield', 1),

('Void Quiver', 'Shield', 1),

('Buzzy Nest', 'Totem', 1),

('Enchanted Grass', 'Totem', 1),
('Enchanted Grass', 'Arch', 1),

('Golem Kit', 'Totem', 1),

('Soul Lantern', 'Totem', 1),
('Soul Lantern', 'A', 1),

('Tasty Bone', 'Totem', 1),

('Vexing Chant', 'Totem', 1),

('Wonderful Wheat', 'Totem', 1),

('Boots of Swiftness', 'L', 1),

('Death Cap Mushroom', 'T', 1),

('Ghost Cloak', 'L', 1),
('Ghost Cloak', 'Anchor', 1),

('Light Feather', 'L', 1),

('Enchanters Tome', 'Arch', 1),

('Iron Hide Amulet', 'Anchor', 1),

('Shadow Shifter', 'A', 1),

('Soul Healer', 'A', 1),
('Soul Healer', 'Ring', 1),

('Tome of Duplication', 'Ring', 1),

('Totem of Casting', 'A', 1),

('Totem of Regeneration', 'Ring', 1),

('Totem of Shielding', 'Ring', 1),
('Totem of Shielding', 'Anchor', 1),

('Satchel of Elixirs', 'Ring', 1),

('Satchel of Snacks', 'Ring', 1),

('Wind Horn', 'Totem', 1),
('Wind Horn', 'Ring', 1),

('Powershaker', 'T', 1);

INSERT INTO AncientRune (ancientName, runeName, runeQuantity) VALUES
('Abominable Weaver', 'Arch', 1),
('Abominable Weaver', 'Ring', 1),
('Abominable Weaver', 'Anchor', 1),

('Ancient Terror', 'Arch', 1),
('Ancient Terror', 'A', 1),
('Ancient Terror', 'Ring', 1),
('Ancient Terror', 'Totem', 1),

('Barrage', 'A', 1),
('Barrage', 'Shield', 2),

('Cursed Presence', 'L', 1),
('Cursed Presence', 'T', 1),
('Cursed Presence', 'A', 1),

('First Enchanter', 'A', 1),
('First Enchanter', 'Ring', 2),

('Grim Guardian', 'Arch', 1),
('Grim Guardian', 'T', 2),

('Haunted Caller', 'Arch', 1),
('Haunted Caller', 'Shield', 2),

('Mooshroom Ancient', 'Arch', 1),
('Mooshroom Ancient', 'L', 1),
('Mooshroom Ancient', 'T', 1),
('Mooshroom Ancient', 'Branch', 1),

('Oozing menace', 'L', 1),
('Oozing menace', 'Shield', 1),
('Oozing menace', 'Totem', 1),

('Pestilent Conjurer', 'L', 1),
('Pestilent Conjurer', 'T', 1),
('Pestilent Conjurer', 'Shield', 1),

('Solemn Giant', 'Branch', 1),
('Solemn Giant', 'Shield', 1),
('Solemn Giant', 'Anchor', 1),
('Solemn Giant', 'Ring', 1),

('The Seeking Flame', 'A', 2),

('The Tiny Scourge', 'L', 2),
('The Tiny Scourge', 'A', 1),
('The Tiny Scourge', 'Anchor', 1),

('The Tower', 'A', 1),
('The Tower', 'Branch', 1),
('The Tower', 'Totem', 2),

('Unbreakable One', 'T', 1),
('Unbreakable One', 'Anchor', 2),

('Vigilant Scoundrel', 'T', 2),
('Vigilant Scoundrel', 'Shield', 1),
('Vigilant Scoundrel', 'Anchor', 1),

('Thundering Growth', 'L', 2),
('Thundering Growth', 'Totem', 1),

('Frost Warden', 'Shield', 1),
('Frost Warden', 'Ring', 1),
('Frost Warden', 'Totem', 1),

('Windbeard', 'Arch', 2),
('Windbeard', 'Totem', 1),

('The Unending', 'Anchor', 1),
('The Unending', 'Totem', 2),

('Unstoppable Tusk', 'Arch', 1),
('Unstoppable Tusk', 'T', 1),
('Unstoppable Tusk', 'Shield', 1),

('Abyssal Eye', 'L', 1),
('Abyssal Eye', 'T', 1),
('Abyssal Eye', 'Anchor', 1),

('Vengeful Mariner', 'Ring', 2),
('Vengeful Mariner', 'Anchor', 1),

('Scuttling Torment', 'Arch', 2),
('Scuttling Torment', 'L', 1),
('Scuttling Torment', 'T', 1),

('The Swarm', 'L', 2),
('The Swarm', 'Shield', 1),
('The Swarm', 'Ring', 1),

('Watcher of the End', 'Arch', 1),
('Watcher of the End', 'L', 1),
('Watcher of the End', 'Anchor', 1);

INSERT INTO AncientLoot (ancientName, itemName) VALUES
('Abominable Weaver', 'Double Axe'),
('Abominable Weaver', 'Wolf Armor'),
('Abominable Weaver', 'Battle Robe'),
('Abominable Weaver', 'Trickbow'),

('Ancient Terror', 'Exploding Crossbow'),
('Ancient Terror', 'Mystery Armor'),
('Ancient Terror', 'Champions Armor'),

('Barrage', 'Bow'),
('Barrage', 'Soul Bow'),
('Barrage', 'Hunters Armor'),

('Cursed Presence', 'Phantom Armor'),
('Cursed Presence', 'Soul Crossbow'),
('Cursed Presence', 'Cutlass'),

('First Enchanter', 'Scale Mail'),
('First Enchanter', 'Claymore'),
('First Enchanter', 'Soul Scythe'),

('Grim Guardian', 'Sword'),
('Grim Guardian', 'Grim Armor'),
('Grim Guardian', 'Dark Armor'),

('Haunted Caller', 'Longbow'),
('Haunted Caller', 'Rapid Crossbow'),
('Haunted Caller', 'Sickles'),
('Haunted Caller', 'Spelunker Armor'),

('Mooshroom Ancient', 'Katana'),
('Mooshroom Ancient', 'Ghostly Armor'),
('Mooshroom Ancient', 'Dual Crossbows'),
('Mooshroom Ancient', 'Gauntlets'),

('Oozing menace', 'Battlestaff'),
('Oozing menace', 'Shortbow'),
('Oozing menace', 'Mercenary Armor'),

('Pestilent Conjurer', 'Spear'),
('Pestilent Conjurer', 'Glaive'),
('Pestilent Conjurer', 'Heavy Crossbow'),
('Pestilent Conjurer', 'Scatter Crossbow'),

('Solemn Giant', 'Burst Crossbow'),
('Solemn Giant', 'Rapier'),
('Solemn Giant', 'Guards Armor'),

('The Seeking Flame', 'Axe'),
('The Seeking Flame', 'Soul Knife'),
('The Seeking Flame', 'Evocation Robe'),

('The Tiny Scourge', 'Daggers'),
('The Tiny Scourge', 'Soul Robe'),
('The Tiny Scourge', 'Thief Armor'),

('The Tower', 'Hunting Bow'),
('The Tower', 'Beenest Armor'),
('The Tower', 'Pickaxe'),

('Unbreakable One', 'Great Hammer'),
('Unbreakable One', 'Claymore'),
('Unbreakable One', 'Power Bow'),
('Unbreakable One', 'Full Metal Armor'),

('Vigilant Scoundrel', 'Crossbow'),
('Vigilant Scoundrel', 'Mace'),
('Vigilant Scoundrel', 'Reinforced Mail'),

('Thundering Growth', 'Ocelot Armor'),
('Thundering Growth', 'Whip'),
('Thundering Growth', 'Root Rot Armor'),

('Frost Warden', 'Snow Armor'),
('Frost Warden', 'Snow Bow'),

('Windbeard', 'Tempest Knife'),
('Windbeard', 'Wind Bow'),
('Windbeard', 'Climbing Gear'),
('Windbeard', 'Emerald Gear'),

('The Unending', 'Twisting Vine Bow'),
('The Unending', 'Boneclub'),
('The Unending', 'Piglin Armor'),

('Unstoppable Tusk', 'Broken Sawblade'),
('Unstoppable Tusk', 'Cog Crossbow'),
('Unstoppable Tusk', 'Sprout Armor'),

('Abyssal Eye', 'Squid Armor'),
('Abyssal Eye', 'Coral Blade'),
('Abyssal Eye', 'Harpoon Crossbow'),

('Vengeful Mariner', 'Anchor'),
('Vengeful Mariner', 'Turtle Armor'),
('Vengeful Mariner', 'Bubble Bow'),

('Scuttling Torment', 'Void Bow'),
('Scuttling Torment', 'Obsidian Claymore'),
('Scuttling Torment', 'Teleportation Robes'),

('The Swarm', 'Backstabber'),
('The Swarm', 'Shulker Armor'),
('The Swarm', 'Shadow Crossbow'),

('Watcher of the End', 'Void Touched Blades'),
('Watcher of the End', 'Entertainers Garb'),
('Watcher of the End', 'Shadow Crossbow');