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
('Treetop Tangle', NULL),
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

INSERT INTO Items (itemName, itemType, isUnique, dlc) VALUES

-- Melee Weapons
('Anchor', 'Melee', 0, 'Hidden Depths'),
('Axe', 'Melee', 0, NULL),
('Backstabber', 'Melee', 0, 'Echoing Void'),
('Battlestaff', 'Melee', 0, NULL),
('Battlestaff of Terror', 'Melee', 1, NULL),
('Bone Cudgel', 'Melee', 1, 'Flames of the Nether'),
('Boneclub', 'Melee', 0, 'Flames of the Nether'),
('Broadsword', 'Melee', 1, NULL),
('Broken Sawblade', 'Melee', 0, 'Flames of the Nether'),
('Chill Gale Knife', 'Melee', 1, 'Howling Peaks'),
('Claymore', 'Melee', 0, NULL),
('Coral Blade', 'Melee', 0, 'Hidden Depths'),
('Cutlass', 'Melee', 0, NULL),
('Daggers', 'Melee', 0, NULL),
('Dancers Sword', 'Melee', 1, NULL),
('Diamond Pickaxe', 'Melee', 1, NULL),
('Diamond Sword', 'Melee', 1, NULL),
('Encrusted Anchor', 'Melee', 1, 'Hidden Depths'),
('Eternal Knife', 'Melee', 1, NULL),
('Fangs of Frost', 'Melee', 1, NULL),
('Firebrand', 'Melee', 1, NULL),
('Flail', 'Melee', 1, NULL),
('Glaive', 'Melee', 0, NULL),
('Grave Bane', 'Melee', 1, NULL),
('Great Axeblade', 'Melee', 1, NULL),
('Great Hammer', 'Melee', 0, NULL),
('Growing Staff', 'Melee', 1, NULL),
('Hammer of Gravity', 'Melee', 1, NULL),
('Hawkbrand', 'Melee', 1, NULL),
('Heartstealer', 'Melee', 1, NULL),
('Highland Axe', 'Melee', 1, NULL),
('Mace', 'Melee', 0, NULL),
('Mechanized Sawblade', 'Melee', 1, 'Flames of the Nether'),
('Moon Daggers', 'Melee', 1, NULL),
('Nameless Blade', 'Melee', 1, NULL),
('Nightmares Bite', 'Melee', 1, NULL),
('Obsidian Claymore', 'Melee', 1, 'Echoing Void'),
('Pickaxe', 'Melee', 0, NULL),
('Resolute Tempest Knife', 'Melee', 1, 'Howling Peaks'),
('Sheer Daggers', 'Melee', 1, NULL),
('Sickles', 'Melee', 0, NULL),
('Soul Knife', 'Melee', 0, NULL),
('Sponge Striker', 'Melee', 1, 'Hidden Depths'),
('Stormlander', 'Melee', 1, NULL),
('Suns Grace', 'Melee', 1, NULL),
('Swift Striker', 'Melee', 1, 'Echoing Void'),
('Sword', 'Melee', 0, NULL),
('Tempest Knife', 'Melee', 0, 'Howling Peaks'),
('The Beginning and The End', 'Melee', 1, 'Echoing Void'),
('The Last Laugh', 'Melee', 1, NULL),
('The Starless Night', 'Melee', 1, 'Echoing Void'),
('Truthseeker', 'Melee', 1, NULL),
('Venom Glave', 'Melee', 1, NULL),
('Vine Whip', 'Melee', 1, 'Jungle Awakens'),
('Void Touched Blades', 'Melee', 0, 'Echoing Void'),
('Whip', 'Melee', 0, 'Jungle Awakens'),
('Gauntlets', 'Melee', 0, NULL),
('Fighters Bindings', 'Melee', 1, NULL),
('Maulers', 'Melee', 1, NULL),
('Soul Fists', 'Melee', 1, NULL),
('Soul Scythe', 'Melee', 0, NULL),
('Frost Scythe', 'Melee', 1, NULL),
('Jailors Scythe', 'Melee', 1, NULL),
('Katana', 'Melee', 0, NULL),
('Dark Katana', 'Melee', 1, NULL),
('Masters Katana', 'Melee', 1, NULL),
('Double Axe', 'Melee', 0, NULL),
('Cursed Axe', 'Melee', 1, NULL),
('Whirlwind', 'Melee', 1, NULL),
('Spear', 'Melee', 0, NULL),
('Fortune Spear', 'Melee', 1, NULL),
('Whispering Spear', 'Melee', 1, NULL),
('Rapier', 'Melee', 0, NULL),
('Bee Stinger', 'Melee', 1, NULL),
('Freezing Foil', 'Melee', 1, NULL),
('Sinister Sword', 'Melee', 1, NULL),
('Frost Slayer', 'Melee', 1, NULL),
('Sparkler', 'Melee', 1, NULL),
('Skull Scythe', 'Melee', 1, NULL),
('Crackling Broom', 'Melee', 1, NULL),
('Bonehead Hammer', 'Melee', 1, NULL),
('Spine-Chill Spear', 'Melee', 1, NULL),

