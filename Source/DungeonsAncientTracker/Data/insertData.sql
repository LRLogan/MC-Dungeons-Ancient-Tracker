-- Inserts initial data into the DB
-- Assumes schema already exists

INSERT INTO Maps (mapName, dlc) VALUES
('Forest Ruins', NULL),
('Desert Wastes', 'Expansion A'),
('Frozen Keep', 'Expansion B');

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
