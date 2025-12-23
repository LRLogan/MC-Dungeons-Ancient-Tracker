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
('Treetop Tangle', 'Jungle Awakens'),
('Frosted Fjord', 'Creeping Winter'),
('Lone Fortress', 'Creeping Winter'),
('Lost Settlement', 'Creeping Winter'),
('Windswept Peaks', 'Howling Peaks'),
('Gauntlet of Gales', 'Howling Peaks'),
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

INSERT INTO Items (itemName, itemType) VALUES
('Iron Sword', 'Weapon'),
('Mana Potion', 'Consumable'),
('Ancient Relic', 'Quest');

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
('Stone Guardian', 'Construct'),
('Frost Wyrm', 'Dragon');

INSERT INTO MapItems (mapName, itemName) VALUES
('Forest Ruins', 'Iron Sword'),
('Frozen Keep', 'Ancient Relic');

INSERT INTO ItemRune (itemName, runeName, runeQuantity) VALUES
('Iron Sword', 'Fire', 2),
('Ancient Relic', 'Ice', 5);

INSERT INTO AncientRune (ancientName, runeName, runeQuantity) VALUES
('Stone Guardian', 'Fire', 3),
('Frost Wyrm', 'Ice', 7);