-- Ranged Weapons
('Ancient Bow', 'Ranged', 1, NULL),
('Bonebow', 'Ranged', 1, NULL),
('Bow', 'Ranged', 0, NULL),
('Bubble Bow', 'Ranged', 0, 'Hidden Depths'),
('Bubble Burster', 'Ranged', 0, 'Hidden Depths'),
('Burst Gale Bow', 'Ranged', 1, 'Howling Peaks'),
('Call of the Void', 'Ranged', 1, 'Echoing Void'),
('Echo of the Valley', 'Ranged', 1, 'Howling Peaks'),
('Elite Power Bow', 'Ranged', 1, NULL),
('Guardian Bow', 'Ranged', 1, NULL),
('Hunters Promise', 'Ranged', 1, NULL),
('Hunting Bow', 'Ranged', 0, NULL),
('Longbow', 'Ranged', 0, NULL),
('Love Spell Bow', 'Ranged', 1, NULL),
('Masters Bow', 'Ranged', 1, NULL),
('Mechanical Shortbow', 'Ranged', 1, NULL),
('Power Bow', 'Ranged', 0, NULL),
('Purple Storm', 'Ranged', 1, NULL),
('Red Snake', 'Ranged', 1, NULL),
('Sabrewing', 'Ranged', 1, NULL),
('Shortbow', 'Ranged', 0, NULL),
('Snow Bow', 'Ranged', 0, 'Creeping Winter'),
('The Green Menace', 'Ranged', 1, NULL),
('The Pink Scoundrel', 'Ranged', 1, NULL),
('Trickbow', 'Ranged', 0, NULL),
('Twin Bow', 'Ranged', 1, NULL),
('Twisting Vine Bow', 'Ranged', 0, 'Flames of the Nether'),
('Void Bow', 'Ranged', 0, 'Echoing Void'),
('Weeping Vine Bow', 'Ranged', 1, 'Flames of the Nether'),
('Wind Bow', 'Ranged', 0, 'Howling Peaks'),
('Winters Touch', 'Ranged', 1, 'Creeping Winter'),
('Soul Bow', 'Ranged', 0, NULL),
('Bow of Lost Souls', 'Ranged', 1, NULL),
('Nocturnal Bow', 'Ranged', 1, NULL),
('Haunted Bow', 'Ranged', 1, NULL),
('Shivering Bow', 'Ranged', 1, NULL),
('Sugar Rush', 'Ranged', 1, NULL),
('Phantom Bow', 'Ranged', 1, NULL),
('Web Bow', 'Ranged', 1, NULL),
('Gloopy Bow', 'Ranged', 1, NULL),
('Cog Crossbow', 'Ranged', 0, 'Flames of the Nether'),
('Pride of the Piglins', 'Ranged', 1, 'Flames of the Nether'),
('Crossbow', 'Ranged', 0, NULL),
('Azure Seeker', 'Ranged', 1, NULL),
('The Slicer', 'Ranged', 1, NULL),
('Dual Crossbows', 'Ranged', 0, NULL),
('Baby Crossbows', 'Ranged', 1, NULL),
('Spellbound Crossbows', 'Ranged', 1, NULL),
('Exploding Crossbow', 'Ranged', 0, NULL),
('Firebolt Thrower', 'Ranged', 1, NULL),
('Imploding Crossbow', 'Ranged', 1, NULL),
('Harpoon Crossbow', 'Ranged', 0, 'Hidden Depths'),
('Nautical Crossbow', 'Ranged', 1, 'Hidden Depths'),
('Heavy Crossbow', 'Ranged', 0, NULL),
('Doom Crossbow', 'Ranged', 1, NULL),
('Slayer Crossbow', 'Ranged', 1, NULL),
('Rapid Crossbow', 'Ranged', 0, NULL),
('Auto Crossbow', 'Ranged', 1, NULL),
('Butterfly Crossbow', 'Ranged', 1, NULL),
('Scatter Crossbow', 'Ranged', 0, NULL),
('Harp Crossbow', 'Ranged', 1, NULL),
('Lightning Harp Crossbow', 'Ranged', 1, NULL),
('Shadow Crossbow', 'Ranged', 0, 'Echoing Void'),
('Veiled Crossbow', 'Ranged', 1, 'Echoing Void'),
('Soul Crossbow', 'Ranged', 0, NULL),
('Feral Soul Crossbow', 'Ranged', 1, NULL),
('Voidcaller', 'Ranged', 1, NULL),
('Burst Crossbow', 'Ranged', 0, NULL),
('Corrupted Crossbow', 'Ranged', 1, NULL),
('Soul Hunter Crossbow', 'Ranged', 1, NULL),
('Shrieking Crossbow', 'Ranged', 1, NULL),

-- Armor
('Archers Armor', 'Armor', 1, NULL),
('Black Spot Armor', 'Armor', 1, NULL),
('Black Wolf Armor', 'Armor', 1, NULL),
('Cave Crawler', 'Armor', 1, NULL),
('Climbing Gear', 'Armor', 0, 'Howling Peaks'),
('Ember Robe', 'Armor', 1, NULL),
('Emerald Gear', 'Armor', 0, 'Howling Peaks'),
('Entertainers Garb', 'Armor', 0, 'Echoing Void'),
('Evocation Robe', 'Armor', 0, NULL),
('Fox Armor', 'Armor', 1, NULL),
('Frost Armor', 'Armor', 1, 'Creeping Winter'),
('Gilded Glory', 'Armor', 1, 'Howling Peaks'),
('Goat Gear', 'Armor', 1, 'Howling Peaks'),
('Golden Piglin Armor', 'Armor', 1, 'Flames of the Nether'),
('Grim Armor', 'Armor', 0, NULL),
('Guards Armor', 'Armor', 0, NULL),
('Highland Armor', 'Armor', 1, NULL),
('Hunters Armor', 'Armor', 0, NULL),
('Living Vines Armor', 'Armor', 1, 'Flames of the Nether'),
('Mercenary Armor', 'Armor', 0, NULL),
('Mystery Armor', 'Armor', 0, NULL),
('Nimble Turtle Armor', 'Armor', 1, 'Hidden Depths'),
('Ocelot Armor', 'Armor', 0, 'Jungle Awakens'),
('Opulent Armor', 'Armor', 1, 'Howling Peaks'),
('Piglin Armor', 'Armor', 0, 'Flames of the Nether'),
('Reinforced Mail', 'Armor', 0, NULL),
('Renegade Armor', 'Armor', 1, NULL),
('Root Rot Armor', 'Armor', 0, NULL),
('Rugged Climbing Gear', 'Armor', 1, 'Howling Peaks'),
('Scale Mail', 'Armor', 0, NULL),
('Shadow Walker', 'Armor', 1, 'Jungle Awakens'),
('Shulker Armor', 'Armor', 0, 'Echoing Void'),
('Snow Armor', 'Armor', 0, 'Creeping Winter'),
('Soul Robe', 'Armor', 0, NULL),
('Souldancer Robe', 'Armor', 1, NULL),
('Spelunker Armor', 'Armor', 0, NULL),
('Spider Armor', 'Armor', 0, NULL),
('Sprout Armor', 'Armor', 0, 'Flames of the Nether'),
('Stalwart Armor', 'Armor', 1, NULL),
('Sturdy Shulker Armor', 'Armor', 1, 'Echoing Void'),
('Teleportation Robes', 'Armor', 0, 'Echoing Void'),
('The Troubadour', 'Armor', 1, 'Echoing Void'),
('Thief Armor', 'Armor', 0, NULL),
('Turtle Armor', 'Armor', 0, 'Hidden Depths'),
('Unstable Robes', 'Armor', 1, 'Echoing Void'),
('Verdant Robe', 'Armor', 1, NULL),
('Wither Armor', 'Armor', 1, NULL),
('Wolf Armor', 'Armor', 0, NULL),
('Phantom Armor', 'Armor', 0, NULL),
('Frost Bite', 'Armor', 1, NULL),
('Plate Armor', 'Armor', 0, NULL),
('Full Metal Armor', 'Armor', 1, NULL),
('Squid Armor', 'Armor', 0, 'Hidden Depths'),
('Glow Squid Armor', 'Armor', 1, 'Hidden Depths'),
('Battle Robe', 'Armor', 0, NULL),
('Splendid Robe', 'Armor', 1, NULL),
('Champions Armor', 'Armor', 0, NULL),
('Heros Armor', 'Armor', 1, NULL),
('Dark Armor', 'Armor', 0, NULL),
('Titans Shroud', 'Armor', 1, NULL),
('Ghostly Armor', 'Armor', 0, NULL),
('Ghost Kindler', 'Armor', 1, NULL),
('Beenest Armor', 'Armor', 0, NULL),
('Beehive Armor', 'Armor', 1, NULL),
('Hungry Horror', 'Armor', 1, NULL),
('Arctic Fox Armor', 'Armor', 1, NULL),
('Sweet Tooth', 'Armor', 1, NULL),
('Cauldron Armor', 'Armor', 1, NULL),
('The Spooky Gourdian', 'Armor', 1, NULL),
('Cloaked Skull', 'Armor', 1, NULL),
('Hungriest Horror', 'Armor', 1, NULL),

-- Artifacts
('Corrupted Beacon', 'Artifact', 0, NULL),
('Updraft Tome', 'Artifact', 0, NULL),
('Harvester', 'Artifact', 0, NULL),
('Lightning Rod', 'Artifact', 0, NULL),
('Scatter Mines', 'Artifact', 0, NULL),
('Blast Fungus', 'Artifact', 0, 'Flames of the Nether'),
('Spinblade', 'Artifact', 0, 'Flames of the Nether'),
('Eye of the Guardian', 'Artifact', 0, 'Hidden Depths'),
('Corrupted Pumpkin', 'Artifact', 0, NULL),
('Corrupted Seeds', 'Artifact', 0, NULL),
('Fishing Rod', 'Artifact', 0, NULL),
('Gong of Weakening', 'Artifact', 0, NULL),
('Ice Wand', 'Artifact', 0, 'Creeping Winter'),
('Love Medallion', 'Artifact', 0, NULL),
('Satchel of Elements', 'Artifact', 0, 'Howling Peaks'),
('Shock Powder', 'Artifact', 0, NULL),
('Fireworks Arrow', 'Artifact', 0, NULL),
('Flaming Quiver', 'Artifact', 0, NULL),
('Torment Quiver', 'Artifact', 0, NULL),
('Thundering Quiver', 'Artifact', 0, NULL),
('Harpoon Quiver', 'Artifact', 0, 'Hidden Depths'),
('Void Quiver', 'Artifact', 0, 'Echoing Void'),
('Buzzy Nest', 'Artifact', 0, NULL),
('Enchanted Grass', 'Artifact', 0, NULL),
('Golem Kit', 'Artifact', 0, NULL),
('Soul Lantern', 'Artifact', 0, NULL),
('Tasty Bone', 'Artifact', 0, NULL),
('Vexing Chant', 'Artifact', 0, 'Echoing Void'),
('Wonderful Wheat', 'Artifact', 0, NULL),
('Boots of Swiftness', 'Artifact', 0, NULL),
('Death Cap Mushroom', 'Artifact', 0, NULL),
('Ghost Cloak', 'Artifact', 0, NULL),
('Light Feather', 'Artifact', 0, NULL),
('Enchanters Tome', 'Artifact', 0, 'Howling Peaks'),
('Iron Hide Amulet', 'Artifact', 0, NULL),
('Shadow Shifter', 'Artifact', 0, 'Echoing Void'),
('Soul Healer', 'Artifact', 0, NULL),
('Tome of Duplication', 'Artifact', 0, 'Echoing Void'),
('Totem of Casting', 'Artifact', 0, NULL),
('Totem of Regeneration', 'Artifact', 0, NULL),
('Totem of Shielding', 'Artifact', 0, NULL),
('Satchel of Elixirs', 'Artifact', 0, 'Hidden Depths'),
('Satchel of Snacks', 'Artifact', 0, 'Hidden Depths'),
('Wind Horn', 'Artifact', 0, NULL),
('Powershaker', 'Artifact', 0, 'Flames of the Nether');

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
('Frosted Fjord', 'Scale Mail'),
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
('Crimson Forest', 'Sprout Armor'),
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
('Ancient Bow', 'L', 1),
('Ancient Bow', 'Totem', 1),

('Bonebow', 'Shield', 1),

('Bow', 'Shield', 1),

('Bubble Bow', 'Shield', 1),

('Bubble Burster', 'Shield', 1),
('Bubble Burster', 'Ring', 1),

('Burst Gale Bow', 'L', 1),
('Burst Gale Bow', 'T', 1),

('Call of the Void', 'Shield', 1),
('Call of the Void', 'Arch', 1),

('Echo of the Valley', 'Shield', 1),
('Echo of the Valley', 'T', 1),

('Elite Power Bow', 'Shield', 1),
('Elite Power Bow', 'T', 1),

('Guardian Bow', 'Shield', 1),
('Guardian Bow', 'Ring', 1),

('Hunters Promise', 'Shield', 1),
('Hunters Promise', 'Totem', 1),

('Hunting Bow', 'Totem', 1),

('Longbow', 'Shield', 1),

('Love Spell Bow', 'Shield', 1),
('Love Spell Bow', 'Ring', 1),

('Masters Bow', 'Shield', 1),
('Masters Bow', 'Totem', 1),

('Mechanical Shortbow', 'Shield', 1),
('Mechanical Shortbow', 'L', 1),

('Power Bow', 'Shield', 1),
('Power Bow', 'T', 1),

('Purple Storm', 'Shield', 1),
('Purple Storm', 'L', 1),

('Red Snake', 'Shield', 1),
('Red Snake', 'Arch', 1),

('Sabrewing', 'Shield', 1),
('Sabrewing', 'T', 1),
('Sabrewing', 'Ring', 1),

('Shortbow', 'Shield', 1),

('Snow Bow', 'Ring', 1),

('The Green Menace', 'Arch', 1),
('The Green Menace', 'Shield', 1),

('The Pink Scoundrel', 'Shield', 1),
('The Pink Scoundrel', 'T', 1),

('Trickbow', 'Shield', 1),

('Twin Bow', 'Shield', 1),
('Twin Bow', 'Ring', 1),

('Twisting Vine Bow', 'Shield', 1),

('Void Bow', 'Shield', 1),

('Weeping Vine Bow', 'Shield', 1),
('Weeping Vine Bow', 'L', 1),

('Wind Bow', 'T', 1),

('Winters Touch', 'Shield', 1),
('Winters Touch', 'Ring', 1),

('Soul Bow', 'A', 1),

('Bow of Lost Souls', 'Shield', 1),
('Bow of Lost Souls', 'A', 1),

('Nocturnal Bow', 'A', 1),
('Nocturnal Bow', 'L', 1),

('Haunted Bow', 'T', 1),

('Shivering Bow', 'A', 1),
('Shivering Bow', 'L', 1),

('Sugar Rush', 'Shield', 1),
('Sugar Rush', 'T', 1),

('Phantom Bow', 'T', 1),
('Phantom Bow', 'Shield', 1),
('Phantom Bow', 'Ring', 1),

('Web Bow', 'Shield', 1),
('Web Bow', 'Ring', 1),

('Gloopy Bow', 'Shield', 1),
('Gloopy Bow', 'Ring', 1),

('Cog Crossbow', 'Shield', 1),

('Pride of the Piglins', 'Shield', 1),
('Pride of the Piglins', 'T', 1),

('Crossbow', 'Shield', 1),

('Azure Seeker', 'Shield', 1),

('The Slicer', 'Shield', 1),

('Dual Crossbows', 'Shield', 1),

('Baby Crossbows', 'Shield', 1),

('Spellbound Crossbows', 'Shield', 1),
('Spellbound Crossbows', 'Arch', 1),

('Exploding Crossbow', 'T', 1),

('Firebolt Thrower', 'T', 1),

('Imploding Crossbow', 'T', 1),
('Imploding Crossbow', 'Arch', 1),

('Harpoon Crossbow', 'Shield', 1),

('Nautical Crossbow', 'Shield', 1),
('Nautical Crossbow', 'Ring', 1),

('Heavy Crossbow', 'T', 1),

('Doom Crossbow', 'T', 1),

('Slayer Crossbow', 'Shield', 1),
('Slayer Crossbow', 'T', 1),

('Rapid Crossbow', 'Shield', 1),

('Auto Crossbow', 'Shield', 1),
('Auto Crossbow', 'L', 1),

('Butterfly Crossbow', 'Shield', 1),
('Butterfly Crossbow', 'Ring', 1),

('Scatter Crossbow', 'Anchor', 1),

('Harp Crossbow', 'T', 1),
('Harp Crossbow', 'Anchor', 1),

('Lightning Harp Crossbow', 'T', 1),
('Lightning Harp Crossbow', 'Anchor', 1),

('Shadow Crossbow', 'Shield', 1),

('Veiled Crossbow', 'Shield', 1),
('Veiled Crossbow', 'L', 1),

('Soul Crossbow', 'A', 1),

('Feral Soul Crossbow', 'A', 1),

('Voidcaller', 'A', 1),
('Voidcaller', 'Arch', 1),

('Burst Crossbow', 'Shield', 1),
('Burst Crossbow', 'Branch', 1),

('Corrupted Crossbow', 'Shield', 1),
('Corrupted Crossbow', 'L', 1),
('Corrupted Crossbow', 'Branch', 1),

('Soul Hunter Crossbow', 'Shield', 1),
('Soul Hunter Crossbow', 'A', 1),
('Soul Hunter Crossbow', 'Branch', 1),

('Shrieking Crossbow', 'Shield', 1),
('Shrieking Crossbow', 'Ring', 1),

-- Armor
('Archers Armor', 'Shield', 1),
('Archers Armor', 'L', 1),

('Black Spot Armor', 'Ring', 1),

('Black Wolf Armor', 'L', 1),
('Black Wolf Armor', 'Ring', 1),
('Black Wolf Armor', 'Totem', 1),

('Cave Crawler', 'T', 1),
('Cave Crawler', 'Totem', 1),

('Climbing Gear', 'Anchor', 1),

('Ember Robe', 'Arch', 1),
('Ember Robe', 'T', 1),
('Ember Robe', 'Ring', 1),

('Emerald Gear', 'Arch', 1),

('Entertainers Garb', 'Ring', 1),

('Evocation Robe', 'Arch', 1),
('Evocation Robe', 'Ring', 1),

('Fox Armor', 'L', 1),
('Fox Armor', 'Ring', 1),
('Fox Armor', 'Totem', 1),

('Frost Armor', 'Ring', 1),
('Frost Armor', 'Anchor', 1),

('Gilded Glory', 'Arch', 1),
('Gilded Glory', 'T', 1),

('Goat Gear', 'L', 1),
('Goat Gear', 'Anchor', 1),

('Golden Piglin Armor', 'Arch', 1),
('Golden Piglin Armor', 'Ring', 1),

('Grim Armor', 'A', 1),
('Grim Armor', 'Ring', 1),

('Guards Armor', 'Shield', 1),

('Highland Armor', 'L', 1),
('Highland Armor', 'T', 1),
('Highland Armor', 'Anchor', 1),

('Hunters Armor', 'Shield', 1),

('Living Vines Armor', 'L', 1),

('Mercenary Armor', 'Ring', 1),
('Mercenary Armor', 'Anchor', 1),

('Mystery Armor', 'Arch', 1),
('Mystery Armor', 'Branch', 1),

('Nimble Turtle Armor', 'L', 1),
('Nimble Turtle Armor', 'Anchor', 1),

('Ocelot Armor', 'L', 1),

('Opulent Armor', 'Arch', 1),
('Opulent Armor', 'Anchor', 1),

('Piglin Armor', 'Arch', 1),

('Reinforced Mail', 'Anchor', 1),

('Renegade Armor', 'L', 1),
('Renegade Armor', 'Ring', 1),
('Renegade Armor', 'Anchor', 1),

('Root Rot Armor', 'Ring', 1),

('Rugged Climbing Gear', 'Anchor', 1),

('Scale Mail', 'T', 1),
('Scale Mail', 'Anchor', 1),

('Shadow Walker', 'L', 1),
('Shadow Walker', 'Anchor', 1),

('Shulker Armor', 'T', 1),
('Shulker Armor', 'Anchor', 1),

('Snow Armor', 'Anchor', 1),

('Soul Robe', 'A', 1),

('Souldancer Robe', 'A', 1),
('Souldancer Robe', 'Anchor', 1),

('Spelunker Armor', 'Totem', 1),

('Spider Armor', 'T', 1),
('Spider Armor', 'Anchor', 1),

('Sprout Armor', 'L', 1),

('Stalwart Armor', 'Arch', 1),
('Stalwart Armor', 'Anchor', 1),

('Sturdy Shulker Armor', 'T', 1),
('Sturdy Shulker Armor', 'Ring', 1),
('Sturdy Shulker Armor', 'Anchor', 1),

('Teleportation Robes', 'Arch', 1),
('Teleportation Robes', 'A', 1),

('The Troubadour', 'Ring', 1),
('The Troubadour', 'Anchor', 1),

('Thief Armor', 'T', 1),

('Turtle Armor', 'Anchor', 1),

('Unstable Robes', 'Arch', 1),
('Unstable Robes', 'A', 1),
('Unstable Robes', 'L', 1),

('Verdant Robe', 'Arch', 1),
('Verdant Robe', 'A', 1),
('Verdant Robe', 'Ring', 1),

('Wither Armor', 'A', 1),
('Wither Armor', 'Ring', 1),
('Wither Armor', 'Anchor', 1),

('Wolf Armor', 'Ring', 1),
('Wolf Armor', 'Totem', 1),

('Phantom Armor', 'A', 1),
('Phantom Armor', 'Shield', 1),

('Frost Bite', 'A', 1),
('Frost Bite', 'Shield', 1),
('Frost Bite', 'Ring', 1),

('Plate Armor', 'T', 1),
('Plate Armor', 'Anchor', 1),

('Full Metal Armor', 'T', 1),
('Full Metal Armor', 'Anchor', 1),

('Squid Armor', 'Anchor', 1),

('Glow Squid Armor', 'L', 1),
('Glow Squid Armor', 'Anchor', 1),

('Battle Robe', 'Arch', 1),
('Battle Robe', 'T', 1),

('Splendid Robe', 'Arch', 1),
('Splendid Robe', 'T', 1),
('Splendid Robe', 'Shield', 1),

('Champions Armor', 'Anchor', 1),

('Heros Armor', 'Ring', 1),
('Heros Armor', 'Anchor', 1),

('Dark Armor', 'A', 1),
('Dark Armor', 'Anchor', 1),

('Titans Shroud', 'A', 1),
('Titans Shroud', 'Ring', 1),
('Titans Shroud', 'Anchor', 1),

('Ghostly Armor', 'L', 1),
('Ghostly Armor', 'Branch', 1),

('Ghost Kindler', 'L', 1),
('Ghost Kindler', 'T', 1),
('Ghost Kindler', 'Branch', 1),

('Beenest Armor', 'Branch', 1),
('Beenest Armor', 'Totem', 1),

('Beehive Armor', 'T', 1),
('Beehive Armor', 'Branch', 1),
('Beehive Armor', 'Totem', 1),

('Hungry Horror', 'L', 1),
('Hungry Horror', 'Ring', 1),
('Hungry Horror', 'Anchor', 1),

('Arctic Fox Armor', 'Ring', 1),
('Arctic Fox Armor', 'Anchor', 1),
('Arctic Fox Armor', 'Totem', 1),

('Sweet Tooth', 'T', 1),
('Sweet Tooth', 'Totem', 1),

('Cauldron Armor', 'T', 1),
('Cauldron Armor', 'Anchor', 1),

('The Spooky Gourdian', 'A', 1),
('The Spooky Gourdian', 'Ring', 1),
('The Spooky Gourdian', 'Anchor', 1),

('Cloaked Skull', 'L', 1),
('Cloaked Skull', 'T', 1),
('Cloaked Skull', 'Branch', 1),

('Hungriest Horror', 'L', 1),
('Hungriest Horror', 'Ring', 1),
('Hungriest Horror', 'Anchor', 1),

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